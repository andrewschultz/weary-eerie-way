Version 1/201002 of Weary Eerie Way Globals by Andrew Schultz begins here.

"Global stuff for Weary Eerie Way."

volume definitions and such

volume room stuff

a room can be first-half, second-half, or nexus. a room is usually first-half.

definition: a direction (called d) is viable:
	if the room d of location of player is nowhere, no;
	yes;

to say psgs:
	say "[if number of viable directions is 0]There aren't any passages out. There should be, but there aren't[else if number of viable directions is 1]You can only go [dir-room-list][else]Passages lead [dir-room-list][end if]"

to say dir-room-list:
	now show-rooms is true;
	say "[list of viable directions]";
	now show-rooms is false;

show-rooms is a truth state that varies.

after printing the name of a direction (called d) when show-rooms is true:
	if the room d of location of player is visited, say " to [the room d of location of player]"

check going nowhere (this is the generic directional bounding rule):
	if noun is not cardinal, say "Only the cardinal directions (north, south, east and west) are used in [this-game]." instead;
	if location of player is first-half:
		say "[one of]Though the way [noun] is pretty clearly blocked, you walk up press against the wall briefly. Then you have a hard time pulling away. You realize the walls must be coated with [uck]. Best stick (ha) to going [dir-room-list][or]No, [noun] would run into a wall covered with [uck]. Looks like [dir-room-list] would work better[stopping].";
		move uck stay stuck backdrop to all first-half rooms;
		the rule succeeds;
	if location of player is second-half:
		say "[one of]Though the way [noun] is pretty clearly blocked, you walk up press against the wall briefly. You hear a wailing. 'Who dares come near the [slain]?' Somehow, you doubt much will turn up by the [slain]. Better to go [dir-room-list][or]The wailing from the [slain] starts up again to the [noun]. It seems like there's easier progress [dir-room-list][stopping].";
		move lane say slain backdrop to all second-half rooms;
		the rule succeeds;
	say "You can only go [dir-room-list] here. I should have a more clever message, but I don't." instead;

the description of a room is usually "[psgs]."

a room can be wested.
a room can be southed.
a room can be easted.
a room can be northed.

volume parser stuff

[most is covered in the Pig Latin globals]

section What Do You Want to X

Include (-
Replace LanguageVerb;
-) after "Definitions.i6t".

Include (-
[ LanguageVerb i;
	switch (i) {
	'i//','inv','inventory': print "take inventory";
	'l//':   print "look";
	'x//':   print "examine";
	'z//':   print "wait";
	'about':  print "see info about the game with ABOUT";
	'credits': print "see the CREDITS";
	'rm': print "toggle room name lengths";
	'r//': "reach to or read";
	't//', 'talk': print "talk to";
	'verb', 'verbs', 'v//':  print "see useful verbs";
	'xyzzy', 'plugh', 'yoho': print "say a silly spell";
	default: rfalse;
    }
    rtrue;
];
-) after "Language.i6t".


volume rules

volume global variables

the maximum score is 7.

volume definitions and options

chapter definitions

to decide whether always-no: decide no.
to decide whether always-yes: decide yes.

to decide which number is cull-score:
	decide on (boolval of whether or not player has Steel) + (boolval of whether or not player has Shard);

chapter options

opt-short-names is a truth state that varies.

Weary Eerie Way Globals ends here.

---- DOCUMENTATION ----
