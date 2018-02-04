using System;
using UnityEngine;

namespace UnityStandardAssets.Vehicles.Ball
{
    public class Ball : MonoBehaviour
    {
        [SerializeField] private float m_MovePower = 5; // The force added to the ball to move it.
        [SerializeField] private float m_JumpPower = 2; // The force added to the ball when it jumps.

        private const float k_GroundRayLength = 1.5f; // The length of the ray to check if the ball is grounded.
        private Rigidbody m_Rigidbody;
        public Vector3 speed;
        public float speedLimit = 10;


        private void Start()
        {
            m_Rigidbody = GetComponent<Rigidbody>();
            // Set the maximum angular velocity.
            speed = GetComponent<Rigidbody>().velocity;
        }

        private void Update()
        {
            speed = GetComponent<Rigidbody>().velocity;
        }

        public void Move(Vector3 moveDirection, bool jump)
        {
            if((Mathf.Abs(speed.x) + Mathf.Abs(speed.z)) < speedLimit)
                m_Rigidbody.AddForce(moveDirection*m_MovePower, ForceMode.Force);


            // If on the ground and jump is pressed...
            if (Physics.Raycast(transform.position, -Vector3.up, k_GroundRayLength) && jump)
            {
                // ... add force in upwards.
                m_Rigidbody.AddForce(Vector3.up*m_JumpPower, ForceMode.Impulse);
            }
        }
    }
}
