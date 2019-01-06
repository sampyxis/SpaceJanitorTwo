jumped = false;
landed = false;

platformTarget = 0;
wallTarget     = 0;

push = false;

// Velocity
vx = 0;
vy = 0;

// Used for sub-pixel movement
cx = 0;
cy = 0;

onGround = OnGround();
cLeft    = place_meeting(x - 1, y, oBlock);
cRight   = place_meeting(x + 1, y, oBlock);

// FC Dialog stuff

//-----------Customise (FOR USER)
playerobject = oPlayer;
interact_key = ord("E");
detection_radius = 32;

myVoice			= snd_voice1;
myPortrait		= -1;
myFont			= fnt_dialogue;
myName			= "None";

myPortraitTalk		= -1;
myPortraitTalk_x	= -1;
myPortraitTalk_y	= -1;
myPortraitIdle		= -1;
myPortraitIdle_x	= -1;
myPortraitIdle_y	= -1;

//-----------Defaults Setup (LEAVE THIS STUFF)
reset_dialogue_defaults();