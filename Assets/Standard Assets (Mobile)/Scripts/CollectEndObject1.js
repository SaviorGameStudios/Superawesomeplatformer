

function OnTriggerEnter(theObject:Collider){
	if(renderer.enabled){
		if(theObject.gameObject.name=="chu_animated"){
				
		Application.LoadLevel("endLevelOne");

		}
	}
	
}
