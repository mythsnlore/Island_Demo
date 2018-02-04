using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickItUp : MonoBehaviour 
{
    private Animator anim;
    private GameObject heldObj;

    public GameObject node;
    public bool Holding = false;
    //public float animSpeed = 1f;

	void Start () 
    {
        anim = GetComponentInChildren<Animator>();
        //node = GameObject.FindWithTag("Node").transform;
	}
	
	void Update () 
    {
        /*
        if (Holding && Vector3.Distance(target.position, node.position) > 0.01f)
            target.transform.SetPositionAndRotation(Vector3.Lerp(target.position, node.position, animSpeed), Quaternion.identity);
        */

        if (Input.GetButtonDown("Fire1") && Holding)
        {
            heldObj.GetComponent<PickMeUp>().ThrowMe(10.0f);
            anim.SetTrigger("TossIt");
            Holding = false;
        }
        
	}

    void OnTriggerEnter(Collider col)
    {
        if (col.gameObject.CompareTag("Pickup") && !Holding)
        {
            anim.SetTrigger("GrabIt");
            heldObj = col.gameObject;
            heldObj.GetComponent<PickMeUp>().GrabMe(node, this.gameObject);
            Holding = true;
        }
        else if (col.gameObject.CompareTag("Cauldron") && Holding)
        {
            heldObj.GetComponent<PickMeUp>().ThrowMe(10.0f);
            anim.SetTrigger("TossIt");
            Holding = false;
        }
    }
        
}
