using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GameControl : MonoBehaviour 
{
    private int moneyAdd;
    private int mushCount = 0;
    private int mushValue = 0;

    //need refrences to effect functions

    public int money;
    public float timer;
    public Text scoreText;
    public Text announce;
	private GameObject player;

	void Start () 
    {
        timer = 0.5f;
        scoreText.text = "Money: 0";
        announce.text = "";
		player = GameObject.FindGameObjectWithTag("Player");
	}
	
	void Update () 
    {
        timer -= Time.deltaTime;
        while (moneyAdd > 0 && timer <= 0)
        {
            money += 1;
            moneyAdd -= 1;
            timer = 0.25f;
            scoreText.text = "Money: " + money.ToString();
        }
	}
        
    public void SetScore(int val)
    {
        moneyAdd += val;
    }

    public void CheckRecipie(string ingrediant)
    {
        mushCount++;

        if (ingrediant.StartsWith("Red_Shroom"))
        {
            mushValue += 1;
        }
        else if (ingrediant.StartsWith("Blue_Shroom"))
        {
            mushValue += 2;
        }
        else if (ingrediant.StartsWith("Yellow_Shroom"))
        {
            mushValue += 3;
        }
        else
        {
            Debug.Log("Something went wrong with CheckRecipie.");
        }

        if (mushCount == 3)
        {
            if (mushValue == 3 || mushValue == 9)
                Effect1();
            else if (mushValue == 4 || mushValue == 8)
                Effect2();
            else if (mushValue == 5 || mushValue == 7)
                Effect3();
            else if (mushValue == 6)
                Effect4();
            else
                Debug.Log("Error with mushValue.");

            mushCount = 0;
            mushValue = 0;
        }
    }

    public void Effect1()
    {
		player.transform.localScale = new Vector3 (1,1,1);
		player.GetComponent<Shapeshift_Controller> ().ChangeShape (0);
        string guy = "You turned back into a human.";
        MakeAnnouncement(3.0f, guy);
		Debug.Log("Mushroom recipie returned Effect1.");
    }

    public void Effect2()
    {
		player.transform.localScale = new Vector3 (0.2f,0.2f,0.2f);
        string tiny = "You shrank!";
        MakeAnnouncement(3.0f, tiny);
        Debug.Log("Mushroom recipie returned Effect2.");
    }

    public void Effect3()
    {
		player.transform.localScale = new Vector3 (1,1,1);
        string bat = "You became a bat!";
        MakeAnnouncement(3.0f, bat);
		player.GetComponent<Shapeshift_Controller> ().ChangeShape (2);
        Debug.Log("Mushroom recipie returned Effect3.");
    }

    public void Effect4()
    {
		player.transform.localScale = new Vector3 (1,1,1);
        string rat = "You became a rat!";
        MakeAnnouncement(3.0f, rat);
		player.GetComponent<Shapeshift_Controller> ().ChangeShape (1);
        Debug.Log("Mushroom recipie returned Effect4.");
    }

    public void MakeAnnouncement(float duration, string message)
    {
        announce.CrossFadeColor(new Color(255,255,255,255), 0, false, true);
        announce.text = message;
        announce.CrossFadeColor(new Color(255, 255, 255, 0), duration, false, true);
    }
}
