

using UnityEngine;
using UnityEngine.Events;

public class CollisionLogicGateBehavior : MonoBehaviour
{
    //This script's a pretty simple collision based logic gate. checks the colliding object's tag to the "right" object, and calls events based on wether the colliding object has the right tag.
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
