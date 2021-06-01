"NPC Dialogue Tutorialization" by Alexander Garcia

[ Gameplay ]

Use brief room descriptions.

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

[ Challenge Room 1 ]

Challenge Room 1 is a room. NPC is a man in Challenge Room 1. A person can be talked to or not talked to. A person is usually not talked to. A person has a number called timesTalkedToAfterGettingRedGem.

The description of Challenge Room 1 is "You find yourself in a strange room. There is an open archway on the north side of the room, which seems to lead to an open area."

In Challenge Room 1 is a supporter called the experimentation table. On the experimentation table is a container called the potion tray. On the experimentation table is a thing called the recipe book. On the experimentation table is a container called a beaker. The carrying capacity of the beaker is 1. In Challenge Room 1 is a thing called the broken vial. In Challenge Room 1 is a thing called the stone encasing.

The red vial is a thing. The yellow vial is a thing. The blue vial is a thing. The white vial is a thing. The black vial is a thing. The clear vial is a thing.

In the potion tray is the red vial, the yellow vial, the blue vial, the white vial, the black vial, the clear vial. 

The purple potion is a thing. The purple potion is nowhere. The suspicious potion is a thing. The suspicious potion is nowhere. The red gem is a thing. The red gem is nowhere.

Rule for printing the locale description of Challenge Room 1:
	say "In this room, you see a table with a tray on it. Inside the tray are vials containing red, yellow, blue, black, white, and clear potions. Also on the table is a beaker and a recipe book. To the right is a stone encasing with a broken vial on the floor near it."

The description of the potion tray is "Some vials containing unknown liquids in a tray. Reminds you of potions class and how you almost failed because the teacher was a complete--";

The description of the broken vial is "I can probably slip on this. Better avoid it for now."

The description of the recipe book is 
"The recipe book contains several recipes scribbled into it. [line break]
Cure grey hair = black + white [line break]
Madness potion = red + black [line break]
Cure stone encasing = blue + red [line break]
Become invisible = yellow + blue [line break]
??? = clear + anything [line break]
Injury cure = black + blue";

The description of the beaker is "A glass beaker used to safely mix potions. Magically enhanced to withstand whatever dangerous substances you may pour into it."

The description of the stone encasing is "There is a red gem embedded in the stone. Wait, there’s a sleeping head coming out of the stone."

The description of the red gem is "The gem that you need to obtain from this room."

North of Challenge Room 1 is a room called Exit Room.

[ Challenge Room 1 NPC ]

Instead of talking to NPC:
	if player has red gem:
		if timesTalkedToAfterGettingRedGem of NPC is 0:
			say "NPC: Thanks again for freeing me... Go get the rest of the gems so you can get out of here!";
		otherwise:
			say "NPC: Why are you still here? There's nothing left to do here now that you've got the gem.";
		increment timesTalkedToAfterGettingRedGem of NPC;
	otherwise if NPC is talked to:
		if suspicious potion is in beaker:
			say "NPC: No, no, no! It's not the correct potion! The right one has a… smell to it.";
		otherwise if purple potion is in beaker:
			say "NPC: I think you've done it! That potion smells awful… Now hurry up and pour it on me so I can be free!";
		otherwise if the book is seen:
			say "Well, did you find the correct recipe?";
		otherwise:
			say "NPC: Didn't you hear me clearly? Look over there at the table. Do you see those vials? Mix the correct ones together into a purple potion and pour it over me!";
	otherwise:
		if suspicious potion is in beaker:
			say "NPC: Urg, ah! Oh hey, didn't notice you there. Can you help me out here? I tried to make a new potion and I've gotten my entire body turned to stone! Luckily, it hasn't turned my head to stone. Looks like you've already mixed some of the vials together to make a potion. If you can make a purple potion and pour it on me, it should turn me back to normal! The recipe book right there should tell you how!";
		otherwise if purple potion is in beaker:
			say "NPC: Urg, ah! Oh hey, didn't notice you there. Can you help me out here? I tried to make a new potion and I've gotten my entire body turned to stone! Luckily, it hasn't turned my head to stone… Wait, you've got the purple potion! Quick -- pour it on me!";
		otherwise if the book is seen:
			say "Urg, ah! Oh hey, didn't notice you there. Can you help me out here? I tried to make a new potion and I've gotten my entire body turned to stone! Luckily, it hasn't turned my head to stone. You see those vials on the table there? If you can make a purple potion and pour it on me, it should turn me back to normal! I don't remember how to make it, but the recipe book on the table should tell you how. I'd reckon you've already read the book so hurry up!";
		otherwise:
			say "NPC: Urg, ah! Oh hey, didn't notice you there. Can you help me out here? I tried to make a new potion and I've gotten my entire body turned to stone! Luckily, it hasn't turned my head to stone. You see those vials on the table there? If you can make a purple potion and pour it on me, it should turn me back to normal! I don't remember how to make it, but the recipe book on the table should tell you how.";
	now NPC is talked to;

The formidable gate is north of the Exit Room. The formidable gate is a door. The formidable gate is lockable and locked.

North of the formidable gate is a room called Last Room.

[ Challenge Room 2 ]

West of the Exit Room is a room called Challenge Room 2 South.  Janitor is a man in Challenge Room 2 South. A person can be talked to or not talked to. A person is usually not talked to. A person has a number called timesTalkedToAfterGettingYellowGem.

North of Challenge Room 2 South is a room called Challenge Room 2 North.

The northern trench is a thing. The northern trench is in Challenge Room 2 North.

The southern trench is a thing. The southern trench is in Challenge Room 2 South.

In Challenge Room 2 North is a supporter called the yellow pedestal. On the yellow pedestal is a thing called the yellow gem.

East of the Exit Room is a room called Challenge Room 3.

West of Challenge Room 2 South is a room called Supply Closet.

In Supply Closet is a thing called the suspicious broom.

The wall torch is a thing. The man-eating vines is a thing.

In Challenge Room 2 South is the wall torch, the vines.

The description of the yellow gem is "[if yellow gem is on pedestal]The gem that you need from this room. It’s on a nice looking pedestal. You wonder if you could also take the pedestal with you.[otherwise]The yellow gem that you need to escape. It's vibrancy reminds you of the sun."

The description of the pedestal is "It's very detailed and covered in gold. You wonder if you could take the pedestal with you."

The description of the man-eating vines is "They’re vines and they eat men. A monstrosity created in the name of science (and probably some ugly deity)."

The description of the wall torch is "Your eyes are drawn to its flames. It excites you with the possibility of burning. You look away before you start manically laughing."

The description of the suspicious broom is "On the broom is a metal tag. It reads, 'Nimbus 2000 (property of Hogwarts).' It’s an older model, so nobody will miss it if you take it."

The description of Challenge Room 2 South is "You enter a damp and smelly room; the air suffocates you. To the east is an open doorway that leads to an open area. To the west is a door to what looks like a closet."

Rule for printing the locale description of Challenge Room 2 South:
	if the man-eating vines are in Challenge Room 2 South:
		say "To the north, there are man-eating vines that block a trench. There appears to be something shiny on the other side. The walls are lined with torches for light. And in the middle of the room stands a janitor feeding raw chicken to the vines.";
	otherwise:
		say "There is a trench to the north. There appears to be something shiny on the other side. The walls are lined with torches for light. And in the middle of the room stands a janitor cleaning up the mess left by the vines.";

The description of Challenge Room 2 North is "The air seems to be fresher here."

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

[ Challenge Room 2 NPC ]

Instead of talking to Janitor:
	if player has red gem:
		if timesTalkedToAfterGettingYellowGem of Janitor is 0:
			say "Janitor: What are you still doing here? The vines are gone and you got your gem! Get out of here and get on to the next room!”;
		otherwise:
			say "Janitor: Are you deaf?! I said it’s time for you to move on to the next room!”;
		increment timesTalkedToAfterGettingYellowGem of Janitor;
	otherwise if Janitor is talked to:
		if the man-eating vines are not in Challenge Room 2 South:
			if Supply Closet is visited:
				if player has the suspicious broom:
					say "Janitor: That’s a Nimbus 2000 (property of Hogwarts) you found! You should be able fly across the gap no problem now that the vines are gone!”;
				otherwise:
					say "Janitor: Well, the vines are dead, but I don’t see a way across. Did you find anything in the closet that would be helpful?”;
			otherwise:
				say "Janitor: Well, the vines are dead, but I don’t see a way across. Maybe check in the closet?”;
		otherwise if player has the wall torch:
			say "Janitor: Be careful around them with that torch you’re holding; they’re really flammable, you see. One wrong move and you could burn them down along with yourself.”;
		otherwise:
			say "Janitor: Them vines are coated with oil, so if you ever do get caught, just burn it down! Just don’t burn yourself in the process, okay?”;
	otherwise:
		if the man-eating vines are not in Challenge Room 2 South:
			if Supply Closet is visited:
				if player has the suspicious broom:
					say "Janitor: Hey, how are you? You shouldn’t be wondering around here. Well, not that the vines are gone, I guess you can look around if you want to. Looks like there’s a trench between us and that orb over there. Maybe you can use that broom to get over it.”;
				otherwise:
					say "Janitor: Hey, how are you? You shouldn’t be wondering around here. Well, not that the vines are gone, I guess you can look around if you want to. Looks like there’s a trench between us and that orb over there. I saw you going through the closet. Did you find anything that would be helpful?”;
			otherwise:
				say "Janitor: Hey, how are you? You shouldn’t be wondering around here. Well, not that the vines are gone, I guess you can look around if you want to. Looks like there’s a trench between us and that orb over there. Maybe there’s something useful in the closet that can help you.”;
		otherwise if player has the wall torch:
			say "Janitor: Hey, how are you? You shouldn’t be wondering around here. You see those vines? Those be man-eating vines. Nasty little things; I have to keep them happy with some meat from time to time and let me tell you, they make a horrible mess. Be careful around them if you ever see one out in the jungle. Be careful around them with that torch you’re holding; they’re really flammable, you see. One wrong move and you could burn them down along with yourself.”;
		otherwise:
			say “Janitor: Hey, how are you? You shouldn’t be wondering around here. You see those vines? Those be man-eating vines. Nasty little things; I have to keep them happy with some meat from time to time and let me tell you, they make a horrible mess. Be careful around them if you ever see one out in the jungle. Them vines are coated with oil, so if you ever do get caught, just burn it down! Just don’t burn yourself in the process, okay?”;
	now Janitor is talked to;

[ Challenge Room 3]

Wall Piece Left is a thing. Wall Piece Right is a thing. Wall Piece Up is a thing. Wall Piece Down is a thing. The invisible key is a thing. The old chest is a container. The old chest is lockable and locked. The matching key of old chest is the invisible key. The pair of magic glasses is a thing. The pair of magic glasses is wearable. The old table is a supporter. The rubber band is a thing. The rubber band is on the old table. The invisible key is nowhere. The pair of magic glasses is on the old table. The lifting potion is a thing. The lifting potion is on the old table. The Y-shaped wooden stick is a thing. The stack of boulders is a thing. Wall Piece Down is on the old table. Wall Piece Left is in the old chest. The magical staff is a thing. The slingshot is a thing. The slingshot is nowhere. Wall Piece Right is nowhere. Wall Piece Up is nowhere. The suspended net is a thing. The torn net is a thing. The torn net is nowhere. The broken wall is a thing. The blue pedestal is a thing. The blue pedestal is nowhere. The blue gem is a thing. The blue gem is on the blue pedestal.

In Challenge Room 3 is the old table, the old chest, stack of boulders, Y-shaped wooden stick, net, magical staff, broken wall.

[ ignition implementation ]

Understand "ignite [something] with [something preferably held]" as igniting it with. Igniting it with is an action applying to two things. 
Understand the command "burn" as something new. Understand "burn [something] with [something preferably held]" as igniting it with.

Carry out igniting it with:
	now the noun is nowhere.
	
Report igniting it with:
	say "Janitor: Hey, what are you doing?! Get out of there before you get burned as well!”;
	say "The [noun] has been burnt to a crisp."

Check igniting it with:
	if the second noun is not the torch:
		say "You can't burn something with [second noun]";
	if the noun is not the man-eating vines:
		say "[noun] is not flammable.";
		
[crafting implementation ]

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
	now the second noun is nowhere.

Report combining it with:
	say "You now have [an item built]."
	
[ brewing implementation ]

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
	say "You now have [a potion]."

[ dumping implementation ]

Understand the command "dump" as something new. Understand "dump [something]" as dumping it. Dumping it is an action applying to a thing.

Check dumping it:
	if the noun is not in a container:
		say "The [the noun] can't be dumped.";
	otherwise if the noun is not the purple potion and the noun is not the suspicious potion:
		say "The [the noun] can't be dumped.";

Carry out dumping it:
	if the thing is in the beaker:
		if the purple potion is in the beaker:
			now the purple potion is nowhere;
		otherwise if the suspicious potion is in the beaker:
			now the suspicious potion is nowhere;

Report dumping it:
	say "The [noun] fizzled away."

[ potion use implementation ]

Understand the command "use" as something new. Understand "use [something] on [something]" as using it on. Using it on is an action applying to two things.

Check using it on:
	if the noun is not the purple potion and the noun is not the suspicious potion:
		say "You cannot use [noun] on [second noun].";

Carry out using it on:
	if the noun is the purple potion:
		now the purple potion is nowhere;
		if the second noun is the stone encasing:
			now the stone encasing is nowhere;
			move the red gem to the player;
	otherwise if the noun is the suspicious potion:
		now the suspicious potion is nowhere;

Report using it on:
	if the second noun is the stone encasing:
		if the NPC is talked to:
			if the noun is the purple potion:
				say "NPC: That seems to have done the trick. Thank you for helping me out! It looks like the gem you need fell out of the rock, here you go.";
			otherwise:
				say "NPC: *sputters* Ah! It didn't work!";
		otherwise:
			if the noun is the purple potion:
				say "NPC: AH! What are you doing?! Wait… I'm free! Thank you! But I would've preferred if you had given me a warning first.";
			otherwise:
				say "NPC: AH! What are you doing?! I… Were you trying to help me? I guess I should be grateful, but you've got the wrong potion. You need to pour a purple potion on me to release me. The recipe book on the table there should point you in the right direction.";
	otherwise:
		say "Nothing happened.";
		
[ broom flying implementation ]

Understand the command "fly" as something new. Understand "fly on [something]" as flying on. Flying on is an action applying to one thing.

Understand the command "ride" as something new. Understand "ride on [something]" as flying on. 

Check flying on:
	if the noun is not the suspicious broom:
		say "You cannot fly on [noun].";

Carry out flying on:
	if the holder of the noun is in Challenge Room 2 South:
		if the vines are nowhere:
			now the holder of the noun is in Challenge Room 2 North;
	otherwise if the holder of the noun is in Challenge Room 2 North:
		now the holder of the noun is in Challenge Room 2 South;

Report flying on:
	if the holder of the noun is in Challenge Room 2 North:
		if the vines are nowhere:
			say "You have flown into the north side of the room.";
		otherwise:
			say "As you approach the man-eating vines, a shiver goes down your entire body. You decide against flying across.";
	otherwise if the holder of the noun is in Challenge Room 2 South:
		say "You have flown into the south side of the room.";
	otherwise:
		say "You cannot fly in here.";
		
[ slingshot implementation ]

Understand the command "shoot" as something new. Understand "shoot [something] with [something preferably held]" as shooting it with. Shooting it with is an action applying to two things.

Check shooting it with:
	if the second noun is not the slingshot:
		say "You cannot use [second noun] to shoot things with."
		
Carry out shooting it with:
	if the noun is the suspended net:
		now the suspended net is nowhere;
		now the torn net is in Challenge Room 3;
		now Wall Piece Right is in Challenge Room 3;
	
Report shooting it with:
	if the noun is the suspended net:
		say "You picked up a nearby rock and shot [the noun]. [The noun] plummeted to the ground, along with Wall Piece Right.";
	otherwise:
		say "You picked up a nearby rock and shot [the noun]. [The noun] does not appear to be damaged.";
		
[ lift potion implementation ]

Lift status is a kind of value. The lift statuses are normal and capable.

A person has a lift status. The lift status of a player is normal.

Understand the command "drink" as something new. Understand "drink [something]" as drinking it. Drinking it is an action applying to one thing.

Check drinking it:
	if the noun is not the lifting potion:
		say "You don't think it's a good idea to drink this."

Carry out drinking it:
	now the lift status of the player is capable;
	
Report drinking it:
	say "You are now exuding a strange magical aura. It feels as if you can now lift things with ease."

[ lifting implementation ]

Rock status is a kind of value. The rock statuses are none, first, multiple.

Rock staff status is a kind of value. The rock staff statuses are no attempt, tried, tried again, and successful.

A person has a rock status. The rock status of a player is none.

A person has a rock staff status. The rock staff status of a player is no attempt.

Understand the command "lift" as something new. Understand "lift [something]" as lifting it. Lifting it is an action applying to one thing. Understand "lift [something] with [something preferably held]" as lifting it with. Lifting it with is an action applying to two things.

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
		say "You cannot lift objects using the [second noun]";
		
Carry out lifting it with:
	if the lift status of the player is capable:
		if the noun is the stack of boulders:
			now Wall Piece Up is in Challenge Room 3;
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
				say "You channeled your newfound aura into the staff. To your surprise, the [noun] began to float in the air. Behind the [noun] was Wall Piece Up. You moved the [noun] to the side, allowing access to Wall Piece Up.";
			otherwise:
				say "You channeled your newfound aura into the staff. To your surprise, the [noun] began to float in the air. However you found nothing interesting. You decided to put the [noun] back down.";
		otherwise if the rock staff status of the player is tried again:
			if the noun is the stack of boulders:
				say "The [noun] began to float in the air. Behind the [noun] was Wall Piece Up. You moved the [noun] to the side, allowing access to Wall Piece Up.";
			otherwise:
				say "After lifting the [noun] with the [second noun], you found nothing interesting. You decided to put the [noun] back down.";
		otherwise:
			say "After lifting the [noun] with the [second noun], you found nothing interesting. You decided to put the [noun] back down.";
	otherwise:
		say "Nothing happened.";
		
[ wall pieces construction implementation ]

An up wall status is a kind of value. The up wall statuses are upPresent and upAbsent.

A down wall status is a kind of value. The down wall statuses are downPresent and downAbsent.

A left wall status is a kind of value. The left wall statuses are leftPresent and leftAbsent.

A right wall status is a kind of value. The right wall statuses are rightPresent and rightAbsent.

The broken wall has an up wall status. The up wall status of the broken wall is upAbsent.

The broken wall has an down wall status. The down wall status of the broken wall is downAbsent.

The broken wall has an left wall status. The left wall status of the broken wall is leftAbsent.

The broken wall has an right wall status. The right wall status of the broken wall is rightAbsent.

Understand the command "place" as something new. Understand "place [something preferably held] in [something]" as placing it in. Placing it in is an action applying to two things.

Check placing it in:
	if the second noun is the broken wall:
		if the noun is not Wall Piece Up and the noun is not Wall Piece Down and the noun is not Wall Piece Left and the noun is not Wall Piece Right:
			say "The [noun] does not seem to fit in the broken wall.";
	otherwise:
		say "There is no space to place the [noun] on the [second noun]";

Carry out placing it in:
	if the noun is Wall Piece Up:
		now the up wall status of the broken wall is upPresent;
		now Wall Piece Up is nowhere;
	otherwise if the noun is Wall Piece Down:
		now the down wall status of the broken wall is downPresent;
		now Wall Piece Down is nowhere;
	otherwise if the noun is Wall Piece Left:
		now the left wall status of the broken wall is leftPresent;
		now Wall Piece Left is nowhere;
	otherwise if the noun is Wall Piece Right:
		now the right wall status of the broken wall is rightPresent;
		now Wall Piece Right is nowhere;
	if the up wall status of the broken wall is upPresent and the down wall status of the broken wall is downPresent and the left wall status of the broken wall is leftPresent and the right wall status of the broken wall is rightPresent:
		now the blue pedestal is in Challenge Room 3.
		
Report placing it in:
	say "[noun] seemed to fit perfectly into the broken wall. You hear a faint clicking sound.";
	if the up wall status of the broken wall is upPresent and the down wall status of the broken wall is downPresent and the left wall status of the broken wall is leftPresent and the right wall status of the broken wall is rightPresent:
		say "With that last piece, you hear a strange sound behind you. You see a pedestal rising up from the ground, holding a blue gem.";
		
[ invisible key and magic glasses]

KeyVisibility is a kind of value. The KeyVisibilities are keyVisible and keyInvisible.

The invisible key has a KeyVisibility. The KeyVisibility of the invisible key is keyInvisible.

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
			say "There now appears to be a key on the old table."
			
After taking off the pair of magic glasses:
	if the player is in Challenge Room 3:
		if the player does not have the invisible key:
			say "The key seems to have disappeared from sight."
	

[ misc ]

[
After unlocking the old chest:
	if the old chest is closed:
		now the old chest is open;
]

[ end game? ]

Every turn:
	if the player is in the Last Room:
		end the story;
	if the player has the red gem and the player has the blue gem and the player has the yellow gem:
		now the formidable gate is unlocked;
	otherwise:
		now the formidable gate is locked;