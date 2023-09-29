using UnityEngine;
using UnityEngine.Events;
// works near identically to the collision logic gate, but uses triggers instead.

public class TriggerLogicGateBehavior : MonoBehaviour
{
    public GameObject rightObject;
    
    public UnityEvent rightEvent, wrongEvent;

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag(rightObject.tag))
        {
            rightEvent.Invoke();
            print(other.gameObject.tag);
        }
            
        else
        {
            wrongEvent.Invoke();
        }
    }
}