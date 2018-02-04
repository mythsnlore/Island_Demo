using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Rigidbody))]
public class Shapeshift_Controller : MonoBehaviour 
{
    private Transform m_Cam;                  // A reference to the main camera in the scenes transform
    private Vector3 m_CamForward;             // The current forward direction of the camera
    private Vector3 m_Move;
    private bool m_Jump;
	private int bodyType = 0;				//0 is knight, 1 is rat, 2 is bat
	public GameObject knight;
	public GameObject rat;
	public GameObject bat;

	private float startGrav;
	private float startMoveMult;
	private float startSpeed;
	private float startJump;

    [SerializeField] float m_MovingTurnSpeed = 360;
    [SerializeField] float m_StationaryTurnSpeed = 180;
    [SerializeField] float m_JumpPower = 12f;
    [Range(1f, 4f)][SerializeField] float m_GravityMultiplier = 2f;
    [SerializeField] float m_MoveSpeedMultiplier = 1f;
    public float speedLimit = 10f;
    private float currentSpeedLimit;
    //[SerializeField] float m_AnimSpeedMultiplier = 1f;
    [SerializeField] float m_GroundCheckDistance = 1.5f;
    public LayerMask groundLayer;

    Rigidbody m_Rigidbody;
    Animator m_Animator;
    bool m_IsGrounded;
    float m_OrigGroundCheckDistance;
    const float k_Half = 0.5f;
    float m_TurnAmount;
    float m_ForwardAmount;
    Vector3 m_GroundNormal;
    //float m_CapsuleHeight;
    //Vector3 m_CapsuleCenter;
    //public Collider m_Capsule;
    //bool m_Crouching;
    private float headAngle = 0;

    private Vector3 spawnPoint;
    private Quaternion spawnRotation;

	void Start () 
    {
        spawnPoint = transform.position;
        spawnRotation = transform.rotation;

        m_Animator = GetComponentInChildren<Animator>();
        m_Rigidbody = GetComponent<Rigidbody>();
        //m_Capsule = GetComponent<CapsuleCollider>(); don't enable just do manually
        //m_CapsuleHeight = m_Capsule.height;
        //m_CapsuleCenter = m_Capsule.center;
        currentSpeedLimit = speedLimit;
		startGrav = m_GravityMultiplier;
		startMoveMult = m_MoveSpeedMultiplier;
		startSpeed = speedLimit;
		startJump = m_JumpPower;

        m_Rigidbody.constraints = RigidbodyConstraints.FreezeRotationX | RigidbodyConstraints.FreezeRotationY | RigidbodyConstraints.FreezeRotationZ;
        m_OrigGroundCheckDistance = m_GroundCheckDistance;

        // get the transform of the main camera
        if (Camera.main != null)
        {
            m_Cam = Camera.main.transform;
        }
        else
        {
            Debug.LogWarning(
                "Warning: no main camera found. Knight Controller needs a Camera tagged \"MainCamera\", for camera-relative controls.", gameObject);
            // we use self-relative controls in this case, which probably isn't what the user wants, but hey, we warned them!
        }
	}
	
	void Update () 
    {
        if (!m_Jump)
        {
            m_Jump = Input.GetButtonDown("Jump");
        }
	}

    private void FixedUpdate()
    {
        // read inputs
        float h = Input.GetAxis("Horizontal");
        float v = Input.GetAxis("Vertical");
        bool crouch = Input.GetKey(KeyCode.C);

        // calculate move direction to pass to character
        if (m_Cam != null)
        {
            // calculate camera relative direction to move:
            m_CamForward = Vector3.Scale(m_Cam.forward, new Vector3(1, 0, 1)).normalized;
            m_Move = v * m_CamForward + h * m_Cam.right;


        }
        else
        {
            // we use world-relative directions in the case of no main camera
            m_Move = v * Vector3.forward + h * Vector3.right;
        }
        //#if !MOBILE_INPUT
        // run speed multiplier
        if (Input.GetKey(KeyCode.LeftShift))
            currentSpeedLimit = speedLimit * 1.5f;
        else
            currentSpeedLimit = speedLimit;
        //#endif

        // pass all parameters to the character control script
        Move(m_Move, crouch, m_Jump);
        m_Jump = false;


        Vector3 angleDiff = transform.InverseTransformDirection(m_CamForward);
        headAngle = angleDiff.x;
		if (knight.activeSelf)
        	m_Animator.SetFloat("TurnHead", headAngle);
        //Debug.Log(m_CamForward.x);
    }

    public void Move(Vector3 move, bool crouch, bool jump)
    {
        // convert the world relative moveInput vector into a local-relative
        // turn amount and forward amount required to head in the desired
        // direction.
        if (move.magnitude > 1f) move.Normalize();
        move = transform.InverseTransformDirection(move * m_MoveSpeedMultiplier);
        CheckGroundStatus();
        move = Vector3.ProjectOnPlane(move, m_GroundNormal);
        m_TurnAmount = Mathf.Atan2(move.x, move.z);
        m_ForwardAmount = move.z;

        ApplyExtraTurnRotation();

        // control and velocity handling is different when grounded and airborne:
        if (m_IsGrounded)
        {
            HandleGroundedMovement(crouch, jump);
        }
        else
        {
            HandleAirborneMovement();
        }

        //ScaleCapsuleForCrouching(crouch);
        //PreventStandingInLowHeadroom();

        // send input and other state parameters to the animator
        //UpdateAnimator(move);
        float moveSpeed = (Mathf.Abs(m_Rigidbody.velocity.x) + Mathf.Abs(m_Rigidbody.velocity.z));
        float fallSpeed = m_Rigidbody.velocity.y;

        if (moveSpeed < currentSpeedLimit)
        {
            m_Rigidbody.AddRelativeForce(0, 0, m_ForwardAmount, ForceMode.Force);
        }

		if (knight.activeSelf) {
			m_Animator.SetBool ("Grounded", m_IsGrounded);
			m_Animator.SetFloat ("Speed", moveSpeed);
			m_Animator.SetFloat ("FallSpeed", fallSpeed);
		}
    }

    void HandleGroundedMovement(bool crouch, bool jump)
    {
        // check whether conditions are right to allow a jump:
        if (jump && !crouch)
        {
            // jump!
            m_Rigidbody.AddForce(0, m_JumpPower, 0, ForceMode.Impulse);
            m_IsGrounded = false;
            //m_Animator.applyRootMotion = false;
            m_GroundCheckDistance = m_OrigGroundCheckDistance;                                                                           //if you get stuck after 1 jump, change this distance
        }
    }

    void HandleAirborneMovement()
    {
        // apply extra gravity from multiplier:
        Vector3 extraGravityForce = (Physics.gravity * m_GravityMultiplier) - Physics.gravity;
        m_Rigidbody.AddForce(extraGravityForce);

        //m_GroundCheckDistance = m_Rigidbody.velocity.y < 0 ? m_OrigGroundCheckDistance : 0.01f;
    }

    void ApplyExtraTurnRotation()
    {
        // help the character turn faster (this is in addition to root rotation in the animation)
        float turnSpeed = Mathf.Lerp(m_StationaryTurnSpeed, m_MovingTurnSpeed, m_ForwardAmount);
        transform.Rotate(0, m_TurnAmount * turnSpeed * Time.deltaTime, 0);
    }

    void CheckGroundStatus() //fix this garbage
    {
		if (bodyType == 2) {
			m_IsGrounded = true;
		} else {
			RaycastHit hitInfo;
#if UNITY_EDITOR
			// helper to visualise the ground check ray in the scene view
			Debug.DrawLine (transform.position + (Vector3.up * 0.5f), transform.position + (Vector3.up * 0.5f) + (Vector3.down * m_GroundCheckDistance));
#endif
			// 0.1f is a small offset to start the ray from inside the character
			// it is also good to note that the transform position in the sample assets is at the base of the character
			if (Physics.Raycast (transform.position + (Vector3.up * 0.5f), Vector3.down, out hitInfo, m_GroundCheckDistance, groundLayer)) {
				m_GroundNormal = hitInfo.normal;
				m_IsGrounded = true;
				//m_Animator.applyRootMotion = true;
			} else {
				m_IsGrounded = false;
				m_GroundNormal = Vector3.up;
				//m_Animator.applyRootMotion = false;
			}
		}
    }

	public void ChangeShape(int type)
	{
		bodyType = type;
		if (bodyType > 0) {
			knight.SetActive (false);
            GetComponent<CapsuleCollider>().enabled = false;
			if (bodyType < 2) {
				rat.SetActive(true);
                bat.SetActive(false);

				m_GravityMultiplier = 3;
				m_MoveSpeedMultiplier = startMoveMult;
				speedLimit = startSpeed/2;
				m_JumpPower = startJump/2;
			} else {
				bat.SetActive(true);
                rat.SetActive(false);

				m_GravityMultiplier = 1;
				m_MoveSpeedMultiplier = startMoveMult/2;
				speedLimit = startSpeed;
				m_JumpPower = 100;
			}
		} 
		else 
		{
			m_GravityMultiplier = startGrav;
			m_MoveSpeedMultiplier = startMoveMult;
			speedLimit = startSpeed;
			m_JumpPower = startJump;

			knight.SetActive (true);
			rat.SetActive (false);
			bat.SetActive (false);
            GetComponent<CapsuleCollider>().enabled = true;
		}
	}

    public void Respawn(string message)
    {
        transform.SetPositionAndRotation(spawnPoint, spawnRotation);
        Debug.Log("You got " + message + " son!");
    }
}
