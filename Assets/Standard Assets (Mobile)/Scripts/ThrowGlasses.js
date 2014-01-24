
var throwSound:AudioClip;
var glassesObject :Rigidbody;
var throwForce:float;
var throwWait:float=1;
private var canThrow:boolean=true;
function Throw () {
	if(canThrow){
		canThrow=false;
		audio.PlayOneShot(throwSound);
		var newGlasses :Rigidbody=Instantiate(glassesObject,transform.position,transform.rotation);
		newGlasses.name="glasses";
		newGlasses.rigidbody.velocity=transform.TransformDirection(Vector3(throwForce,1,0));
		Physics.IgnoreCollision(transform.root.collider,newGlasses.collider,true);
		//Physics.IgnoreCollision(transform.root.collider,newGlasses.collider,true);
		Invoke("allowThrow",throwWait);
	}
}

function allowThrow(){
	
	canThrow=true;
	}


@script RequireComponent(AudioSource)