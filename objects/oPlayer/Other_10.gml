/// @description set default text

reset_dialogue_defaults();


//Line 0
		var i = 0;
		myText[i]		= "You can run a script after any line of dialogue! Let's make an emote to the left.";
		mySpeaker[i]	= id;
		myScripts[i]	= [create_instance_layer, 170,120,"Instances",obj_emote];
		
		//Line 1
		i++;
		myText[i]		= "You can even have it depend on player choice. Which object should I make?";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= ["An emote", "Another you!"];
		myTypes[i]		= 1;
		mySpeaker[i]	= id;//oCrawler;
		myScripts[i]	= [[create_instance_layer, 170,120,"Instances",obj_emote], [create_instance_layer, 170,120,"Instances",obj_examplechar]];
		myNextLine[i]	= [0,0];