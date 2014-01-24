
v1
EasyMobileJoystick allows you to quickly add position dynamic and resolution independent joysticks to your scene.

** Features **
- Joysticks only appear when the user has touched the screen at the position they touch
- Greatly improves gameplay as the user doesn't need to watch where their thumbs are and can just concentrate on your game
- Joysticks stay at same scale you set in Unity, they don't shrink on Retina screens
- Fully testable in editor. No need to use your device and unity remote to test, but you can if you like

How to Use

The best way is to load up the demo scenes. All I have done is change the Unity controller prefabs to use EasyMobileJoystick.js class instead of Joystick.js which comes as default in unity. 

The Best way is use the prefabs, just drag into your scene.

To do it manually:

1. Add the EasyMobileJoystick script to an empty gameobject 
2. Add 2 more game objects containing  GUITextures , one for joystick and one for background of joystick
3. Assign these 2 game objects to the game object containing the EasyMobileScript

Scale

You can scale the GUItextures using the Scale property instead of Pixel Inset. This means that the graphics won't scale down on retina screen devices

No Images

Sometimes you may want to have a joystick or button without a background like the default unity one. Simply leave the Image BG property blank in EasyMobileJoystick.js.

Infact you can choose to have no joysticks appear, just using touch to control. Simply leave both Image BG and Image Joystick properties blank in EasyMobileJoystick.js.


************
v1.1

- Added a feature so  after scaling the image you want to ensure the thumbstick rotates in a tight circle you can click this option






