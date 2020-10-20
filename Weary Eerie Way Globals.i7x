Version 1/201002 of Weary Eerie Way Globals by Andrew Schultz begins here.

"Global stuff for Weary Eerie Way."

volume definitions and such

a room has text called shorttext.

for printing the name of a room (called rm) when opt-short-names is true and shorttext of rm is not empty and rm is visited: say "[shorttext of the item described]".

volume stubs

to moot (th - a thing): move th to Binnin Way.

definition: a thing (called th) is moot:
	if th is in Binnin Way, yes;
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
