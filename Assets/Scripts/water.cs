using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class water : MonoBehaviour {

    public float bumpSpeed;
    public float tileSpeed;
    public float magnitude;

    public Material mat;
    private Vector2 TileStart = new Vector2(0,0);
    private Vector2 tileIt;
    private float timeOffset;

	// Use this for initialization
	void Start () {
        tileIt = TileStart;
	}
	
	// Update is called once per frame
	void Update () 
    {

        timeOffset = Time.time + 5;
        mat.SetFloat("_BumpScale", Mathf.PingPong(Time.time * bumpSpeed, magnitude/2));
        //Debug.Log(mat.GetFloat("_BumpScale"));
        mat.SetFloat("_DetailNormalMapScale", 0.1f + Mathf.PingPong(timeOffset * (bumpSpeed + 0.11f), magnitude));

        tileIt = new Vector2(tileIt.x + tileSpeed , 0);
        mat.SetTextureOffset("_MainTex", new Vector2(tileIt.x/2, 0.0001f));
        mat.SetTextureOffset("_DetailAlbedoMap", -tileIt);
        //Debug.Log(tileIt);

        gameObject.transform.Translate(new Vector3(0, Mathf.Sin(Time.time) / 10) * -0.02f, 0);

	}
}
