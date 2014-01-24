static var score: int=0;
static var tb: GUIText;

function Start(){
	tb=guiText;

	updateScore(0);
}


static function updateScore(a:int){
	score+=a;
	//can't say guiText.text because the guiText property is not immediately available which it needs to be in a static function
	tb.text="Score:"+score;
	
	
}