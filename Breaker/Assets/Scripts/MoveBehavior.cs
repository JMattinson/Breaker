using UnityEngine;

public class MoveBehavior : MonoBehaviour
{
    [SerializeField] float MoveSpeed = -5f;
    
    Rigidbody rb;

    void Awake()
    {
        rb = GetComponent<Rigidbody>();
        rb.velocity = transform.up * MoveSpeed;
    }

    public void Stop()
    {
        rb.velocity = transform.up * 0.0f;
    }
}
