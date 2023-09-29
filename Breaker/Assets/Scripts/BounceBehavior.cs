using UnityEngine;

public class BounceBehavior : MonoBehaviour
{
    public FloatData DropSpeed;
    
    Rigidbody rb;
    Vector2 lastVelocity;
    

    void Start()
    {
        rb = GetComponent<Rigidbody>();

        // Apply your initial velocity on spawn.
        // Then you don't need to transform the object every update tick.
        rb.velocity = transform.up * -DropSpeed.value;
    }
    
    
    public void FixedUpdate()
    {
        lastVelocity = rb.velocity;
    }
   
    
    void OnCollisionEnter(Collision collision)
    {
        var speed = lastVelocity.magnitude;
        var direction = Vector2.Reflect(lastVelocity.normalized, 
            (collision.contacts[0].normal));
       
        rb.velocity = direction * Mathf.Max(speed, 2f);
    }
    
    
    
}
