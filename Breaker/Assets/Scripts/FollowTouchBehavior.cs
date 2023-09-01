using UnityEngine;
using UnityEngine.InputSystem;


public class FollowTouchBehavior : MonoBehaviour
{
   public GameObject followTarget;
   public PlayerInput playerInput;
   private InputAction touchPositionAction;
   private InputAction touchPressAction;

   private void Awake()
   {
      playerInput = GetComponent<PlayerInput>();
      print(playerInput);
      touchPressAction = playerInput.actions.FindAction("TouchPress");
      touchPositionAction = playerInput.actions.FindAction("TouchPosition");
       
   }

   private void OnEnable()
   {
      touchPressAction.performed += TouchPressed;
   }

   private void OnDisable()
   {
      touchPressAction.performed -= TouchPressed;
   }

   private void TouchPressed(InputAction.CallbackContext context)
   {
      Vector3 position = touchPositionAction.ReadValue<Vector2>();
      position.z = -30;
      position = Camera.main.ScreenToWorldPoint(position);
      position.y = followTarget.transform.position.y;
      position.x = position.x * -1;
      
      position.z = followTarget.transform.position.z;
      followTarget.transform.position = position;
   }
}