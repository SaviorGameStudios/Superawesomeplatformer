var target:GameObject;
private var targetY:float;
function Update () {
	transform.position.x=target.transform.position.x;
	
	if(PlatformWalker.grounded){
		targetY=target.transform.position.y+2;
	//transform.position.y=target.transform.position.y+2;
	}else{
			targetY=target.transform.position.y;
		//transform.position.y=target.transform.position.y;
	}
	transform.position.y-=(transform.position.y-targetY)/20;
}