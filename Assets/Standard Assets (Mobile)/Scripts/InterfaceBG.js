
function Update () {
}


function Start(){
	transform.position = Vector3.zero;
transform.localScale = Vector3.zero;
guiTexture.pixelInset = Rect (0, 0, Screen.width, 50);

guiTexture.color.a=0.3;
}