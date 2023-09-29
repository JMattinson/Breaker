using UnityEngine;

public class ResetPositionBehavior : MonoBehaviour
{
    //sends a target object to a given position
    public Transform target;

    public Transform resetPos;
    public void ResetPosition()
    {
        target.position = resetPos.position;
    }
}
