function OnGUI () {
    if (GUI.Button (Rect (10,10,150,100), "Back"))
        Application.LoadLevel("MainMenu");
        
          GUI.Label (Rect (Screen.width / 2, Screen.height/5, 200, 200), "Touch left side for movement and right to rotate");
}