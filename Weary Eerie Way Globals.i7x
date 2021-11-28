Version 1/201002 of Weary Eerie Way Globals by Andrew Schultz begins here.

"Global stuff for Weary Eerie Way."

volume definitions and such

a room has text called shorttext.

for printing the name of a room (called rm) when opt-short-names is true and shorttext of rm is not empty and rm is visited: say "[shorttext of the item described]".

volume room stuff

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

check going nowhere:
	if noun is not cardinal, say "Only the cardinal directions (north, south, east and west) are used in [this-game]." instead;
	say "[one of]A voice booms 'Steer [']Ere! Stay!' as you try[or]The Steer-[']Ere-Stay once again pushes you back from[stopping] going [noun]. You can only go [dir-room-list]." instead;

the description of a room is usually "[psgs]."

a room can be wested.
a room can be southed.
a room can be easted.
a room can be northed.

volume parser stuff

[most is covered in the Pig Latin globals]

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
