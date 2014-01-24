print (transform.eulerAngles.x);
// Print the rotation around the global Y Axis
print (transform.eulerAngles.y);
// Print the rotation around the global Z Axis
print (transform.eulerAngles.z);
// Assign an absolute rotation using eulerAngles
var yRotation = 5.0;
function Update () {
	yRotation = (Input.GetAxis("Horizontal")*-90)+180;
transform.eulerAngles = Vector3(0, yRotation, 0);
}