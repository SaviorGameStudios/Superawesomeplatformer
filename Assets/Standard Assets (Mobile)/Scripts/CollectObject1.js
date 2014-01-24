var sparkles:GameObject;
var collectSound:AudioClip;
/*
function OnControllerColliderHit(hit: ControllerColliderHit){
	
	if(hit.gameObject.tag=="Battery"){
		
		var newSparkles:GameObject=Instantiate(sparkles,hit.transform.position,hit.transform.rotation);
		Scoreboard.updateScore(10);
		
		Destroy(hit.gameObject);
		audio.PlayOneShot(collectSound);

	}	
}
*/


function OnTriggerEnter(theObject:Collider){

		if(theObject.gameObject.name=="chu_animated"){
		var newSparkles:GameObject=Instantiate(sparkles,transform.position,transform.rotation);
		Scoreboard.updateScore(10);
		
		Destroy(gameObject);
		audio.PlayOneShot(collectSound);

		}
	
}
