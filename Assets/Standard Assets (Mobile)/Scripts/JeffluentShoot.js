
var throwSound:AudioClip;
var shootObject :Rigidbody;
var throwForce:float;

function Shoot () 
{
	
	    //canThrow=false;
		audio.PlayOneShot(throwSound);
		var throwerRot: Quaternion=Quaternion.AngleAxis(Random.Range(-5,5), Vector3.forward);
		
		var newRay :Rigidbody=Instantiate(shootObject,transform.position,throwerRot);
		newRay.name="ray";
		newRay.rigidbody.velocity=transform.TransformDirection(Vector3(throwForce,throwerRot.z*-100,0));
		Physics.IgnoreCollision(transform.root.collider,newRay.collider,true);
		
	
	
}




@script RequireComponent(AudioSource)