function OnGUI () {
    if (GUI.Button (Rect (10,10,150,100), "Back"))
        Application.LoadLevel("MainMenu");
        
          GUI.Label (Rect (100, Screen.height/2, 100, 100), "Touch left side for movement and right to jump");
}