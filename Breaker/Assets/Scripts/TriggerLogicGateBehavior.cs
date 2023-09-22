using UnityEngine;
using UnityEngine.Events;


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