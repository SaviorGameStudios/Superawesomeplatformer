#pragma strict

	// amount of time the user has to place finger on screen before joystick appears
	var fingerTimeBeforeJoystickAppears : float = 0.1f;
	
	// If after scaling the image you want to ensure the thumbstick
	// rotates in a tight circle you can click this option
	var forceCircleConstraint : boolean;
	
	// joystick image must contain GUITexture
	var imageJoystick : GameObject;
	
	// bg for joystick must contain GUITexture
	var imageBG : GameObject;	
	
	// public property that any script can get the position of the joystick and use it to move an object
	var  position : Vector2;
	
	// which side of screen you want the stick to appear
	// left stick uses left hand side only
	// for right stick mark as false and it uses the right hand side of screen
	var  isLeftStick : boolean;
	
	// How much the position is multiplied by
	// If using Unity Controller scripts it can be
	// used to change the speed of the player
	var positionMultiplier : float = 5;
	
	// makes the joystick act as a button
	var  isButton : boolean = false;
	
	var  tapCount : int;
	
	// private vars no need to worry
	private var  isInMotionStartingArea : Rect;
	private var  rotFTime : float;
	private var  motionFTime : float;	
	private var  isMotionPress : boolean = false;
	private var  movementStickShowing : boolean = false;
	private var  maxAmount : float  = 0.1f;
	private var motionFingerNum : int = -1;
	private var lastFingerId = -1;	
	
	
	private var imageJoystickScale : float;
	
	
	
	
	function Awake()
	{
			SetUpImagesIfMissing();
	
	}
	
	function Start ()
	{
	
		imageJoystickScale =  imageJoystick.transform.localScale.x /  imageJoystick.transform.localScale.y;
		// hide sticks intially
		ShowHideMotion(false);
		
		
			
			
	
	}
	function Update ()
	{
		//// create bounds
		if(isLeftStick)
			isInMotionStartingArea = new Rect (50, 50, Screen.width/2 - 100, Screen.height - 100);
		else
			isInMotionStartingArea	= new Rect (Screen.width / 2 + 50, 50, Screen.width / 2 - 100, Screen.height - 100);
		// Touches 
		if (Application.platform == RuntimePlatform.Android || Application.platform == RuntimePlatform.IPhonePlayer) 
		{  	
			if (Input.touchCount == 0) {
				ShowHideMotion(false);
			}
					
			for(var touch : Touch in Input.touches)
			{
				if (touch.phase == TouchPhase.Canceled || touch.phase == TouchPhase.Ended) 
				{
					
					if (motionFingerNum == touch.fingerId) {
						motionFingerNum = -1;
						lastFingerId = -1;
						position = Vector2.zero;
						ShowHideMotion(false);
				
					}
					
				}
				if (Time.time > motionFTime + fingerTimeBeforeJoystickAppears && motionFingerNum == touch.fingerId ) 
				{
					
					if (movementStickShowing)
						UpdateMotion(touch.position); 
					else
						ShowHideMotion(true);
					
				
				}
				
				if (touch.phase == TouchPhase.Began) {
				
					if ( motionFingerNum == -1 && isInMotionStartingArea.Contains (touch.position)) {
						SetMotionPoint (touch.position);
						motionFTime = Time.time;
						motionFingerNum = touch.fingerId;
						lastFingerId = 1;
					}
					
				}
			}
		}
		
		// if using editor then allow the mouse button to be the "touches"
		else {
			if (Input.GetMouseButtonDown(0)) {
				if (isInMotionStartingArea.Contains (Input.mousePosition)) {
					lastFingerId = 1;

					isMotionPress = true;
					SetMotionPoint(Input.mousePosition);
					motionFTime = Time.time;
				} else { isMotionPress = false; }
				
			}
			if (Input.GetMouseButton(0) ) {
				if (isMotionPress && Time.time > motionFTime + fingerTimeBeforeJoystickAppears) {
					if (movementStickShowing)
						UpdateMotion (Input.mousePosition);
					else
						ShowHideMotion(true);
				}
				
			}
			if (Input.GetMouseButtonUp(0)) {
				lastFingerId = -1;
				position = Vector2.zero;				
				ShowHideMotion(false);
			}
		}
	}
	
	
	// you can omit images if you want to have an invisible controller
	function SetUpImagesIfMissing(){
		if(imageJoystick == null)
			{
				imageJoystick = new GameObject("Joy");
				imageJoystick.AddComponent ("GUITexture");
			}
			if(imageBG == null)
			{
				imageBG = new GameObject("BG");
				imageBG.AddComponent ("GUITexture");
			}
	
	}
	
	function ClampStick (p : Vector3, downPosition :Vector3 )
	{
		
		if (Vector3.Distance (p, downPosition) > maxAmount) {
			var dir : Vector3;
			dir = downPosition - p ;
			
			dir.Normalize ();
			return (dir * maxAmount) + p;    
		}
		return downPosition;
	}
	
	function ClampStickScaleJoyStick (p : Vector3, downPosition :Vector3 )
	{
		
		if (Vector3.Distance (p, downPosition) > maxAmount) {
			var dir : Vector3;
			dir = downPosition - p ;
			
			dir.Normalize ();
			dir.x = dir.x * imageJoystickScale;
			return (dir * maxAmount) + p;    
		}
		return downPosition;
	}	
	
	
	
	
	
	function UpdateMotion( newPos : Vector3) {
		if(!isButton)
		{
			imageJoystick.transform.position = new Vector3 (newPos.x / Screen.width , newPos.y / Screen.height, 0);
			if(!forceCircleConstraint)
				imageJoystick.transform.position = ClampStick(imageBG.transform.position, imageJoystick.transform.position);
			else
			{
				imageJoystick.transform.position = ClampStickScaleJoyStick(imageBG.transform.position, imageJoystick.transform.position);
				position.x = position.x /imageJoystickScale;
			}

			position = (imageJoystick.transform.position - imageBG.transform.position) * positionMultiplier;
			
		}
	}
	
	
	
	 
	
	function SetMotionPoint( newPos :Vector3) {
		imageBG.transform.position = imageJoystick.transform.position = new Vector3 (newPos.x / Screen.width, newPos.y / Screen.height, 0);
		position = Vector2.zero;
	}
	
	function ShowHideMotion(show : boolean) {
		if(show)
		{
			imageJoystick.guiTexture.active = true;
			imageBG.guiTexture.active = true;
			movementStickShowing = true;
		}
		else
		{
			imageJoystick.guiTexture.active = false;
			imageBG.guiTexture.active = false;
			movementStickShowing = false;
		
		}
		
	}
	
	function Disable()
	{
		gameObject.active = false;	
	}
	
	function IsFingerDown() : boolean
	{
		return (lastFingerId != -1);
	}
