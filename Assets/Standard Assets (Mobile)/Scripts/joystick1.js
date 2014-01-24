    @script RequireComponent( CharacterController ) 
 
var moveJoystick : Joystick; 
var cameraTransform : Transform; 
var speed : float = 6;
private var thisTransform : Transform; 
private var character : CharacterController;
 
function Start(){ 
    thisTransform = GetComponent( Transform ); 
    character = GetComponent( CharacterController );
}
 
function FaceMovementDirection()
{
    var horizontalVelocity : Vector3 = character.velocity;
    horizontalVelocity.y = 0;
    if ( horizontalVelocity.magnitude > 0.1)
    thisTransform.forward = horizontalVelocity.normalized;
}
 
function Update(){ 
 
    var movement = cameraTransform.TransformDirection( Vector3(
                    moveJoystick.position.x, 0, moveJoystick.position.y ) );
    movement.y =0;
    movement.Normalize();
 
    var absJoyPos = Vector2( Mathf.Abs( moveJoystick.position.x ), 
                            Mathf.Abs( moveJoystick.position.y ) );
        movement *= speed * ( ( absJoyPos.x > absJoyPos.y ) ? absJoyPos.x : absJoyPos.y );
        movement *= Time.deltaTime;
 
        // Actually move the character
        movement += Physics.gravity;
    character.Move( movement );
 
 
    FaceMovementDirection();
}