"Dungeon Quest" by Alexander Garcia

Part 1 - Gameplay Modifications

[ Gameplay ]

Understand the commands "ask" and "tell" and "say" and "answer" as something new.

Understand "ask [text]" or "tell [text]" or "answer [text]" or "say [text]" as a mistake ("[talk to instead]").

Instead of asking someone to try doing something:
	say "[talk to instead][paragraph break]".

Instead of answering someone that something:
	say "[talk to instead][paragraph break]".

To say talk to instead:
	say "(To communicate in [story title], TALK TO a character.) "

Understand "talk to [someone]" as talking to. Understand "talk to [something]" as talking to. Talking to is an action applying to one visible thing.

A thing can be seen or unseen.

Carry out examining a thing:
	now the noun is seen.
	
A thing can be obtained or unobtained. A thing is usually unobtained.

Carry out taking a thing:
	now the noun is obtained.

Release along with an interpreter.

The player is in the Central Room.

Understand "grab [something]" as taking.

When play begins:
	say "Hello, and welcome to Dungeon Quest![line break][line break]Here are some commands to get you started.[line break][bold type]go[roman type] [bracket]cardinal direction[close bracket] - Allows you to travel to a room in the specified cardinal direction.[line break][bold type]look[roman type] - Allows you to obtain a description of the room.[line break][bold type]look[roman type] at [bracket]something[close bracket] - Allows you to examine something more closely.[line break][bold type]take[roman type] [bracket]something[close bracket] - Allows you to put an item into your inventory.[line break][bold type]inventory[roman type] - Allows you to view the items in your possession.[line break][bold type]talk[roman type] to [bracket]someone[close bracket] - Allows you to speak with a non-playable character.[line break][line break]There are other supported actions that you will come across during the game. Try out anything that comes to mind! To bring this message back up in the future, type [bold type]help[roman type].";

Part 2 - Challenge Room 1

Section 1 - Items and Descriptions

Challenge Room 1 is a room. 

The description of Challenge Room 1 is "You find yourself in a strange room. There is an open archway on the north side of the room, which seems to lead to an open area."

In Challenge Room 1 is a supporter called the experimentation table. On the experimentation table is a container called the potion tray. The potion tray is fixed in place. On the experimentation table is a thing called the recipe book. The recipe book is fixed in place. On the experimentation table is a container called a beaker. The carrying capacity of the beaker is 1. In Challenge Room 1 is a thing called the broken vial. The broken vial is fixed in place.

The red vial is a thing. The yellow vial is a thing. The blue vial is a thing. The white vial is a thing. The black vial is a thing. The clear vial is a thing.

Understand "red potion" as red vial. Understand "yellow potion" as yellow vial. Understand "blue potion" as blue vial. Understand "white potion" as white vial. Understand "black potion" as black vial. Understand "clear potion" as clear vial.

In the potion tray is the red vial, the yellow vial, the blue vial, the white vial, the black vial, the clear vial. 

The purple potion is a thing. The purple potion is nowhere. The suspicious potion is a thing. The suspicious potion is nowhere. The red gem is a thing. The red gem is nowhere.

Understand "stone-dissolving potion" as purple potion. The printed name of purple potion is "stone-dissolving potion".

The suspicious potion is fixed in place. The purple potion is fixed in place.

Rule for printing the locale description of Challenge Room 1:
	say "In this room, you see a table with a tray on it. Inside the tray are vials containing red, yellow, blue, black, white, and clear potions. Also on the table is a beaker and a recipe book. To the right is a stone encasing with a broken vial on the floor near it. There seems to be a human head popping out of the stone..."

The description of the potion tray is "Some vials containing unknown liquids in a tray. Reminds you of potions class and how you almost failed because the teacher was a complete--";

The description of the broken vial is "I can probably slip on this. Better avoid it for now."

The description of the recipe book is 
"The recipe book contains several recipes scribbled into it. [line break][line break]Cure grey hair: [bold type]mix[roman type] black vial with white vial[line break]Madness potion: [bold type]mix[roman type] red vial with black vial [line break]Dissolve stone: [bold type]mix[roman type] blue vial with red vial[line break]Become invisible: [bold type]mix[roman type] yellow vial with blue vial[line break]Colored water: [bold type]mix[roman type] clear vial with any vial [line break]Injury cure: [bold type]mix[roman type] black vial with blue vial";

The description of the beaker is "A glass beaker used to safely mix potions. Magically enhanced to withstand whatever dangerous substances you may pour into it."

The description of the red gem is "The gem that you need to obtain from this room."

North of Challenge Room 1 is a room called Central Room.

Section 2 - NPC

Stone Encased Man is a man in Challenge Room 1. A person can be talked to or not talked to. A person is usually not talked to. A person has a number called timesTalkedToAfterGettingRedGem.

Understand "stone encasing" as Stone Encased Man.

Understand "Stone Freed Man" as Stone Encased Man.

The description of the Stone Encased Man is "[if the red gem is nowhere and the Stone Encased Man is not talked to]There is a red gem embedded in the stone. Wait, there’s a sleeping head coming out of the stone.[otherwise if the red gem is nowhere and the Stone Encased Man is talked to]It seems to be a man encased in stone. You can see a shiny red gem around where his belly-button would be.[otherwise]With the stone encasing removed, the man seems to be surprisingly well built. Perhaps he didn't get hungry while trapped in the stone."

Instead of talking to Stone Encased Man:
	if player has red gem:
		if timesTalkedToAfterGettingRedGem of Stone Encased Man is 0:
			say "Stone Freed Man: 'Thanks again for freeing me... Go get the rest of the gems so you can get out of here!'";
		otherwise:
			say "Stone Freed Man: 'Why are you still here? There's nothing left to do here now that you've got the gem.'";
		increment timesTalkedToAfterGettingRedGem of Stone Encased Man;
	otherwise if Stone Encased Man is talked to:
		if suspicious potion is in beaker:
			say "Stone Encased Man: 'No, no, no! It's not the correct potion! The right one has a… smell to it. I don't know what that will do, but you better [bold type]dump[roman type] that quickly before something bad happens!'";
		otherwise if purple potion is in beaker:
			say "Stone Encased Man: 'I think you've done it! That potion smells awful… Now hurry up and [bold type]pour[roman type] it on me so I can be free!'";
		otherwise if the book is seen:
			say "Stone Encased Man: 'Well, did you find the correct recipe?'";
		otherwise:
			say "Stone Encased Man: 'Didn't you hear me clearly? Look over there at the table. Do you see those vials? You should [bold type]mix[roman type] the correct ones together into a stone-dissolving potion and [bold type]pour[roman type] it over me!'";
	otherwise:
		if suspicious potion is in beaker:
			say "Stone Encased Man: 'Urg, ah! Oh hey, didn't notice you there. Can you help me out here? I tried to make a new potion and I've gotten my entire body turned to stone! Luckily, it hasn't turned my head to stone. Looks like you've already mixed some of the vials together to make a potion. If you can make the correct potion and pour it on me, it should turn me back to normal! The recipe book right there should tell you how!'";
		otherwise if purple potion is in beaker:
			say "Stone Encased Man: 'Urg, ah! Oh hey, didn't notice you there. Can you help me out here? I tried to make a new potion and I've gotten my entire body turned to stone! Luckily, it hasn't turned my head to stone… Wait, you've got the right potion! Quick -- [bold type]pour[roman type] it on me!'";
		otherwise if the book is seen:
			say "Stone Encased Man: 'Urg, ah! Oh hey, didn't notice you there. Can you help me out here? I tried to make a new potion and I've gotten my entire body turned to stone! Luckily, it hasn't turned my head to stone. You see those vials on the table there? If you can make the correct potion and [bold type]pour[roman type] it on me, it should turn me back to normal! I don't remember how to make it, but the recipe book on the table should tell you how. I'd reckon you've already read the book so hurry up!'";
		otherwise:
			say "Stone Encased Man: 'Urg, ah! Oh hey, didn't notice you there. Can you help me out here? I tried to make a new potion and I've gotten my entire body turned to stone! Luckily, it hasn't turned my head to stone. You see those vials on the table there? If you can make the correct potion and pour it on me, it should turn me back to normal! I don't remember how to make it, but the recipe book on the table should tell you how.'";
	now Stone Encased Man is talked to;

Part 3 - Challenge Room 2

Section 1 - Items and Descriptions

West of the Central Room is a room called Challenge Room 2 South. 

North of Challenge Room 2 South is a room called Challenge Room 2 North.

The northern trench is a thing. The northern trench is in Challenge Room 2 North.

The southern trench is a thing. The southern trench is in Challenge Room 2 South.

In Challenge Room 2 North is a supporter called the yellow pedestal. On the yellow pedestal is a thing called the yellow gem.

West of Challenge Room 2 South is a room called Supply Closet.

In Supply Closet is a thing called the suspicious broom.

The wall torch is a thing. The man-eating vines is a thing. The man-eating vines are fixed in place.

In Challenge Room 2 South is the wall torch, the vines.

The description of the yellow gem is "[if yellow gem is on pedestal]The gem that you need from this room. It’s on a nice looking pedestal. You wonder if you could also take the pedestal with you.[otherwise]The yellow gem that you need to escape. It's vibrancy reminds you of the sun."

The description of the pedestal is "It's very detailed and covered in gold. You wonder if you could take the pedestal with you."

The description of the man-eating vines is "They’re vines and they eat men. A monstrosity created in the name of science (and probably some ugly deity)."

The description of the wall torch is "Your eyes are drawn to its flames. It excites you with the possibility of burning. You look away before you start manically laughing."

The description of the suspicious broom is "On the broom is a metal tag. It reads, 'Nimbus 2000 (property of Hogwarts).' It’s an older model, so nobody will miss it if you take it."

Carry out examining a thing:
	If the noun is suspicious broom:
		now the printed name of the suspicious broom is "Nimbus 2000".
		
Understand "Nimbus 2000" as suspicious broom.

The description of Challenge Room 2 South is "You find yourself in a damp and smelly room; the air suffocates you. To the east is an open archway that leads to an open area. To the west is a door to what looks like a closet."

Rule for printing the locale description of Challenge Room 2 South:
	if the man-eating vines are in Challenge Room 2 South:
		say "To the north, there are man-eating vines that block a trench. There appears to be something shiny on the other side. The walls are lined with torches for light. And in the middle of the room stands a janitor feeding raw chicken to the vines.";
	otherwise:
		say "There is a trench to the north. There appears to be something shiny on the other side. The walls are lined with torches for light. And in the middle of the room stands a janitor cleaning up the mess left by the vines.";

The description of Challenge Room 2 North is "The air seems to be fresher here."

The description of the Supply Closet is "There are a variety of cleaning supplies in this room. To the east is a door leading back to the musty room."

Rule for printing the locale description of Challenge Room 2 North:
	if the player has the yellow gem:
		say "An expensive-looking pedestal sits in the middle of the room. To the south is the trench that you flew over, leading to the exit.";
	otherwise:
		say "An expensive-looking pedestal sits in the middle of the room. A yellow gem sits on top of it. To the south is the trench that you flew over, leading to the exit.";

The description of the southern trench is "[if man-eating vines is nowhere]The trench looks deep. It would be a bad idea to fall inside. It also appears to be too long to jump across.[otherwise]With the man-eating vines growing out of it, danger bells are ringing through your mind. You decide to avoid it for the time-being."

The description of the northern trench is "The trench looks deep. It would be a bad idea to fall inside. It also appears to be too long to jump across."

Instead of going to Challenge Room 2 North from Challenge Room 2 South:
	if the man-eating vines is nowhere:
		if the suspicious broom is not seen:
			say "There is no feasible way to get across this trench.";
		otherwise:
			say "The trench is deep. If only there were a way to get across...";
	otherwise:
		say "You'd rather not join the food chain today.";

Instead of going to Challenge Room 2 South from Challenge Room 2 North:
	say "The trench is deep. It would be best to [bold type]fly[roman type] on the broom to get across.";	

Section 2 - NPC

Janitor is a man in Challenge Room 2 South. A person can be talked to or not talked to. A person is usually not talked to. A person has a number called timesTalkedToAfterGettingYellowGem.

The description of Janitor is "You see a man holding a variety of cleaning equipment. There seems to be a raw chicken wing hanging from his back pocket. The thought of his possible diet concerns you.".

Instead of talking to Janitor:
	if player has yellow gem:
		if timesTalkedToAfterGettingYellowGem of Janitor is 0:
			say "Janitor: 'What are you still doing here? The vines are gone and you got your gem! Get out of here and get on to the next room!'”;
		otherwise:
			say "Janitor: 'Are you deaf?! I said it’s time for you to move on to the next room!'”;
		increment timesTalkedToAfterGettingYellowGem of Janitor;
	otherwise if Janitor is talked to:
		if the man-eating vines are nowhere:
			if Supply Closet is visited:
				if player has the suspicious broom:
					say "Janitor: 'That’s a Nimbus 2000 (property of Hogwarts) you found! You should be able [bold type]fly[roman type] across the gap no problem now that the vines are gone!'”;
					now the printed name of the suspicious broom is "Nimbus 2000";
				otherwise:
					say "Janitor: 'Well, the vines are dead, but I don’t see a way across. Did you find anything in the closet that would be helpful?'”;
			otherwise:
				say "Janitor: 'Well, the vines are dead, but I don’t see a way across. Maybe check in the closet?'”;
		otherwise if player has the wall torch:
			say "Janitor: 'Be careful around them with that torch you’re holding; the vines are really flammable, you see. One wrong move and you could [bold type]burn[roman type] them down along with yourself.'”;
		otherwise:
			say "Janitor: 'Them vines are coated with oil, so if you ever do get caught, just [bold type]burn[roman type] it down! Just don’t burn yourself in the process, okay?'”;
	otherwise:
		if the man-eating vines are nowhere:
			if Supply Closet is visited:
				if player has the suspicious broom:
					say "Janitor: 'Hey, how are you? You shouldn’t be wondering around here. Well, not that the vines are gone, I guess you can look around if you want to. Looks like there’s a trench between us and that orb over there. Maybe you can use that broom to [bold type]fly[roman type] over it.'”;
				otherwise:
					say "Janitor: 'Hey, how are you? You shouldn’t be wondering around here. Well, not that the vines are gone, I guess you can look around if you want to. Looks like there’s a trench between us and that orb over there. I saw you going through the closet. Did you find anything that would be helpful?'”;
			otherwise:
				say "Janitor: 'Hey, how are you? You shouldn’t be wondering around here. Well, not that the vines are gone, I guess you can look around if you want to. Looks like there’s a trench between us and that orb over there. Maybe there’s something useful in the closet that can help you.'”;
		otherwise if player has the wall torch:
			say "Janitor: 'Hey, how are you? You shouldn’t be wondering around here. You see those vines? Those be man-eating vines. Nasty little things; I have to keep them happy with some meat from time to time and let me tell you, they make a horrible mess. Be careful around them if you ever see one out in the jungle. Be careful around them with that torch you’re holding; they’re really flammable, you see. One wrong move and you could [bold type]burn[roman type] them down along with yourself.'”;
		otherwise:
			say “Janitor: 'Hey, how are you? You shouldn’t be wondering around here. You see those vines? Those be man-eating vines. Nasty little things; I have to keep them happy with some meat from time to time and let me tell you, they make a horrible mess. Be careful around them if you ever see one out in the jungle. Them vines are coated with oil, so if you ever do get caught, just [bold type]burn[roman type] it down! Just don’t burn yourself in the process, okay?'”;
	now Janitor is talked to;

Part 4 - Challenge Room 3

Section 1 - Items and Descriptions

East of the Central Room is a room called Challenge Room 3.

The broken stone is a thing. The stone slab is a thing. The stone shard is a thing. The jagged stone is a thing. The invisible key is a thing. The old chest is a container. The old chest is fixed in place. The old chest is lockable and locked. The matching key of old chest is the invisible key. The pair of magic glasses is a thing. The pair of magic glasses is wearable. The old table is a supporter. The rubber band is a thing. The rubber band is on the old table. The invisible key is nowhere. The pair of magic glasses is on the old table. The lifting potion is a thing. The lifting potion is on the old table. The Y-shaped wooden stick is a thing. The stack of boulders is a thing. The stack of boulders is fixed in place. The jagged stone is on the old table. The broken stone is in the old chest. The magical staff is a thing. The slingshot is a thing. The slingshot is nowhere. The stone slab is nowhere. The stone shard is nowhere. The suspended net is a thing. The suspended net is fixed in place. The torn net is a thing. The torn net is nowhere. The blue pedestal is a thing. The blue pedestal is fixed in place. The blue pedestal is nowhere. The blue gem is a thing. The blue gem is on the blue pedestal. The broken wall is a thing.

In Challenge Room 3 is the old table, the old chest, stack of boulders, Y-shaped wooden stick, suspended net, magical staff, broken wall.

FirstEntered is a kind of Value. The FirstEntereds are trueEntered and falseEntered. A room has a FirstEntered. The FirstEntered of a room is falseEntered.

The description of Challenge Room 3 is "[if the FirstEntered of Challenge Room 3 is falseEntered]You enter a room filled with a variety of objects. A sense of dread comes over you as you look around. Where should you start? To the west is an open archway that leads to an open area.[otherwise]The room is filled with a variety of objects. A sense of dread comes over you as you look around. Where should you start? To the west is an open archway that leads to an open area."

After printing the locale description of Challenge Room 3:
	if the FirstEntered of Challenge Room 3 is falseEntered:
		say "Voice: 'Here there! You probably can’t see me as I’m a ghost, but my name’s Casper! I was stuck in this room and died. Now that I have loads of free time, I figured out the puzzle. Or at least I think I did. Talk to me if you need any pointers!'";
		now the FirstEntered of Challenge Room 3 is trueEntered;

The description of broken stone is "[if the broken wall is seen]An oddly shaped piece of stone. It looks like it may fit in the broken wall.[otherwise]A piece of stone that appears to have broken off from somewhere."

The description of stone slab is "[if the broken wall is seen]An oddly shaped piece of stone. It looks like it may fit in the broken wall.[otherwise]A piece of stone that appears to have broken off from somewhere."

The description of stone shard is "[if the broken wall is seen]An oddly shaped piece of stone. It looks like it may fit in the broken wall.[otherwise]A piece of stone that appears to have broken off from somewhere."

The description of jagged stone is "[if the broken wall is seen]An oddly shaped piece of stone. It looks like it may fit in the broken wall.[otherwise]A piece of stone that appears to have broken off from somewhere."

The description of the broken wall is "A wall that appears to have several holes in it. It looks like there are four places that something may fit into."

The description of the old chest is "An old chest that looks like it might contain a pirate’s treasure."

Instead of unlocking the old chest with the invisible key:
	now the old chest is unlocked;
	now the old chest is open;
	say "In the old chest is a broken stone.";
	
Understand "shiny key" as invisible key;

Understand "gold key" as invisible key;

The description of the invisible key is "A shiny key that dazzles you with how shiny it is."

The description of the old table is "A nice, sturdy table made of wood. You knock on it for good luck."

The printed name of the pair of magic glasses is "suspicious pair of glasses".

Carry out examining a thing:
	if the noun is pair of magic glasses:
		now the printed name of the pair of magic glasses is "pair of magic glasses";
	otherwise if the noun is lifting potion:
		now the printed name of the lifting potion is "lifting potion";
		
The description of the pair of magic glasses is "A pair of glasses that seems to be exuding a magical aura."

Understand "suspicious pair of glasses" as the pair of magic glasses.

The description of the suspended net is "An unreachable net that holds a stone slab. The net is hanging from a rotting wooden hook."

The description of the Y-shaped wooden stick is "A neat stick that is just here for some reason. Maybe someone grew a tree here once?"

The description of the rubber band is "A mysterious object from…THE FUTURE. It seems to stretch very well."

The description of the stack of boulders is "A giant stack of boulders; it looks heavy."

The description of the magical staff is "A magical staff for magical people."

The printed name of the lifting potion is "strange potion".

Understand "strange potion" as lifting potion.

The description of the lifting potion is "The potion looks suspicious, but you’ve drank swamp water before, so it can’t be that bad. It's labeled 'Lifting Potion'."

The description of the blue pedestal is "A rotting wooden pedestal. What is it with this room and wood?"

The description of the blue gem is "[if blue gem is on pedestal]The gem that you need from this room. It’s on a rotting wooden pedestal. What is it with this room and wood?[otherwise]The blue gem that you need to escape. The deep blue hue reminds you of the ocean."

The description of the slingshot is "A slingshot that you created. You can fire some powerful shots with this using some nearby pebbles."

The description of the torn net is "A torn net. You wonder how the wall piece didn't just break through this flimsy net on its own."

Section 2 - NPC

Ghost is a man in Challenge Room 3. A person can be talked to or not talked to. A person is usually not talked to. A person has a number called timesTalkedToAfterGettingBlueGem. The ghost is talked to.

The description of Ghost is "[if the BeenWorn of the player is hasBeenWorn]You see a cloud-like entity. Looks friendly.[otherwise]You are not sure what you should be looking at, but that booming voice from earlier tells you otherwise.".

LastInteracted is a kind of value. The LastInteracteds are left1, left2, left3, left4, down1, misc1, right1, right2, right3, right4, right5, right6, up1, up2, up3, up4, misc2, misc3, startInteract, endInteract.

A person has a LastInteracted. The LastInteracted of a player is startInteract.

The list of LeftItems is a list of objects that varies.

The list of LeftItems is {old chest, invisible key, pair of magic glasses, broken stone}.

The list of DownItems is a list of objects that varies.

The list of DownItems is {jagged stone}.

The list of RightItems is a list of objects that varies.

The list of RightItems is {suspended net, torn net, Y-shaped wooden stick, rubber band, slingshot, stone slab}.

The list of UpItems is a list of objects that varies.

The list of UpItems is {stone shard, stack of boulders, magical staff, lifting potion}

The list of MiscItems is a list of objects that varies.

The list of MiscItems is {blue gem, blue pedestal, old table}

A leftComplete is a kind of Value. The leftCompletes are leftDone and leftNotDone.

Challenge Room 3 has a leftComplete. The leftComplete of Challenge Room 3 is leftNotDone.

A rightComplete is a kind of Value. The rightCompletes are rightDone and rightNotDone.

Challenge Room 3 has a rightComplete. The rightComplete of Challenge Room 3 is rightNotDone.

A upComplete is a kind of Value. The upCompletes are upDone and upNotDone.

Challenge Room 3 has a upComplete. The upComplete of Challenge Room 3 is upNotDone.

A downComplete is a kind of Value. The downCompletes are downDone and downNotDone.

Challenge Room 3 has a downComplete. The downComplete of Challenge Room 3 is downNotDone.

Carry out taking a thing:
	if the noun is listed in the list of LeftItems:
		if the leftComplete of Challenge Room 3 is leftNotDone:
			now the LastInteracted of the player is left1;
	otherwise if the noun is listed in the list of RightItems:
		if the rightComplete of Challenge Room 3 is rightNotDone:
			now the LastInteracted of the player is right1;
	otherwise if the noun is listed in the list of UpItems:
		if the upComplete of Challenge Room 3 is upNotDone:
			now the LastInteracted of the player is up1;
	otherwise if the noun is listed in the list of DownItems:
		if the downComplete of Challenge Room 3 is downNotDone:
			now the LastInteracted of the player is down1;
		
Carry out examining a thing:
	if the noun is listed in the list of LeftItems:
		if the leftComplete of Challenge Room 3 is leftNotDone:
			now the LastInteracted of the player is left1;
	otherwise if the noun is listed in the list of RightItems:
		if the rightComplete of Challenge Room 3 is rightNotDone:
			now the LastInteracted of the player is right1;
	otherwise if the noun is listed in the list of UpItems:
		if the upComplete of Challenge Room 3 is upNotDone:
			now the LastInteracted of the player is up1;
	otherwise if the noun is listed in the list of DownItems:
		if the downComplete of Challenge Room 3 is downNotDone:
			now the LastInteracted of the player is down1;
			
A lockTry is a kind of Value. The lockTries are lockAttempt and lockNoAttempt.

The old chest has a lockTry. The lockTry of the old chest is lockNoAttempt.

Carry out opening a container:
	if the container is the old chest:
		now the lockTry of the old chest is lockAttempt;
		now the LastInteracted of the player is left1;
		
Understand "Casper" as Ghost;

Instead of talking to Ghost:
	if LastInteracted of the player is startInteract:
		say "Casper: 'Maybe something on that table can help you out.'";
	otherwise if LastInteracted of the player is left1:
		if left wall status of broken wall is leftAbsent:
			if broken stone is not obtained:
				if the old chest is locked:
					if the lockTry of the old chest is lockAttempt:
						if invisible key is obtained:
							if player has invisible key:
								say “Casper: 'Looks like you’ve got the key now. Wonder if it’ll still work on the lock you smacked around.'”;
							otherwise:
								say “Casper: 'Didn't you come across a key already? Where did you put it?'”;
						otherwise:
							if invisible key is seen:
								say “Casper: 'Didn't you come across a key already? Could you use that key on the lock from earlier?'”;
							otherwise:
								say “Casper: 'Of course you can’t just open a locked chest, you need to find the key!'”;
					otherwise:
						if invisible key is obtained:
							if player has invisible key:
								say “Casper: 'Fancy key you found, looks like it’s made out of pure gold. Maybe it [bold type]unlocks[roman type] a fancy chest!'”;
							otherwise:
								say “Casper: 'Didn't you come across a key already? Where did you put it? Maybe it could [bold type]unlock[roman type] a fancy chest!'”;
						otherwise:
							if invisible key is seen:
								say “Casper: 'Didn't you come across a key earlier? Maybe it could [bold type]unlock[roman type] a fancy chest!'”;
							otherwise:
								if the pair of magic glasses is obtained:
									if the player has the pair of magic glasses:
										if the player is wearing the pair of magic glasses:
											say "Casper: 'Hey does that help your vision at all? Are you able to see anything new?'";
										otherwise:
											say "Casper: 'Fancy glasses you've got there! You should [bold type]wear[roman type] them! I think you'd look great in it.'";
									otherwise:
										say "Casper: 'Where did you put those glasses from earlier? I want to see you [bold type]wear[roman type] them! I think you'd look great in it.'";
								otherwise:
									if the pair of magic glasses is seen:
										say "Casper: 'Hey those are some fancy glasses over there. I want to see you [bold type]wear[roman type] them! I think you'd look great in it.'";
									otherwise:
										say "Casper: 'Maybe something on that table can help you out.'";
				otherwise:
					if the old chest is closed:
						say "Casper: 'Well that chest isn't going to open itself. Let's see what's inside!'";
					otherwise:
						say "Casper: 'Was there nothing but a rock inside that chest all along? What a shame.'";
			otherwise:
				if player has broken stone:
					if the broken wall is seen:
						say "Casper: 'Maybe you can [bold type]place[roman type] that broken stone into that broken wall from earlier.'";
					otherwise:
						say "Casper: 'There wouldn't be a useless rock inside a locked chest for no reason. Try looking around to see if you can find a use for it.'";
				otherwise:
					if the broken wall is seen:
						if broken stone is obtained:
							say "Casper: 'Maybe that useless rock you took from the chest fits into that broken wall from earlier. Try to [bold type]place[roman type] the broken stone into it.'";
						otherwise:
							say "Casper: 'Maybe that useless rock in the chest fits into that broken wall from earlier. Try to [bold type]place[roman type] the broken stone into it.'";
					otherwise:
						say "Casper: 'There wouldn't be a useless rock inside a locked chest for no reason. Try looking around to see if you can find a use for it.'";
		otherwise:
			if leftComplete of Challenge Room 3 is leftNotDone:
				say “Casper: 'Great, that fit perfectly!'”;
				if rightComplete of Challenge Room 3 is rightNotDone:
					now the LastInteracted of the player is right1;
				otherwise if upComplete of Challenge Room 3 is upNotDone:
					now the LastInteracted of the player is up1;
				otherwise if downComplete of Challenge Room 3 is downNotDone:
					now the LastInteracted of the player is down1;
				otherwise:
					now the LastInteracted of the player is endInteract;
				now the leftComplete of Challenge Room 3 is leftDone;
			otherwise:
				say "a"; [should never reach this state]
				if rightComplete of Challenge Room 3 is rightNotDone:
					now the LastInteracted of the player is right1;
				otherwise if upComplete of Challenge Room 3 is upNotDone:
					now the LastInteracted of the player is up1;
				otherwise if downComplete of Challenge Room 3 is downNotDone:
					now the LastInteracted of the player is down1;
				otherwise:
					now the LastInteracted of the player is endInteract;
	otherwise if LastInteracted of the player is right1:
		if right wall status of broken wall is rightAbsent:
			if suspended net is not nowhere:
				if slingshot is not obtained:
					if rubber band is obtained:
						if the player has the rubber band: [has rubber band]
							if the Y-shaped stick is obtained:
								if the player has the Y-shaped stick:
									say “Casper: 'Have you tried [bold type]combining[roman type] that stick with rubber band you have? You might be able to make something useful, like a slingshot.'”;
								otherwise:
									say "Casper: 'Why'd you drop that Y-shaped stick? You could definitely craft a slingshot if you picked it back up and [bold type]combined[roman type] it with that rubber band you have.'";
							otherwise if the Y-shaped stick is seen:
								say "Casper: 'You saw the Y-shaped stick, right? You could definitely craft a slingshot if you picked it up and [bold type]combined[roman type] it with that rubber band you have.'"; 
							otherwise:
								say "Casper: 'There should be a stick somewhere around here... You could definitely craft a slingshot if you found it and [bold type]combined[roman type] it with that rubber band you have.'";
						otherwise: [rubber band dropped]
							if the Y-shaped stick is obtained:
								if the player has the Y-shaped stick:
									say "Casper: 'Why'd you drop that rubber band? You could definitely craft a slingshot if you picked it back up and [bold type]combined[roman type] it with that Y-shaped stick you have.'";
								otherwise:
									say "Casper: 'Why'd you drop that Y-shaped stick and rubber band? You could definitely craft a slingshot if you picked them back up.'";
							otherwise if the Y-shaped stick is seen:
								say "Casper: 'You saw that Y-shaped stick, right? You could definitely craft a slingshot if you [bold type]combined[roman type] it with that rubber band you dropped.'";
							otherwise:
								say "Casper: 'Why'd you drop that rubber band? I'm sure it will be useful for something...'";
					otherwise if rubber band is seen: [rubber band seen]
						if the Y-shaped stick is obtained:
							if the player has the Y-shaped stick:
								say "Casper: 'You saw that rubber band, right? You could definitely craft a slingshot if you picked it up and [bold type]combined[roman type] it with that Y-shaped stick you have.'"; 
							otherwise:
								say "Casper: 'You saw that rubber band, right? You could definitely craft a slingshot if you picked it up and [bold type]combined[roman type] it with that Y-shaped stick you dropped.'"; 
						otherwise if the Y-shaped stick is seen:
							say "Casper: 'You saw that Y-shaped stick and rubber band, right? You could definitely craft a slingshot if you picked them up.'";
						otherwise:
							say "Casper: 'You saw that rubber band, right? I'm sure it will be useful for something...'";
					otherwise if the Y-shaped stick is obtained:
						if the player has the Y-shaped stick:
							say "Casper: 'There should be a rubber band somewhere around here... You could definitely craft a slingshot if you picked it up and [bold type]combined[roman type] it with that Y-shaped stick you have.'";
						otherwise:
							say "Casper: 'Why'd you drop that Y-shaped stick? I'm sure it will be useful for something...'";
					otherwise if the Y-shaped stick is seen:
						say "Casper: 'You saw that Y-shaped stick, right? I'm sure it will be useful for something...'";
					otherwise:
						say "Casper: 'Maybe something on that table can help you out.'";
				otherwise: [player has obtained slingshot]
					if player has slingshot:
						if suspended net is seen:
							say "Casper: 'You saw that suspended net, right? It looks really weak! I'm sure you could [bold type]shoot[roman type] it down using your slingshot.'";
						otherwise:
							say "Casper: 'Great work crafting that slingshot! You should be able to [bold type]shoot[roman type] down something in here... Look around!'";
					otherwise:
						say "Casper: 'Why'd you go through all the trouble of crafting that slingshot if you're just going to drop it?!'";
			otherwise: [net was shot down]
				if broken wall is seen:
					if stone slab is obtained:
						if player has stone slab:
							say "Casper: 'Maybe you can [bold type]place[roman type] this stone slab into the broken wall from earlier...'";
						otherwise:
							say "Casper: 'Why'd you drop the stone slab? It looks like you might be able to [bold type]place[roman type] it in the broken wall from earlier...'";
					otherwise:
						say "Casper: 'Looks like something fell out of the net... Go check it out, you might be able to [bold type]place[roman type] it in the broken wall from earlier...'";
				otherwise:
					if stone slab is obtained:
						if player has stone slab:
							say "Casper: 'That stone slab's got to be useful for something right? Looks like it was broken off of something larger. Try looking around to see where it could belong.'";
						otherwise:
							say "Casper: 'Why'd you drop the stone slab? It's got to be useful for something, right?'";
					otherwise:
						say "Casper: 'Looks like something fell out of the net... Go check it out, I'm sure it will be useful somewhere...'";
		otherwise:
			if rightComplete of Challenge Room 3 is rightNotDone:
				say “Casper: 'Great, that fit perfectly!'”;
				if leftComplete of Challenge Room 3 is leftNotDone:
					now the LastInteracted of the player is left1;
				otherwise if upComplete of Challenge Room 3 is upNotDone:
					now the LastInteracted of the player is up1;
				otherwise if downComplete of Challenge Room 3 is downNotDone:
					now the LastInteracted of the player is down1;
				otherwise:
					now the LastInteracted of the player is endInteract;
				now the rightComplete of Challenge Room 3 is rightDone;
			otherwise:
				say "a"; [should never reach this state]
				if leftComplete of Challenge Room 3 is leftNotDone:
					now the LastInteracted of the player is left1;
				otherwise if upComplete of Challenge Room 3 is upNotDone:
					now the LastInteracted of the player is up1;
				otherwise if downComplete of Challenge Room 3 is downNotDone:
					now the LastInteracted of the player is down1;
				otherwise:
					now the LastInteracted of the player is endInteract;	
	otherwise if LastInteracted of the player is up1:
		if up wall status of the broken wall is upAbsent:
			if stone shard is nowhere:
				if the lift status of the player is normal: [player has not drank lift potion]
					if the lifting potion is obtained:
						if the player has the lifting potion:
							say "Casper: 'That potion you have seems like it could help you with those heavy boulders... you should [bold type]drink[roman type] it!'";
						otherwise:
							say "Casper: 'That potion you had seems like it could help you with those heavy boulders... you should get it back and then [bold type]drink[roman type] it!'";
					otherwise if the magical staff is obtained:
						if the player has the magical staff:
							if the lifting potion is seen:
								say "Casper: 'That staff won't be enough on it's own... Maybe that potion will help...'";
							otherwise:
								say "Casper: 'That staff won't be enough on it's own... You'll need something to assist your magical powers...'";
						otherwise:
							say "Casper: 'WHAT?! Why would you drop the staff? You'll need it if you want any hope of lifting the boulders!'";
					otherwise:
						if the rock status of the player is none:
							if the stack of boulders is seen:
								say "Casper: 'There's definitely something behind those boulders...'";
							otherwise:
								say "Casper: 'Maybe something on that table can help you out.'";
						otherwise:
							say "Casper: 'There's definitely something behind those boulders... but you'll need magic to move them.'";
				otherwise: [player drank lift potion]
					if the magical staff is obtained:
						if the player has the magical staff:
							if the rock staff status is no attempt:
								say "Casper: 'You have the staff and you drank the potion, right? Looks like you should be able to lift the boulders now! Try to [bold type]lift[roman type] it [bold type]with[roman type] the staff.'";
							otherwise:
								say "Casper: 'WOW! I can feel the magical energy coming off of you. With that staff and that power, you should have a better time lifting the boulders.'";
						otherwise:
							say "Casper: 'WHAT?! Why would you drop the staff? Pick that back up and you should be able to lift the boulders!'";
					otherwise if the magical staff is seen:
						say "Casper: 'Okay, you have the magical powers... But now you need a staff to channel those powers. You saw one, right?'";
					otherwise:
						say "Casper: 'Okay, you have the magical powers... But now you need a staff to channel those powers. I swear there was one lying around here somewhere...'";
			otherwise:
				if broken wall is seen:
					if stone shard is obtained:
						if player has stone shard:
							say "Casper: 'Maybe you'll be able to [bold type]place[roman type] this stone shard into the broken wall from earlier...'";
						otherwise:
							say "Casper: 'Why'd you drop the stone shard? It looks like you could [bold type]place[roman type] it in the broken wall from earlier...'";
					otherwise:
						say "Casper: 'Looks like there was something behind the boulders... Go check it out, you might be able to [bold type]place[roman type] it in the broken wall from earlier...'";
				otherwise:
					if stone shard is obtained:
						if player has stone shard:
							say "Casper: 'That stone shard's got to be useful for something right? Looks like it was broken off of something larger. Try looking around to see where it could belong.'";
						otherwise:
							say "Casper: 'Why'd you drop the stone shard? It's got to be useful for something, right?'";
					otherwise:
						say "Casper: 'Looks like there was something behind the boulders... Go check it out, I'm sure it will be useful somewhere...'";
		otherwise:
			if upComplete of Challenge Room 3 is upNotDone:
				say “Casper: 'Great, that fit perfectly!'”;
				if leftComplete of Challenge Room 3 is leftNotDone:
					now the LastInteracted of the player is left1;
				otherwise if rightComplete of Challenge Room 3 is rightNotDone:
					now the LastInteracted of the player is right1;
				otherwise if downComplete of Challenge Room 3 is downNotDone:
					now the LastInteracted of the player is down1;
				otherwise:
					now the LastInteracted of the player is endInteract;
				now the upComplete of Challenge Room 3 is upDone;
			otherwise:
				say "a"; [should never reach this state]
				if leftComplete of Challenge Room 3 is leftNotDone:
					now the LastInteracted of the player is left1;
				otherwise if rightComplete of Challenge Room 3 is rightNotDone:
					now the LastInteracted of the player is right1;
				otherwise if downComplete of Challenge Room 3 is downNotDone:
					now the LastInteracted of the player is down1;
				otherwise:
					now the LastInteracted of the player is endInteract;	
	otherwise if LastInteracted of the player is down1:
		if down wall status of broken wall is downAbsent:
			if jagged stone is obtained:
				if player has jagged stone:
					if broken wall is seen:
						say "Casper: 'That stone might fit into that broken wall you saw earlier. You should try to [bold type]place[roman type] it into the wall!'";
					otherwise:
						say "Casper: 'I wonder what you're planning on doing with that jagged stone. It's definitely shaped pretty weirdly though, like it broke off from somewhere.'";
				otherwise:
					if broken wall is seen:
						say "Casper: 'That jagged stone you had earlier might fit into that broken wall you saw earlier. You should get it back and try to [bold type]place[roman type] it into the wall!'";
					otherwise:
						say "Casper: 'What happened to that jagged stone you picked up earlier? It looked peculiar.'";
			otherwise if jagged stone is seen:
				if broken wall is seen:
					say "Casper: 'That jagged stone over there might fit into that broken wall you saw earlier. You should try to [bold type]place[roman type] it into the wall!'";
				otherwise:
					say "Casper: 'Check out that jagged stone you saw earlier. It looked peculiar.'";
			otherwise:
				if broken wall is seen:
					say "Casper: 'The broken wall was missing some big pieces... I wonder if we can find them!'"; [look for a stone that fits]
				otherwise:
					say "Casper: 'That broken wall looks interesting...'"; [direct player to the broken wall]
		otherwise:
			if downComplete of Challenge Room 3 is downNotDone:
				say “Casper: 'Great, that fit perfectly!'”;
				if rightComplete of Challenge Room 3 is rightNotDone:
					now the LastInteracted of the player is right1;
				otherwise if upComplete of Challenge Room 3 is upNotDone:
					now the LastInteracted of the player is up1;
				otherwise if leftComplete of Challenge Room 3 is leftNotDone:
					now the LastInteracted of the player is left1;
				otherwise:
					now the LastInteracted of the player is endInteract;
				now the downComplete of Challenge Room 3 is downDone;
			otherwise:
				say "a"; [should never reach this state]
				if rightComplete of Challenge Room 3 is rightNotDone:
					now the LastInteracted of the player is right1;
				otherwise if upComplete of Challenge Room 3 is upNotDone:
					now the LastInteracted of the player is up1;
				otherwise if leftComplete of Challenge Room 3 is leftNotDone:
					now the LastInteracted of the player is left1;
				otherwise:
					now the LastInteracted of the player is endInteract;
	otherwise if LastInteracted of the player is endInteract:
		if blue gem is obtained:
			if player has blue gem:
				if timesTalkedToAfterGettingBlueGem of Ghost is 0:
					say "Casper: 'What are you still doing here, you already have the gem! Oh, are you worried that I'll be lonely here? Don't worry, I've been alone for years now. I'll eventually find something to do.'";
				otherwise:
					say "Casper: 'Well, if you want to stay here, then be my guest. Hmm, let's share stories. There was this one time where…'";
				increment timesTalkedToAfterGettingBlueGem of Ghost;
			otherwise:
				say "Casper: 'You solved the puzzle... and then DROPPED the gem?! Pick it up and get out of here!!'";
		otherwise:
			say "Casper: 'You solved the puzzle!! Go pick up the gem already...'";
	now Ghost is talked to;

Part 5 - Endgame

Section 1 - Items and Description

North of the Central Room is a room called The Exit.

The description of the Central Room is "A rather barren room. You see a wizard at the north end next to what appears to be an exit. There are archways to your south, east, and west that seem to lead to rooms.";

Instead of going to The Exit from the Central Room:
	if the player has the red gem and the player has the blue gem and the player has the yellow gem:
		end the story;
	otherwise:
		say "You feel a strong force repel you away from the exit.";
		
Every turn:
	if the player is in The Exit:
		end the story;

Instead of dropping the red gem:
	say "This gem looks valuable. I should probably hold on to it.";

Instead of dropping the yellow gem:
	say "This gem looks valuable. I should probably hold on to it.";
	
Instead of dropping the blue gem:
	say "This gem looks valuable. I should probably hold on to it.";

Section 2 - NPC

The Wizard is a man in the Central Room. A person has a number called timesTalkedToWizard. 

The description of the Wizard is "A typical wizard you would see in a typical RPG. You wonder if the long grey hair coming out of his pointy hat is real.".

A gameCompleted is a kind of Value. The gameCompleteds are gameDone and gameNotDone.

The Central Room has a gameCompleted. The gameCompleted of the Central Room is gameNotDone.

Instead of talking to the Wizard:
	if the gameCompleted of the Central Room is gameNotDone:
		if timesTalkedToWizard of the Wizard is 0:
			if the player has the red gem and the player has the blue gem and the player has the yellow gem:
				say “Wizard: 'Welcome to my magnificent escape room! You… already have all the gems. Well, how rude. You could have at least let me say my introduction. I worked very hard on it, you know!'”;
				now the gameCompleted of the Central Room is gameDone;
			otherwise if the player has the red gem or the player has the blue gem or the player has the yellow gem:
				say “Wizard: 'Welcome to my magnificent escape room! You have been randomly chosen from an infinite number of universes, lucky you! To escape-- oh, looks like you already have a gem! Each room contains a gem that you need in order to escape. Get all three and you’ll be free! Also, there may be people inside the rooms. Talk to them and they might say something useful!'”;
			otherwise:
				say “Wizard: 'Welcome to my magnificent escape room! You have been randomly chosen from an infinite number of universes, lucky you! To escape, you must go into the rooms to your south, east, and west. In each of those rooms is a gem that you must obtain. But, it’s not that simple; the gems can only be acquired through a series of puzzles. Good luck! Oh, there are also some people inside the rooms. Maybe they’ll say something useful if you talk to them.'”;
		otherwise:
			if the player has the red gem and the player has the blue gem and the player has the yellow gem:
				say "Wizard: 'Congratulations, you were able to solve the escape room! You could walk out the door and go back to your mundane life, but do you really want to?'";
				now the gameCompleted of the Central Room is gameDone;
			otherwise if the player has the red gem or the player has the blue gem or the player has the yellow gem:
				if the player has the red gem:
					if the player has the blue gem:
						say “Wizard: 'Great, all you need is one more gem! Get the yellow gem from Challenge Room 2 and then you can be free!'”;
					otherwise if the player has the yellow gem:
						say “Wizard: 'Great, all you need is one more gem! Get the blue gem from Challenge Room 3 and then you can be free!'”;
					otherwise:
						say “Wizard: 'Great, all you need are two more gems! Get the yellow and blue gems from Challenge Room 2 and Challenge Room 3 and then you can be free!'”;
				otherwise if the player has the blue gem:
					 if the player has the yellow gem:
						say “Wizard: 'Great, all you need is one more gem! Get the red gem from Challenge Room 1 and then you can be free!'”;
					otherwise:
						say “Wizard: 'Great, all you need are two more gems! Get the red and yellow gems from Challenge Room 1 and Challenge Room 2 and then you can be free!'”;
				otherwise:
					say “Wizard: 'Great, all you need are two more gems! Get the red and blue gems from Challenge Room 1 and Challenge Room 3 and then you can be free!'”;
			otherwise:
				say “Wizard: 'Did you not hear me the first time? Go into the rooms and get the gems. There are also people inside the rooms you can talk to.'”;
	otherwise:
		say “Wizard: 'Go through the exit already! I promise you have more important things to get to right now.'”;
	increment timesTalkedToWizard of the Wizard;

Part 6 - Custom Actions

Section 1 - Ignition Implementation

Understand "ignite [something] with [something preferably held]" as igniting it with. Igniting it with is an action applying to two things. 
Understand the command "burn" as something new. Understand "burn [something] with [something preferably held]" as igniting it with.

Carry out igniting it with:
	now the noun is nowhere.
	
Report igniting it with:
	say "Janitor: Hey, what are you doing?! Get out of there before you get burned as well!”;
	say "The [noun] has been burnt to a crisp."

Check igniting it with:
	if the second noun is not the torch:
		say "You can't burn something with [second noun]" instead;
	if the noun is not the man-eating vines:
		say "[noun] is not flammable." instead;
		
Section 2 - Crafting Implementation

Understand "combine [something] with [something]" as combining it with. Combining it with is an action applying to two carried things. Understand the command "connect" as "combine".

Understand the command "attach" as something new. Understand "attach [something] to [something]" as combining it with.

Understand the command "craft" as something new. Understand "craft [something] with [something]" as combining it with.

The combining it with action has an object called the item built.

Setting action variables for combining something with something:
	if the noun is the rubber band:
		if the second noun is the y-shaped wooden stick:
			now the item built is the slingshot;
	otherwise if the noun is the y-shaped wooden stick:
		if the second noun is the rubber band:
			now the item built is the slingshot;

Check combining it with:
	if the item built is nothing,
		say "You can't combine [the noun] and [the second noun] into anything useful." instead.

Carry out combining it with:
	move the item built to the holder of the noun;
	now the noun is nowhere;
	now the second noun is nowhere;
	now the item built is obtained.

Report combining it with:
	say "You now have [an item built]."
	
Section 3 - Brewing Implementation

Understand the command "brew" as something new. Understand "brew [something] with [something]" as brewing it with. Brewing it with is an action applying to two things. 

The brewing it with action has an object called the potion.

Setting action variables for brewing something with something:
	let L be {the red vial, the yellow vial, the blue vial, the white vial, the black vial, the clear vial};
	if the nothing is in the beaker:
		if the noun is the red vial:
			if the second noun is the blue vial:
				now the potion is the purple potion;
			otherwise if the second noun is listed in L:
				now the potion is the suspicious potion;
		otherwise if the noun is the blue vial:
			if the second noun is the red vial:
				now the potion is the purple potion;
			otherwise if the second noun is listed in L:
				now the potion is the suspicious potion;
		otherwise if the noun is listed in L:
			if the second noun is listed in L:
				now the potion is the suspicious potion;

Check brewing it with:
	if something is in the beaker:
		say "There is no space in the beaker for a new potion." instead;
	otherwise if the potion is nothing:
		say "You can't mix [the noun] and [the second noun] into anything useful." instead;

Carry out brewing it with:
	move the potion to the beaker.

Report brewing it with:
	say "There is now a [potion] sitting in the beaker."
	
Understand the command "mix" as something new. Understand "mix [something] with [something]" as brewing it with.


Section 4 - Dumping Implementation

Understand the command "dump" as something new. Understand "dump [something]" as dumping it. Dumping it is an action applying to a thing. Understand the command "empty" as something new. Understand "empty [something]" as dumping it. Understand "pour [something]" as dumping it.

Check dumping it:
	if the noun is not the beaker:
		if the noun is not in a container:
			say "The [noun] can't be dumped." instead;
		otherwise if the noun is not the purple potion and the noun is not the suspicious potion:
			say "The [noun] can't be dumped." instead;
	otherwise:
		if nothing is in the beaker:
			say "The beaker is already empty." instead;

Carry out dumping it:
	if the noun is the beaker:
		if the purple potion is in the beaker:
			now the purple potion is nowhere;
		otherwise if the suspicious potion is in the beaker:
			now the suspicious potion is nowhere;
	otherwise:
		if the thing is in the beaker:
			if the purple potion is in the beaker:
				now the purple potion is nowhere;
			otherwise if the suspicious potion is in the beaker:
				now the suspicious potion is nowhere;

Report dumping it:
	if the noun is the purple potion or the noun is the suspicious potion:
		say "The [noun] fizzled away.";
	otherwise if the noun is the beaker:
		say "The potion fizzled away.";

Section 5 - Potion Use Implementation

Understand the command "use" as something new. Understand "use [something] on [something]" as using it on. Using it on is an action applying to two things.

Check using it on:
	if the noun is not the beaker:
		if the noun is not the purple potion and the noun is not the suspicious potion:
			say "You cannot use [noun] on [second noun]." instead;

Carry out using it on:
	if the noun is the purple potion:
		now the purple potion is nowhere;
		if the second noun is Stone Encased Man:
			move the red gem to the player;
	otherwise if the noun is the suspicious potion:
		now the suspicious potion is nowhere;

Report using it on:
	if the second noun is the Stone Encased Man:
		if the noun is not the beaker:
			if the Stone Encased Man is talked to:
				if the noun is the purple potion:
					say "The stone-dissolving potion turns the Stone Encased Man's body back to normal.[line break]Stone Freed Man: 'That seems to have done the trick. Thank you for helping me out! It looks like a valuable gem fell out of the rock, here you go.'[line break]You received the red gem.";
					now the printed name of the Stone Encased Man is "Stone Freed Man";
				otherwise:
					say "The suspicious potion had no effect.[line break]Stone Encased Man: '*sputters* Ah! It didn't work!'";
			otherwise:
				now Stone Encased Man is talked to;
				if the noun is the purple potion:
					say "The stone-dissolving potion turns the Stone Encased Man's body back to normal.[line break]Stone Freed Man: 'AH! What are you doing?! Wait… I'm free! Thank you! But I would've preferred if you had given me a warning first.'[line break]The red gem, freed from the stone encasing, falls to the ground. You pick up the red gem.";
					now the printed name of the Stone Encased Man is "Stone Freed Man";
				otherwise:
					say "The suspicious potion had no effect.[line break]Stone Encased Man: 'AH! What are you doing?! I… Were you trying to help me? I guess I should be grateful, but you've got the wrong potion. You need to pour the correct potion on me to release me. The recipe book on the table there should point you in the right direction.'";
		otherwise:
			if the Stone Encased Man is talked to:
				if the purple potion is in the beaker:
					say "The stone-dissolving potion turns the Stone Encased Man's body back to normal.[line break]Stone Freed Man: 'That seems to have done the trick. Thank you for helping me out! It looks like a valuable gem fell out of the rock, here you go.'[line break]You received the red gem.";
					now the printed name of the Stone Encased Man is "Stone Freed Man";
				otherwise:
					say "The suspicious potion had no effect.[line break]Stone Encased Man: '*sputters* Ah! It didn't work!'";
			otherwise:
				now Stone Encased Man is talked to;
				if the purple potion is in the beaker:
					say "The stone-dissolving potion turns the Stone Encased Man's body back to normal.[line break]Stone Freed Man: 'AH! What are you doing?! Wait… I'm free! Thank you! But I would've preferred if you had given me a warning first.'[line break]The red gem, freed from the stone encasing, falls to the ground. You pick up the red gem.";
					now the printed name of the Stone Encased Man is "Stone Freed Man";
				otherwise:
					say "The suspicious potion had no effect.[line break]Stone Encased Man: 'AH! What are you doing?! I… Were you trying to help me? I guess I should be grateful, but you've got the wrong potion. You need to pour the correct potion on me to release me. The recipe book on the table there should point you in the right direction.'";
	otherwise:
		say "Nothing happened.";
		
Understand the command "pour" as something new. Understand "pour [something] on [something]" as using it on.

Section 6 - Broom Flying Implementation

Understand the command "fly" as something new. Understand "fly on [something]" as flying on. Flying on is an action applying to one thing.

Understand the command "ride" as something new. Understand "ride on [something]" as flying on. 

Check flying on:
	if the noun is not the suspicious broom:
		say "You cannot fly on [noun]." instead;
	otherwise:
		if the vines are in Challenge Room 2 South:
			say "As you approach the man-eating vines, a shiver goes down your entire body. You decide against flying across." instead;

Carry out flying on:
	if the holder of the noun is in Challenge Room 2 South:
		if the vines are nowhere:
			now the holder of the noun is in Challenge Room 2 North;
	otherwise if the holder of the noun is in Challenge Room 2 North:
		now the holder of the noun is in Challenge Room 2 South;
	now the suspicious broom is seen;

Report flying on:
	if the holder of the noun is in Challenge Room 2 North:
		say "You have flown into the north side of the room.";
	otherwise if the holder of the noun is in Challenge Room 2 South:
		say "You have flown into the south side of the room.";
	otherwise:
		say "You cannot fly in here.";
		
Section 7 - Slingshot Implementation

Understand the command "shoot" as something new. Understand "shoot [something] with [something preferably held]" as shooting it with. Shooting it with is an action applying to two things.

Check shooting it with:
	if the second noun is not the slingshot:
		say "You cannot use [second noun] to shoot things with." instead;
		
Carry out shooting it with:
	if the noun is the suspended net:
		now the suspended net is nowhere;
		now the torn net is in Challenge Room 3;
		now stone slab is in Challenge Room 3;
	
Report shooting it with:
	if the noun is the suspended net:
		say "You picked up a nearby rock and shot [the noun]. [The noun] plummeted to the ground, along with a stone slab.";
	otherwise:
		say "You picked up a nearby rock and shot [the noun]. [The noun] does not appear to be damaged.";
		
Section 8 - Lift Potion Implementation

Lift status is a kind of value. The lift statuses are normal and capable.

A person has a lift status. The lift status of a player is normal.

Understand the command "drink" as something new. Understand "drink [something]" as drinking it. Drinking it is an action applying to one thing.

Check drinking it:
	if the noun is not the lifting potion:
		say "You don't think it's a good idea to drink this." instead;

Carry out drinking it:
	now the lift status of the player is capable;
	now the printed name of the lifting potion is "lifting potion";
	
Report drinking it:
	say "You are now exuding a strange magical aura. It feels as if you can now lift things with ease."

Section 9 - Lifting Implementation

Rock status is a kind of value. The rock statuses are none, first, multiple.

Rock staff status is a kind of value. The rock staff statuses are no attempt, tried, tried again, and successful.

A person has a rock status. The rock status of a player is none.

A person has a rock staff status. The rock staff status of a player is no attempt.

Understand the command "lift" as something new. Understand "lift [something]" as lifting it. Lifting it is an action applying to one thing. Understand "lift [something] with [something preferably held]" as lifting it with. Lifting it with is an action applying to two things.

Instead of taking the stack of boulders:
	if the rock status of the player is not none:
		if the lift status of the player is capable:
			say "The magical aura does not seem to have made lifting the stack of boulders any easier.";
		otherwise:
			say "Despite your best efforts, you are unable to lift the stack of boulders.";
		now the rock status of the player is multiple;
	otherwise:
		if the lift status of the player is capable:
			say "Despite consuming the lifting potion, the stack of boulders does not seem like it will move easily.";
		otherwise:
			say "The stack of boulders seems to be too heavy for you to lift by hand.";
		now the rock status of the player is first;

Carry out lifting it:
	if the noun is the stack of boulders:
		if the rock status of the player is none:
			now the rock status of the player is first;
		otherwise if the rock status of the player is first:
			now the rock status of the player is multiple;

Report lifting it:
	if the noun is the stack of boulders:
		if the rock status of the player is multiple:
			if the lift status of the player is capable:
				say "The magical aura does not seem to have made lifting the [noun] any easier.";
			otherwise:
				say "Despite your best efforts, you are unable to lift the [noun].";
		otherwise:
			if the lift status of the player is capable:
				say "Despite consuming the lifting potion, the [noun] does not seem like it will move easily.";
			otherwise:
				say "The [noun] seems to be too heavy for you to lift by hand.";
	otherwise:
		say "After lifting the [noun], you found nothing interesting. You decided to put the [noun] back down.";

Check lifting it with:
	if the second noun is not the magical staff:
		say "You cannot lift objects using the [second noun]." instead;
		
Carry out lifting it with:
	if the lift status of the player is capable:
		if the noun is the stack of boulders:
			now stone shard is in Challenge Room 3;
			if the rock staff status of the player is no attempt:
				now the rock staff status of the player is tried;
			otherwise if the rock staff status of the player is tried:
				now the rock staff status of the player is successful;
		otherwise:
			if the rock staff status of the player is no attempt:
				now the rock staff status of the player is tried;
			otherwise if the rock staff status of the player is tried:
				now the rock staff status of the player is tried again;
			
Report lifting it with:
	if the lift status of the player is capable:
		if the rock staff status of the player is tried:
			if the noun is the stack of boulders:
				say "You channeled your newfound aura into the staff. To your surprise, the [noun] began to float in the air. Behind the [noun] was a stone shard. You moved the [noun] to the side, allowing access to the stone shard.";
			otherwise:
				say "You channeled your newfound aura into the staff. To your surprise, the [noun] began to float in the air. However you found nothing interesting. You decided to put the [noun] back down.";
		otherwise if the rock staff status of the player is tried again:
			if the noun is the stack of boulders:
				say "The [noun] began to float in the air. Behind the [noun] was a stone shard. You moved the [noun] to the side, allowing access to the stone shard.";
			otherwise:
				say "After lifting the [noun] with the [second noun], you found nothing interesting. You decided to put the [noun] back down.";
		otherwise:
			say "After lifting the [noun] with the [second noun], you found nothing interesting. You decided to put the [noun] back down.";
	otherwise:
		say "Nothing happened.";
		
Section 10 - Wall Construction Implementation

An up wall status is a kind of value. The up wall statuses are upPresent and upAbsent.

A down wall status is a kind of value. The down wall statuses are downPresent and downAbsent.

A left wall status is a kind of value. The left wall statuses are leftPresent and leftAbsent.

A right wall status is a kind of value. The right wall statuses are rightPresent and rightAbsent.

The broken wall has an up wall status. The up wall status of the broken wall is upAbsent.

The broken wall has an down wall status. The down wall status of the broken wall is downAbsent.

The broken wall has an left wall status. The left wall status of the broken wall is leftAbsent.

The broken wall has an right wall status. The right wall status of the broken wall is rightAbsent.

Understand the command "place" as something new. Understand "place [something preferably held] in [something]" as placing it in. Placing it in is an action applying to two things. Understand "place [something preferably held] into [something]" as placing it in.

Check placing it in:
	if the second noun is the broken wall:
		if the noun is not stone shard and the noun is not jagged stone and the noun is not broken stone and the noun is not stone slab:
			say "The [noun] does not seem to fit in the broken wall." instead;
	otherwise:
		say "There is no space to place the [noun] on the [second noun]." instead;

Carry out placing it in:
	if the second noun is the broken wall:
		if the noun is stone shard:
			now the up wall status of the broken wall is upPresent;
			now stone shard is nowhere;
		otherwise if the noun is jagged stone:
			now the down wall status of the broken wall is downPresent;
			now jagged stone is nowhere;
		otherwise if the noun is broken stone:
			now the left wall status of the broken wall is leftPresent;
			now broken stone is nowhere;
		otherwise if the noun is stone slab:
			now the right wall status of the broken wall is rightPresent;
			now stone slab is nowhere;
		if the up wall status of the broken wall is upPresent and the down wall status of the broken wall is downPresent and the left wall status of the broken wall is leftPresent and the right wall status of the broken wall is rightPresent:
			now the blue pedestal is in Challenge Room 3.
		
Report placing it in:
	if the second noun is the broken wall:
		say "The [noun] seemed to fit perfectly into the broken wall. You hear a faint clicking sound.";
		if the up wall status of the broken wall is upPresent and the down wall status of the broken wall is downPresent and the left wall status of the broken wall is leftPresent and the right wall status of the broken wall is rightPresent:
			say "With that last piece, you hear a strange sound behind you. You see a pedestal rising up from the ground, holding a blue gem.";

Section 11 - Magic Glasses and Invisible Key

KeyVisibility is a kind of value. The KeyVisibilities are keyVisible and keyInvisible.

The invisible key has a KeyVisibility. The KeyVisibility of the invisible key is keyInvisible.

BeenWorn is a kind of value. The BeenWorns are hasBeenWorn and hasNotBeenWorn.

A person has a beenWorn. The BeenWorn of a person is hasNotBeenWorn.

Every turn:
	if the player is wearing the pair of magic glasses:
		now the KeyVisibility of the invisible key is keyVisible;
		if the player does not have the invisible key:
			now the invisible key is on the old table;
	otherwise:
		now the KeyVisibility of the invisible key is keyInvisible;
		if the player does not have the invisible key:
			now the invisible key is nowhere;

After wearing the pair of magic glasses:
	if the player is in Challenge Room 3:
		if the player does not have the invisible key:
			say "There is a strange aura coming from these glasses. When you put them on, a key appears on the old table.";
	now the BeenWorn of the player is hasNotBeenWorn.
			
After taking off the pair of magic glasses:
	if the player is in Challenge Room 3:
		if the player does not have the invisible key:
			say "The key seems to have disappeared from sight."
			
Section 12 - Help Menu

Understand the command "help" as something new. Understand "help" as helping. Helping is an action applying to nothing.

Report helping:
	say "Here are some commands to get you started.[line break][bold type]go[roman type] [bracket]cardinal direction[close bracket] - Allows you to travel to a room in the specified cardinal direction.[line break][bold type]look[roman type] - Allows you to obtain a description of the room.[line break][bold type]look[roman type] at [bracket]something[close bracket] - Allows you to examine something more closely.[line break][bold type]take[roman type] [bracket]something[close bracket] - Allows you to put an item into your inventory.[line break][bold type]inventory[roman type] - Allows you to view the items in your possession.[line break][bold type]talk[roman type] to [bracket]someone[close bracket] - Allows you to speak with a non-playable character.[line break][line break]There are other supported actions that you will come across during the game. Try out anything that comes to mind! To bring this message back up in the future, type [bold type]help[roman type].";

