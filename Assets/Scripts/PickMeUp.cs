using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickMeUp : MonoBehaviour 
{
    private Light glow;
    private ParticleSystem sparkle;
    private Rigidbody rb;
    private Collider col;
    private Transform parent;
    private GameObject parentObj;

    public bool held = false;
    //public float throwPower = 10;

	void Start () 
    {
        glow = GetComponentInChildren<Light>();
        sparkle = GetComponentInChildren<ParticleSystem>();
        rb = GetComponent<Rigidbody>();
        col = GetComponent<Collider>();
	}
	
	void Update () 
    {
        if (held)
        {
            gameObject.transform.rotation.SetLookRotation(parentObj.transform.forward, Vector3.up);
            transform.position = parent.position;
        }
	}

    IEnumerator Toggle()
    {
        Debug.Log("Toggle triggered.");
        if (held)
        {
            glow.enabled = false;
            sparkle.Stop();
            rb.isKinematic = true;
            col.enabled = false;
        }
        else
        {
            glow.enabled = true;
            sparkle.Play();
            rb.isKinematic = false;
            yield return new WaitForSeconds(0.2f);
            col.enabled = true;
        }
    }

    public void GrabMe(GameObject targetNode, GameObject orientObj)
    {
        parent = targetNode.transform;
        parentObj = orientObj;
        held = true;
        StartCoroutine(Toggle());
    }

    public void ThrowMe(float power)
    { 
        held = false;
        StartCoroutine(Toggle());
        rb.AddForce((parentObj.transform.forward * power/5), ForceMode.Impulse);
        rb.AddForce((transform.up * power * 1), ForceMode.Impulse);
    }
}
