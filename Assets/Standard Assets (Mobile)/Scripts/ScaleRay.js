

function Update () {
	//Debug.Log(transform.localScale);
	if(transform.localScale.x<4){
		transform.localScale.x+=.05;
	}
}


function OnCollisionEnter(theObject:Collision){
	
	if(theObject.gameObject.transform.parent.name=="PlatformHolder"){
	//quite a nice effect - removes section of platform
	//Destroy(theObject.gameObject);
		Destroy(gameObject);
	}
}