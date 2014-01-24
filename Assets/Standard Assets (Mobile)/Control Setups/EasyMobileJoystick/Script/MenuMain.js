function OnGUI () {
  
			var xPos = (Screen.width / 2);
			var yPos = (Screen.height / 5);		
			var width = (Screen.width / 3);
			var height = (Screen.height / 12);
			var heightPlus = (Screen.height / 10);
			
			xPos = xPos - width/2;
			
			
			if( GUI.Button( new Rect( xPos, yPos, width, height ), "Camera Relative Setup" ) )
			{
				 Application.LoadLevel("CameraRelativeSetup");
			}
			
			
		
			
			
			
			if( GUI.Button( new Rect( xPos, yPos + heightPlus, width, height ), "First Person Setup" ) )
			{
				
				   Application.LoadLevel("FirstPersonSetup");
			}
			
			yPos+= heightPlus;
			if( GUI.Button( new Rect( xPos, yPos + heightPlus, width, height ), "First Person Setup No BG" ) )
			{
				
				   Application.LoadLevel("FirstPersonSetupNoBG");
			}
			
			yPos+= heightPlus;
			if( GUI.Button( new Rect( xPos, yPos + heightPlus, width, height ), "FPS No Sticks Visible" ) )
			{
				
				   Application.LoadLevel("FirstPersonSetupNoSticksVisible");
			}
			
			
			yPos+= heightPlus;
			
			
			
			
			if( GUI.Button( new Rect( xPos, yPos + heightPlus, width, height ), "Player Relative Setup" ) )
			{
				
				   Application.LoadLevel("PlayerRelativeSetup");
			}
			
			yPos+= heightPlus;
			if( GUI.Button( new Rect( xPos, yPos + heightPlus, width, height ), "SidescrollSetup Setup" ) )
			{
				
				   Application.LoadLevel("SidescrollSetup");
			}
			
			
		
		


}