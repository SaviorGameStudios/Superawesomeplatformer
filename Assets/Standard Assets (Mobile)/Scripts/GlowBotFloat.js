private var upY: Vector3;
private var downY: Vector3;
private var targY: Vector3;
private var isDead:boolean=false;






function Start(){
	//animations
		// By default loop all animations
	animation.wrapMode = WrapMode.Loop;

	
	animation["idle"].layer = -1;
	
	animation.SyncLayer(-1);




	animation["dead"].layer = 10;
	animation["dead"].wrapMode = WrapMode.ClampForever;
	animation.SyncLayer(10);


	// We are in full control here - don't let any other animations play when we start
	animation.Stop();
	animation.Play("idle");
	
	
	
	
	
	
	
	//floating
	transform.position.y=1;
	upY=Vector3(transform.position.x,3,transform.position.z);
	downY=Vector3(transform.position.x,1,transform.position.z);
	targY=upY;
	InvokeRepeating("goUp", 2, 2);
	
	InvokeRepeating("goDown", 1, 2);
}

function Update () {
	if(!isDead){
	transform.position=Vector3.Lerp(transform.position,targY,Time.deltaTime*2);
	
	//Debug.DrawRay (transform.position, Vector3.up * 2, Color.green);
	/*
	if(Physics.Raycast(transform.position, Vector3.up,hit,2)){
				if(hit.collider.gameObject.name=="chu_animated"){
					isDead=true;
					animation.CrossFade("dead");
					theObject.gameObject.GetComponent(PlatformWalker).bounceOffEnemyHead=true;							Destroy(GetComponent(BoxCollider));
					
				}else{
					theObject.gameObject.GetComponent(PlatformWalker).animation.CrossFade("dead");
					theObject.gameObject.GetComponent(PlatformWalker).isDead=true;
				}
	}

	*/
	
		}
}

function goUp(){
	targY=upY;
	
}

function goDown(){
	targY=downY;
	
}


function OnTriggerEnter(theObject:Collider){

	if(!isDead){
		if(theObject.gameObject.name=="chu_animated"){
			if(theObject.gameObject.transform.position.y>transform.position.y){
			isDead=true;
					animation.CrossFade("dead");
					theObject.gameObject.GetComponent(PlatformWalker).bounceOffEnemyHead=true;	
					GetComponent(BoxCollider).size.y=50;
					GetComponent(BoxCollider).center.y=25;
					GetComponent(BoxCollider).isTrigger=false;
					GetComponent(Rigidbody).useGravity = true;
			}else{
				theObject.gameObject.GetComponent(PlatformWalker).animation.CrossFade("dead");
				//theObject.gameObject.GetComponent(PlatformWalker).isDead=true;
			}
		}
	}
}



