using UnityEngine;

public class BilboardBehavior : MonoBehaviour
{
    //this script helps a sprite properly rotate to face a targeted camera, or "Billboard".
    public Camera focusCam;

    private void Start()
    {
        focusCam = GameObject.Find("MainCamera").GetComponent<Camera>();

    }

    public void Billboard()
    {
        transform.LookAt(focusCam.transform.position, -Vector3.up);
        
    }

    
}
