"NPC Dialogue Tutorialization" by Alexander Garcia

Challenge Room 1 is a room.

In Challenge Room 1 is a supporter called the experimentation table. On the experimentation table is a container called the potion tray. On the experimentation table is a thing called the recipe book. On the experimentation table is a container called a beaker. The carrying capacity of the beaker is 1. In Challenge Room 1 is a thing called the broken vial. In Challenge Room 1 is a thing called the stone encasing.

The red vial is a thing. The yellow vial is a thing. The blue vial is a thing. The white vial is a thing. The black vial is a thing. The clear vial is a thing.

In the potion tray is the red vial, the yellow vial, the blue vial, the white vial, the black vial, the clear vial. 

The purple potion is a thing. The purple potion is nowhere. The suspicious potion is a thing. The suspicious potion is nowhere. The red gem is a thing. The red gem is nowhere.

North of Challenge Room 1 is a room called Exit Room.

West of the Exit Room is a room called Challenge Room 2 South.

Challenge Room 2 North is a room.

The trench is north of Challenge Room 2 South and south of Challenge Room 2 North. The trench is a door.

The trench is lockable and locked. 

In Challenge Room 2 North is a supporter called the yellow pedestal. On the yellow pedestal is a thing called the yellow gem.

East of the Exit Room is a room called Challenge Room 3.

West of Challenge Room 2 is a room called Supply Closet.

In Supply Closet is a thing called the suspicious broom.

The wall torch is a thing. The man-eating vines is a thing.

In Challenge Room 2 is the wall torch, the vines.

Wall Piece Left is a thing. Wall Piece Right is a thing. Wall Piece Up is a thing. Wall Piece Down is a thing. The invisible key is a thing. The locked chest is a container. The locked chest is lockable and locked. The matching key of locked chest is the invisible key. The magic magnifying glass is a thing. The old table is a supporter. The rubber band is a thing. The rubber band is on the old table. The invisible key is on the old table. The lifting potion is a thing. The lifting potion is on the old table. The Y-shaped wooden stick is a thing. The stack of pebbles is a thing. Wall Piece Down is on the old table. Wall Piece Left is in the locked chest. The magical staff is a thing. The slingshot is a thing. The slingshot is nowhere.

In Challenge Room 3 is the old table, the locked chest, Wall Piece Right, Wall Piece Up, stack of pebbles, Y-shaped wooden stick, magical staff.

[ ignition implementation ]

Understand "ignite [something] with [something preferably held]" as igniting it with. Igniting it with is an action applying to two things. 
Understand the command "burn" as something new. Understand "burn [something] with [something preferably held]" as igniting it with.

Carry out igniting it with:
	now the noun is nowhere.
	
Report igniting it with:
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
			now the red gem is in Challenge Room 1;
	otherwise if the noun is the suspicious potion:
		now the suspicious potion is nowhere;

Report using it on:	
	if the noun is the purple potion and the second noun is the stone encasing:
		say "The stone encasing fizzled away. A red gem is left in its place.";
	otherwise:
		say "Nothing happened.";
		
[ broom flying implementation ]

Understand the command "fly" as something new. Understand "fly on [something]" as flying on. Flying on is an action applying to one thing.

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
		