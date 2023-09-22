

using UnityEngine;
using UnityEngine.Events;
using UnityEngine.Serialization;

public class CollisionLogicGateBehavior : MonoBehaviour
{
     public GameObject rightObject;
    
    public UnityEvent rightEvent, wrongEvent;

    private void OnCollisionEnter(Collision other)
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
