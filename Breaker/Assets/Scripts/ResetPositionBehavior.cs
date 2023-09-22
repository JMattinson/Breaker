
using UnityEngine;

public class ResetPositionBehavior : MonoBehaviour
{
    public Transform target;

    public Transform resetPos;
    public void ResetPosition()
    {
        target.position = resetPos.position;
    }
}
