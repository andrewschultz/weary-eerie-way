Version 1/201002 of Weary Eerie Way Globals by Andrew Schultz begins here.

"Global stuff for Weary Eerie Way."

volume definitions and such

a room has text called shorttext.

for printing the name of a room (called rm) when opt-short-names is true and shorttext of rm is not empty and rm is visited: say "[shorttext of the item described]".

volume room stuff

definition: a direction (called d) is viable:
	if the room d of location of player is nowhere, no;
	yes;

to say psgs: say "[if number of viable directions is 0]There aren't any passages out. There should be, but there aren't[else if number of viable directions is 1]You can only go [random viable direction][else]Passages lead [list of viable directions][end if]"

check going nowhere:
	say "You can only go [list of viable directions]." instead;

the description of a room is usually "[psgs]."

a room can be wested. a room can be southed.

volume stubs

to moot (th - a thing): move th to Binnin Bay.

definition: a thing (called th) is moot:
	if th is in Binnin Bay, yes;
	no;

volume parser stuff

rule for printing a parser error when the latest parser error is the not a verb i recognise error:
	say "I didn't recognize that. [this-game] does not have an extensive verb list. You can see it with [b]VERBS[r] or [b]V[r].";

volume definitions and options

chapter definitions

to decide whether always-no: decide no.
to decide whether always-yes: decide yes.

chapter options

opt-short-names is a truth state that varies.

Weary Eerie Way Globals ends here.

---- DOCUMENTATION ----
