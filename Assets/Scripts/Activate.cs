using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Activate : MonoBehaviour 
{
    private Animator anim;
    private float timer;
    private int score;
    private GameControl gamCon;

    public int value;

    void Start()
    {
        anim = GetComponent<Animator>();
        gamCon = GameObject.FindGameObjectWithTag("GameController").GetComponent<GameControl>();;
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            anim.SetTrigger("Activate");
            GetComponent<Collider>().enabled = false;
            gamCon.SetScore(value);
        }
    }
}
