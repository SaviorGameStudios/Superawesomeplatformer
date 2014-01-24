static var lives:int=3;
static var startX:float=0;
static var startY:float=5;

function Update () {
}

static function die(){
	
	var chu:GameObject=GameObject.Find("chu_animated");
	print(chu);
	chu.transform.position.x=startX;
	chu.transform.position.y=startY;
	lives--;
	print(lives);
}



function Start(){
	//this ensures that we can still access variables etc when another scene is loaded
	DontDestroyOnLoad(this);
	GameObject.Find("EndCollect").renderer.enabled=false;
}


