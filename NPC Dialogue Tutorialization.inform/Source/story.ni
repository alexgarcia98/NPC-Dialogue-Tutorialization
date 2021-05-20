"NPC Dialogue Tutorialization" by Alexander Garcia

Challenge Room 1 is a room.

In Challenge Room 1 is a supporter called the experimentation table. On the experimentation table is a container called the potion tray. On the experimentation table is a thing called the recipe book. On the experimentation table is a container called a beaker. In Challenge Room 1 is a thing called the broken vial.

In the potion tray is a thing called the red vial. In the potion tray is a thing called the yellow vial. In the potion tray is a thing called the blue vial. In the potion tray is a thing called the white vial. In the potion tray is a thing called the black vial. In the potion tray is a thing called the clear vial. 

North of Challenge Room 1 is a room called Exit Room.

West of the Exit Room is a room called Challenge Room 2.

East of the Exit Room is a room called Challenge Room 3.

Inside from Challenge Room 2 is a room called Supply Closet.

In Supply Closet is a thing called the suspicious broom.

The wall torch is a thing. The man-eating vines is a thing.

In Challenge Room 2 is the wall torch, the vines.

Wall Piece Left is a thing. Wall Piece Right is a thing. Wall Piece Up is a thing. Wall Piece Down is a thing. The invisible key is a thing. The locked chest is a container. The locked chest is lockable and locked. The matching key of locked chest is the invisible key. The magic magnifying glass is a thing. The old table is a supporter. The rubber band is a thing. The rubber band is on the old table. The invisible key is on the old table. The lifting potion is a thing. The lifting potion is on the old table. The Y-shaped wooden stick is a thing. The stack of pebbles is a thing. Wall Piece Down is on the old table. Wall Piece Left is in the locked chest. The magical staff is a thing. The slingshot is a thing. The slingshot is nowhere.

In Challenge Room 3 is the old table, the locked chest, Wall Piece Right, Wall Piece Up, stack of pebbles, Y-shaped wooden stick, magical staff.

Understand "ignite [something] with [something preferably held]" as igniting it with.

Igniting it with is an action applying to two things.

Carry out igniting it with:
	now the noun is nowhere.
	
Report igniting it with:
	say "The [the noun] has been burnt to a crisp."

Check igniting it with:
	if the noun is not the man-eating vines:
		say "[The noun] is not flammable."
		

Understand "combine [something] with [something]" as combining it with. Combining it with is an action applying to two carried things. Understand the command "connect" as "combine".

Understand the command "attach" as something new. Understand "attach [something] to [something]" as combining it with.

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


	