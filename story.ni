"Weary Eerie Way" by Andrew Schultz

volume includes

include Trivial Niceties by Andrew Schultz.

include Punctuation Stripper by Andrew Schultz.

include Weary Eerie Way Globals by Andrew Schultz.

volume rooms

book Blimp Limp Bay

Blimp Limp Bay is a room. printed name of Blimp Limp Bay is "[if always-no]Steer 'Ere Stay[else]Blimp Limp Bay[end if]". shorttext of Blimp Limp Bay is "[if always-no]Steer[else]Blimp[end if]".

understand "steer ere stay" and "steer ere" and "steer/ere stay" and "steer/ere" as Blimp Limp Bay when always-no.

chapter Ump Gray Grump

Ump Gray Grump is a person in Blimp Limp Bay. printed name is "Ump-Gray-Grump".

book Roar Day Drawer

Roar Day Drawer is north of Blimp Limp Bay. printed name of Roar Day Drawer is "[if always-no]Ate Cray Crate[else]Roar Day Drawer[end if]". shorttext of Roar Day Drawer is "[if always-no]Crate[else]Drawer[end if]".

understand "ate cray crate" and "ate cray" and "ate/cray crate" and "ate/cray" as Roar Day Drawer when always-no.

check going south in Roar Day Drawer:
	if Id Lay Lid is off-stage:
		say "You feel a stinging in your back. The drawer spit something at you! A [lid]! You consider throwing it back, but the drawer would just throw it when YOUR back was turned, and so forth. Perhaps the [lid] will be useful.";
		now player has Id Lay Lid;

chapter Id Lay Lid

the Id Lay Lid is a thing. printed name is "Id-Lay Lid".

book Bill Ill Bay

Bill Ill Bay is east of Blimp Limp Bay.

check going west in Bill Ill Bay:
	if Weak Eek Whey is off-stage:
		say "As you go back west, you step in something icky. An open jar of [whey]. It's a bit disgusting, but you don't have to eat it. You take it.";
		now player has Weak Eek Whey;

chapter Weak Eek Whey

the Weak Eek Whey is a thing. printed name is "Weak-Eek Whey". indefinite pronoun is "some".

book X Ray Wrecks

X Ray Wrecks is north of Bill Ill Bay. It is east of Roar Day Drawer.

book Sneer Near Say

Sneer Near Say is east of X Ray Wrecks.

chapter Lump Say Slump

Lump Say Slump is a person in Sneer Near Say. printed name is "Lump-Say-Slump".

check going north in Sneer Near Say: say "[slump] harangues you that it really might not be worth it. You don't have the energy to argue." instead;

book Stirrer Stay

Stirrer Stay is north of X Ray Wrecks.

Lug Say Slug is a person in Stirrer Stay.

check going east in Stirrer Stay: say "Not with [lug] around." instead;

book Craze Raise Cay

Craze Raise Cay is east of Stirrer Stay. It is north of Sneer Near Say.

Skull Say Cull is a person in Craze Raise Cay. printed name is "Skull-Say-Cull".

volume verbs

chapter abouting

abouting is an action out of world.

understand the command "about" as something new.
understand the command "credits" as something new.

understand "about" as abouting.
understand "credits" as abouting.

carry out abouting:
	say "This was a spinoff of my IFComp 2020 game, [i]Under They Thunder[r]. After realizing UTT was a bit too complex, I sat down and wondered how I'd do things more simply. And this popped out. I would like to thank my testers from UTT and all who played it.[paragraph break]I would also like to thank JJ Guest for creating EctoComp, Duncan Bowsman and Ruber Eaglenest for continuing to run it, and itch.io for hosting the comp.";
	the rule succeeds;

chapter verbsing

verbsing is an action applying to nothing.

understand the command "verbs" as something new.

understand "verbs" as verbsing.

carry out verbsing:
	say "Here are all the commands you need to win the game:[paragraph break]";
	say "--[b]N, S, E, W[r], the four compass directions.";
	say "--[b]U[r] (or [b]USE[r] (item) on (another). You can also just [b]U[r] an item, and I will try to guess what to use it on.";
	say "--[b]T[r] TALKs to an NPC. There is never more than one present, so you don't need to use a subject.";
	the rule succeeds;

