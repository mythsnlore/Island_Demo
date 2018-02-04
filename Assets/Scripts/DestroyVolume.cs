using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DestroyVolume : MonoBehaviour 
{
    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
		if(other.GetComponent<Knight_Controller>().enabled)
			other.GetComponent<Knight_Controller>().Respawn("drowned");
		else if(other.GetComponent<Shapeshift_Controller>().enabled)
			other.GetComponent<Shapeshift_Controller>().Respawn("drowned");
        else if (other.CompareTag("Land"))
        {
            //no don't do it
        }
        else if (other.CompareTag("GameController"))
        {
                // also no
        }
        else
            other.gameObject.SetActive(false);
    }
}
