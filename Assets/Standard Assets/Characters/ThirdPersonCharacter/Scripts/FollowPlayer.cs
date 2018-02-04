using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FollowPlayer : MonoBehaviour 
{
    public Transform playerPos;
    //private Vector3 camPosOffset;
    private float turnAngle;

	// Use this for initialization
	void Start () 
    {
        //camPosOffset = transform.position - playerPos.position;
        transform.position = playerPos.position;
	}
	
	// Update is called once per frame
	void Update () 
    {
        transform.position = playerPos.position; //+ camPosOffset;
        transform.Rotate(new Vector3(0,1,0), Input.GetAxis("Mouse X"), Space.Self);
	}
}
