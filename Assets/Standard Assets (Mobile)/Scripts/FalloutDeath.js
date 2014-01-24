
function OnTriggerEnter (other : Collider)
{
	// Player fall out!
	if (other.GetComponent (PlatformWalker))
	{
		GameController.die();
		
	}
	// Kill all rigidibodies flying through this area
	// (Props that fell off)
	else if (other.attachedRigidbody)
		Destroy(other.attachedRigidbody.gameObject);
	// Also kill all character controller passing through
	// (enemies)
	else if (other.GetType() == typeof(CharacterController))
		Destroy(other.gameObject);
}

// Auto setup the pickup
function Reset ()
{
	if (collider == null)
		gameObject.AddComponent(BoxCollider);
	collider.isTrigger = true;
}

