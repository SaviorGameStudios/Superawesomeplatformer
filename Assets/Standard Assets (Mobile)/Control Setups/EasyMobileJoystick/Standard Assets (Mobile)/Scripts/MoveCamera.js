var lookSpeed = 15.0;
var moveSpeed = 15.0;

var rotationX = 0.0;
var rotationY = 0.0;
var leftTouchPad : EasyMobileJoystick;	
var rightTouchPad : EasyMobileJoystick;	

function Update () { 

	rotationX += rightTouchPad.position.x*lookSpeed;
	rotationY += rightTouchPad.position.y*lookSpeed;
	rotationY = Mathf.Clamp (rotationY, -90, 90);
	
	transform.localRotation = Quaternion.AngleAxis(rotationX, Vector3.up);
	transform.localRotation *= Quaternion.AngleAxis(rotationY, Vector3.left);
	
	transform.position += transform.forward*moveSpeed*leftTouchPad.position.y;
	transform.position += transform.right*moveSpeed*leftTouchPad.position.x*lookSpeed;

}