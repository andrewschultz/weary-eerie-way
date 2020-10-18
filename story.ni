"Weary Eerie Way" by Andrew Schultz

volume includes

include Trivial Niceties by Andrew Schultz.

include Punctuation Stripper by Andrew Schultz.

include Weary Eerie Way Globals by Andrew Schultz.

include Weary Eerie Way Tables by Andrew Schultz.

volume rooms

book Blimp Limp Bay

Blimp Limp Bay is a room. printed name of Blimp Limp Bay is "[if rope gay grope is not off-stage]Steer 'Ere Stay[else]Blimp Limp Bay[end if]". shorttext of Blimp Limp Bay is "[if rope gay grope is not off-stage]Steer[else]Blimp[end if]". "Here by your blimp, you know there is a way out once it is fixed. But how?[paragraph break]Passages lead south and east."

understand "steer ere stay" and "steer ere" and "steer/ere stay" and "steer/ere" as Blimp Limp Bay when rope gay grope is not off-stage.

chapter Ump Gray Grump

Ump Gray Grump is a person in Blimp Limp Bay. printed name is "Ump-Gray-Grump". "[grump] paces around here, wanting to do something, but too miserable to be properly motivated. Yet."

chapter ire way wire

the ire way wire is scenery in Blimp Limp Bay.

book Roar Day Drawer / rdd

rdd is north of Blimp Limp Bay. printed name of rdd is "[if roar day drawer is moot]Ate Cray Crate[else]Roar Day Drawer[end if]". shorttext of rdd is "[if roar day drawer is moot]Crate[else]Drawer[end if]". "Passages lead south and east[if roar day drawer is not moot], but a [drawer] blocks your way east[end if]."

understand "ate cray crate" and "ate cray" and "ate/cray crate" and "ate/cray" as rdd when Roar Day Drawer is moot.

check going east in rdd: if roar day drawer is not moot, say "The [drawer] yells and bocks you." instead;

chapter Roar Day Drawer

the Roar Day Drawer is scenery in rdd.

chapter Id Lay Lid

the Id Lay Lid is a thing. printed name is "Id-Lay Lid".

book Bill Ill Bay

Bill Ill Bay is east of Blimp Limp Bay.

chapter Weak Eek Whey

the Weak Eek Whey is a thing. printed name is "Weak-Eek Whey". indefinite article of Weak Eek Whey is "some".

book X Ray Wrecks

X Ray Wrecks is north of Bill Ill Bay. It is east of rdd.

chapter Own Gray Groan

the Own Gray Groan is a thing. "It's sort of ephemeral, but you can USE it if and when you need."

book Sneer Near Say

Sneer Near Say is east of X Ray Wrecks.

chapter Lump Say Slump

Lump Say Slump is a person in Sneer Near Say. printed name is "Lump-Say-Slump".

check going north in Sneer Near Say: if lump say slump is touchable, say "[slump] harangues you that it really might not be worth it. You don't have the energy to argue." instead;

book Stirrer Stay

Stirrer Stay is north of X Ray Wrecks.

Lug Say Slug is a person in Stirrer Stay.

check going east in Stirrer Stay: say "Not with [lug] around." instead;

book Craze Raise Cay

Craze Raise Cay is east of Stirrer Stay. It is north of Sneer Near Say.

chapter Skull Say Cull

Skull Say Cull is a person in Craze Raise Cay. printed name is "Skull-Say-Cull".

chapter Rope Gay Grope

the Rope Gay Grope is a thing. description is "You feel happier just holding the [grope], like you can do ... well, lots of stuff.". printed name is "Rope Gay-Grope".

volume verbs

chapter useoning

to decide whether (t1 - a thing) and (t2 - a thing) are flippable:
	if t1 is a person:
		if t2 is not a person, yes;
	no;

useing is an action applying to one thing. [ this is not, um, used, but it's still important ]

useoning it with is an action applying to two things.

understand the command "use" as something new.

understand "use [thing]" as useing.
understand "u [thing]" as useing.

understand "use [thing] on/with [thing]" as useoning it with.
understand "u [thing] on/with [thing]" as useoning it with.

carry out useoning:
	if debug-state is true, say "DEBUG: USEONing [noun] on [second noun].";
	repeat through table of useons:
		if noun is u1 entry and second noun is u2 entry:
			if there is a pre-rule entry, abide by the pre-rule entry;
			if there is a post-rule entry, process the post-rule entry;
			if there is a get-point entry:
				process the get-point entry;
				if the rule succeeded, increment the score;
			else:
				increment the score;
			if v1 entry is true, moot u1 entry;
			if v2 entry is true, moot u2 entry;
			if there is a new-item entry, now player has new-item entry;
			[if debug-state is true, say "[u1 entry] mooted: [v1 entry]. [u2 entry] mooted: [v2 entry]. [if there is a new-item entry]Received [new-item entry][else]No new item[end if]. [location of u1 entry]. [location of u2 entry].";]
			the rule succeeds;
		if noun is u2 entry and second noun is u1 entry:
			if debug-state is true, say "DEBUG: flip. USE [u2 entry] on [u1 entry].";
			try useoning u1 entry with u2 entry instead;
	abide by the useon reject rule;
	abide by the wide ranging useon rule;
	say "You don't seem to need to use, um, USE [the noun] on [the second noun].";
	the rule succeeds.

this is the useon reject rule:
	repeat through table of useon rejects:
		if (noun is u1 entry and second noun is u2 entry) or (noun is u2 entry and second noun is u1 entry):
			if there is a urule entry:
				abide by the urule entry;
			else:
				say "[utext entry][line break]";
		the rule succeeds;

this is the wide ranging useon rule: [this is for any general rejects to help the player]
	if second noun is the player, say "You never need to USE anything on yourself." instead;
	continue the action;

chapter useing

carry out useing:
	say "You need to USE something ON/WITH something else. At least for the initial, speed-programmed release." instead;

chapter use thing on text

justusing is an action applying to one thing and one topic.
rjustusing is an action applying to one topic and one thing.

understand "u [thing] on [text]" as justusing.
understand "u [text] on [thing]" as justusing (with nouns reversed).

understand "use [thing] on [text]" as justusing.
understand "use [text] on [thing]" as justusing (with nouns reversed).

carry out justusing: say "I couldn't figure what you wanted to use [the noun] with.";

volume options

chapter rming

rming is an action applying to nothing.

understand the command "rm" as something new.

understand "rm" as rming.

carry out rming:
	now opt-short-names is whether or not opt-short-names is false;
	say "Short room view is now [on-off of opt-short-names] for visited rooms.";
	the rule succeeds.

volume regular verbs

check attacking:
	if noun is ump gray grump, say "Maybe if this were Bump-Ump Bay, that would be appropriate. But no." instead;
	say "Hit it?! Hey!" instead;

volume meta-verbs

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

volume out of world

Aced Way is a room. [this is the moot room]
