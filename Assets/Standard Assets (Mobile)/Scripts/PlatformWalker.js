
var normalSpeed=6;
private var speed = normalSpeed;
var runSpeed = 12.0;
private var jumpSpeed = speed*1.4;
private var walkTime:int=0;
var gravity = 20.0;
private var tr:int=90;
private var moveDirection = Vector3.zero;

static var bounceOffEnemyHead : boolean = false;
static var grounded : boolean = false;
private var canThrow:boolean=true;
var yRotation:float;
var jumpSound:AudioClip;
private var lookCounter:int=0;

private var health:int=5;
private var isDead:boolean=false;

private var controller : CharacterController;
private var flags: CollisionFlags;
function Start ()
{
	
	
		// Add a duplicate shoot animation which we set up to only animate the upper body
	// We use this animation when the character is running.
	// By using mixing for this we dont need to make a seperate running-shoot animation
	animation.AddClip(animation["attack_01"].clip, "shootUpperBody");
	animation["shootUpperBody"].AddMixingTransform(transform.Find("_Chu_Final:Chu_Master_CTRL/_Chu_Final:Root_JNT/_Chu_Final:Spine_01_JNT/_Chu_Final:Spine_02_JNT/_Chu_Final:Spine_03_JNT/_Chu_Final:Spine_04_JNT/_Chu_Final:R_Shoulder_JNT"),false);
	
	animation["shootUpperBody"].AddMixingTransform(transform.Find("_Chu_Final:Chu_Master_CTRL/_Chu_Final:Root_JNT/_Chu_Final:Spine_01_JNT/_Chu_Final:Spine_02_JNT/_Chu_Final:Spine_03_JNT/_Chu_Final:Spine_04_JNT/_Chu_Final:Neck_JNT/_Chu_Final:Head_JNT"),false);
	

	
	
	
	// By default loop all animations
	animation.wrapMode = WrapMode.Loop;

	animation["run"].layer = -1;
	animation["walk"].layer = -1;
	
	animation["idle"].layer = -1;
	
	animation["look_left"].wrapMode = WrapMode.Once;
	animation["look_right"].wrapMode = WrapMode.Once;
	
	animation["look_left"].layer = -1;
	animation["look_right"].layer = -1;
	animation.SyncLayer(-1);




	// The jump animation is clamped and overrides all others
	animation["jump"].layer = 10;
	animation["jump"].wrapMode = WrapMode.Once;
	animation["attack_01"].layer = 10;
	animation["attack_01"].wrapMode = WrapMode.Once;
	animation["shootUpperBody"].layer = 11;
	animation["shootUpperBody"].wrapMode = WrapMode.Once;
	animation["hurt"].layer = 10;
	animation["hurt"].wrapMode = WrapMode.Once;
	animation["dead"].layer = 10;
	animation["dead"].wrapMode = WrapMode.ClampForever;
	animation.SyncLayer(10);


	// We are in full control here - don't let any other animations play when we start
	animation.Stop();
	animation.Play("idle");
	
	GameObject.Find("glasses:chuMk3_iglassesMesh").renderer.enabled = false;
}



function FixedUpdate() {
	if(!isDead){
	if (grounded) {
		// We are grounded, so recalculate movedirection directly from axes
		moveDirection = new Vector3(Input.GetAxis("Horizontal"), 0,0);
		//moveDirection = transform.TransformDirection(moveDirection);
		moveDirection *= speed;
		//Debug.Log(moveDirection);
		
		if (Input.GetButton ("Jump")) {
			moveDirection.y = jumpSpeed;
	
			animation.CrossFade ("jump");
			audio.PlayOneShot(jumpSound);
		}
	}else{
		
			moveDirection = new Vector3(Input.GetAxis("Horizontal"), moveDirection.y/speed,0);
			
			if (bounceOffEnemyHead) {
			moveDirection.y = jumpSpeed/speed;
			bounceOffEnemyHead=false;
			animation.CrossFade ("jump");
			audio.PlayOneShot(jumpSound);
			}
		//moveDirection = transform.TransformDirection(moveDirection);
		moveDirection *= speed;
	}

	// Apply gravity
	moveDirection.y -= gravity * Time.deltaTime;
	
	// Move the controller
	controller = GetComponent(CharacterController);
	flags = controller.Move(moveDirection * Time.deltaTime);
	grounded = (flags & CollisionFlags.CollidedBelow) != 0;
		
	
	//yRotation = (Input.GetAxis("Horizontal")*-90)+180;
	
	
	//yRotation = (Input.GetAxis("Horizontal")*-90)+180;
	
	if(moveDirection.x>0){
		tr=90;
	
	}else if(moveDirection.x<0){
		tr=270;
	}
	
	
	transform.eulerAngles.y-=(transform.eulerAngles.y-tr)/5;
	
	yRotation = ((moveDirection.x/speed)*-90)+180;
	transform.eulerAngles = Vector3(0, tr, 0);
	  if (Input.GetAxis("Horizontal") > 0.2 || Input.GetAxis("Horizontal") < -0.2){
	  	 if (walkTime>40){
	  	 	animation.CrossFade("run");
	  	 	speed=runSpeed;
	  	 }else{
	  		animation.CrossFade ("walk");
	  		walkTime++;
	  		speed=normalSpeed;
	  	 }
	  	 jumpSpeed = speed*1.4;
       	lookCounter=0;
	  }else{
	  	if(canThrow){
	  		
      		walkTime=0;
	  		if(lookCounter>100){
	  			if(tr>90){
      				animation.CrossFade ("look_left");
	  			}else{
	  		 		animation.CrossFade ("look_right");
	  			}
	  			
	  		}else{
	  			animation.CrossFade ("idle");
	  		}
	  		lookCounter++;
	  	}
	  	
      	
	  }
		if (Input.GetButton ("Fire2") && canThrow) {
			
			canThrow=false;
			// We are running so play it only on the upper body
			
			
		if (animation["walk"].weight > 0.5 || animation["run"].weight > 0.5 || animation["jump"].weight > 0.5){
			animation.CrossFadeQueued("shootUpperBody", 0.1, QueueMode.PlayNow);
		// We are in idle so play it on the fully body
		}else{
			animation.CrossFadeQueued("attack_01", 0.1, QueueMode.PlayNow);
			
		}	
			/*
			animation.CrossFade ("attack_01",.3);
			
			*/
			
			Invoke("delayGlassesSwitch",.2);
			Invoke("throwGlasses",.6);
			Invoke("putGlassesBackOn",1.5);
			Invoke("showFaceGlasses",1.9);
		}

	}else{
		//dead
		moveDirection = new Vector3(0, moveDirection.y,0);

		moveDirection.y -= gravity * Time.deltaTime;
	
	// Move the controller
	controller = GetComponent(CharacterController);
	flags = controller.Move(moveDirection * Time.deltaTime);
	}
}




function delayGlassesSwitch(){
	GameObject.Find("glasses:chuMk3_iglassesMesh").renderer.enabled = true;
	GameObject.Find("_Chu_Final:chuMk3_iglassesMesh").renderer.enabled = false;
	
	
			
	
}

function throwGlasses(){
	GameObject.Find("glasses:chuMk3_iglassesMesh").renderer.enabled = false;
	GameObject.Find("GlassesThrower").GetComponent(ThrowGlasses).Throw();
	
	
}

function putGlassesBackOn(){
//animation.CrossFade ("attack_01",.5);

}
function showFaceGlasses(){
	GameObject.Find("_Chu_Final:chuMk3_iglassesMesh").renderer.enabled = true;
	canThrow=true;
	lookCounter=0;
	walkTime=0;
}


function hit(){
	health--;

	if(health==0){
		animation.CrossFade("dead");
		isDead=true;
	}else{
		animation.CrossFade("hurt");
		
	
	}
	
}


function OnCollisionEnter(theObject:Collision){
	
	if(theObject.gameObject.name=="ray"){
	hit();
	Destroy(theObject.gameObject);
		
	}
	
	

}





@script RequireComponent(CharacterController)