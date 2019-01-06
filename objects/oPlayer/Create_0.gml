/// @description  Variables

// Inherit oParEntity variables
event_inherited();

facing = 1;

// Movement ///////////////////////////////////////////////////////////////////

groundAccel = 1.00;
groundFric  = 2.00;
airAccel    = 0.75;
airFric     = 0.01;
vxMax       = 5.50;
vyMax       = 10.0;
jumpHeight  = 6.00;
gravNorm    = 0.50;
gravSlide   = 0.25; 

clingTime   = 2.0;

// Misc ///////////////////////////////////////////////////////////////////////

// States
IDLE     = 10;
RUN      = 11;
JUMP     = 12;
ROLL     = 13;

// Initialize properties
state  = IDLE;
facing = image_xscale; // Change xscale in editor to adjust initial facing

// For squash + stretch
xscale = 1;
yscale = 1;


///////////////////////////////////////////////////////////////////////////////

attacking = false;
blocking  = false;

//fallTime = 0;
//fallMax  = 28;


///////////////////////////////////////////////////////////////////////////////
//--------Dialogue Stuff
reset_dialogue_defaults();
myPortrait			= spr_portrait_player;
myVoice				= snd_voice2;
myFont				= fnt_dialogue;
myName				= "Green";

myPortraitTalk		= spr_portrait_examplechar_mouth;
myPortraitTalk_x	= 26;
myPortraitTalk_y	= 44;
myPortraitIdle		= spr_portrait_examplechar_idle;


