using System;
using UnityEngine;

public class MoveBehavior : MonoBehaviour
{
    [SerializeField] float MoveSpeed = -5f;
    
    Rigidbody rb;
    

    private void OnEnable()
    {
        rb = GetComponent<Rigidbody>();
        rb.velocity = transform.up * MoveSpeed;
    }

    private void OnDisable()
    {
        rb.velocity = Vector3.zero;
    }

    public void Stop()
    {
        rb.velocity = transform.up * 0.0f;
    }
}
