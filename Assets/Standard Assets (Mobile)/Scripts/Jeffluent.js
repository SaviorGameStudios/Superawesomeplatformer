
var normalSpeed=6;
private var speed = normalSpeed;
var runSpeed = 12.0;
private var jumpSpeed = speed*1.7;
private var walkTime:int=0;
var gravity = 20.0;
private var tr:int=90;
private var moveDirection = Vector3.zero;
private var grounded : boolean = false;
private var canThrow:boolean=true;
private var attackWait:int=0;
private var attackReady:int=Random.Range(100,400);
private var startPos;

private var newX:Vector3;
private var walkWait:int=0;
private var walkReady:int=Random.Range(50,200);

private var health:int=5;
private var isDead:boolean=false;
private var inView:boolean=false;



var jumpSound:AudioClip;
function Start ()
{
	
	
	startPos=transform.position;
//	newX=Vector3(startPos.x,0,startPos.z);
	// By default loop all animations
	animation.wrapMode = WrapMode.Loop;

	
	animation["walk"].layer = -1;
	animation["idle"].layer = -1;
	animation.SyncLayer(-1);




	// The jump animation is clamped and overrides all others
	animation["jump"].layer = 10;
	animation["jump"].wrapMode = WrapMode.Once;
	animation["attack_01"].layer = 10;
	animation["attack_01"].wrapMode = WrapMode.Once;
	animation["hurt"].layer = 10;
	animation["hurt"].wrapMode = WrapMode.Once;
	animation["dead"].layer = 10;
	animation["dead"].wrapMode = WrapMode.ClampForever;
	animation.SyncLayer(10);


	// We are in full control here - don't let any other animations play when we start
	animation.Stop();
	animation.Play("idle");
	

}


function Update(){
	
	
}


function FixedUpdate() {
	if(!isDead && GameObject.Find("_Jeffluent_Final:brain_GEO").renderer.isVisible){
	attackWait++;
	if(attackWait>attackReady){
		attackWait=0;
		attackReady=Random.Range(50,300);
		
		animation.CrossFade("attack_01");
		GameObject.Find("Thrower").GetComponent(JeffluentShoot).Shoot();
	}
	
	
	walkWait++;
	if(walkWait>walkReady){
		walkWait=0;
		walkReady=Random.Range(100,500);
		//newX=Vector3(startPos.x+Random.Range(-3,3),0,startPos.z);
		
		
		
		
		if(Vector3.Distance(newX,transform.position)>2){
		animation.CrossFade("walk");
		}else{
			animation.CrossFade("walk");
		}
	}
	
	transform.position=Vector3.Lerp(transform.position, newX,Time.deltaTime*3);
	if(Vector3.Distance(newX,transform.position)<.1){
		animation.CrossFade("idle");
		
	}
	}
}

function hit(){
	health--;
Scoreboard.updateScore(20);
	if(health==0){
		animation.CrossFade("dead");
		isDead=true;
		GetComponent(BoxCollider).size.y=50;
		GetComponent(BoxCollider).size.z=200;
		GetComponent(BoxCollider).center.y=25;
		GetComponent(BoxCollider).center.z=-100;
		GameObject.Find("EndCollect").renderer.enabled=true;
		
				
	}else{
			animation.CrossFade("hurt");
			
	}
	
}


/*
function OnBecameVisible(){
	
	inView=true;
	
}

function OnBecameInvisible(){
	
	inView=false;
	
}


*/

function OnCollisionEnter(theObject:Collision){
	
	if(theObject.gameObject.name=="glasses"){
	hit();
	Destroy(theObject.gameObject);
		
	}
}
