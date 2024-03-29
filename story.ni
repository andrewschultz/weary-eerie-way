"Weary Eerie Way" by Andrew Schultz

volume metadata

to say utt: say "[i]Under They Thunder[r]"

Include (-

#Undef Headline;
Constant Headline = "An ol' stray stroll";

-) after "Language.i6t".

the story description is "An EctoComp 2021 entry and brief sequel to Under They Thunder (IFComp 2020)".

release along with a website.

release along with cover art.

release along with the "Parchment" interpreter.

the release number is 2.

use American dialect.

volume includes

include Trivial Niceties by Andrew Schultz.

include Punctuation Stripper by Andrew Schultz.

include Pig Latin Globals by Andrew Schultz.

include Weary Eerie Way Globals by Andrew Schultz.

include Weary Eerie Way Tables by Andrew Schultz.

section testing include - not for release

include Weary Eerie Way Tests by Andrew Schultz.

volume when play begins/ends

when play begins:
	now the right hand status line is "[score]/[maximum score]";
	force-status;
	say "You're pretty sure this is a dream, because you don't know how to fly a blimp. You've matched your own skill sets with the sort of skills you probably need to fly a blimp, and ... nothing. However, you're equally surprised when the blimp crashes. You aren't aware of anything you did wrong.[paragraph break]'That's a busted wire there in your blimp,' a gruff voice intones. 'An ire-way wire, to be precise!' You look over to see someone very drab indead.[paragraph break]'You picked a bad place to crash, what with the [slurp] hanging around. Well, maybe not so bad. I can fix your blimp. Or I could have, once. I'm [grump]. I'm not judging you, really. I'm only judging whether or not you can fix the blimp on your own. You can't, even if you changed yourself. I might. Hey, don't judge me back. I am who I am.'[paragraph break]That's not optimally helpful, but hey, it's [i]something[r].";
	wfak;

volume backdrops

to decide whether the action is procedural:
	if useoning, yes;
	if useing, yes;
	if examining, yes;
	no;

a boredrop is a kind of backdrop. a boredrop has a rule called process-rule. a boredrop has text called process-text.

instead of doing something with a boredrop:
	if action is procedural, continue the action;
	say "[process-text of noun][line break]";
	abide by the process-rule of the noun;

book Urp Slay Slurp

the Urp Slay Slurp is a boredrop. it is everywhere. printed name is "Urp-Slay-Slurp". description is "Far too indescribable for words. And even if you or I could do so easily, we wouldn't want to. It's there, and you need to escape it.".

process-rule of Urp Slay Slurp is slurp-nonviable rule.

this is the slurp-nonviable rule:
	if slurp-use is false, say "Also, you sense trying to do anything directly to, or using anything on, the [slurp] would be useless. Escape is the only route, finding other stuff to muck with.";
	now slurp-use is true;
	the rule succeeds;

process-text of Urp Slay Slurp is "[if player has rope]The [slurp] is closing in, but fighting it can't be the answer. [slay slump] is right there, ready to help[else]Trying to do anything directly to the [slurp] just won't work. It will probably distract you from trying to leave.";

after examining slurp:
	abide by the slurp-nonviable rule;

book Uck Stay Stuck

the Uck Stay Stuck is a boredrop. printed name is "Uck-Stay-Stuck". description is "The [uck] just looks like it'd stick to you horribly."

process-text of Uck Stay Stuck is "There's no point in trying to pick at the [Uck]. You need to figure how to escape.";

book Lane Say Slain

the Lane Say Slain is a boredrop. printed name is "Lane Say-Slain". description is "Fortunately, you're separated from examining [the slain] by a wall."

process-text of Lane Say Slain is "The [slain] is just sort of there. The more you think of it, the more you'll be distracted by fear. Best put it out of your mind.";

volume rooms

book Blimp Limp Bay

last-bay-score is a number that varies.

Blimp Limp Bay is a first-half room. printed name of Blimp Limp Bay is "[if rope gay grope is not off-stage]Steer [']Ere Stay[else]Blimp-Limp Bay[end if]". shorttext of Blimp Limp Bay is "[if rope gay grope is not off-stage]Steer[else]Blimp[end if]". "Here by your blimp, with that unsightly [wire] sticking out of it, you hope to find a way to get it repaired. But how?[paragraph break][psgs][if number of npcish people in blimp limp bay is 0]. Where [grump] once stood, you notice [a random umpy thing in blimp limp bay][end if][if score > last-bay-score][new-found-ump][end if].".

to say new-found-ump: say ". It seems to have replaced [the entry (last-bay-score + 1) in ump-morphs] from last time you were here, which is progress, hopefully";

the force final confrontation rule is listed before the generic directional bounding rule in check going.

definition: a thing (called th) is umpy:
	if th is listed in ump-morphs, yes;
	no;

the player is in Blimp Limp Bay. description of player is "You! Ooh, yay!".

understand "steer ere stay" and "steer ere" and "steer/ere stay" and "steer/ere" as Blimp Limp Bay when rope gay grope is not off-stage.

to say big-end-hint:
	say "You need to fix your blimp somehow! Maybe you are even carrying what you need"

check going when player is in Blimp Limp Bay and player has rope gay grope (this is the force final confrontation rule):
	if noun is north or noun is east:
		say "No chance. The [slurp] would catch you. [big-end-hint].";
	else if noun is south or noun is west:
		say "Running into walls would do no good. [big-end-hint].";
	else:
		say "There's no weird direction to get out of here. Well, maybe there is, but you'd need to fix the blimp to go that way.";
	the rule succeeds;

chapter Ump Gray Grump

Ump Gray Grump is a person in Blimp Limp Bay. printed name is "Ump-Gray-Grump". "[grump] paces around here, too miserable to be properly motivated or even talk meaningfully. Yet.". description is "[grump] stares crankily back at you, as if to tell you to get going and start looking around.". talk-text of Ump Gray Grump is "You fail to lift [grump] from misery. [grump] shoos you away, in fact. You should probably get going.".

chapter ire way wire

the ire way wire is scenery in Blimp Limp Bay. printed name of ire way wire is "ire-way wire". description is "You don't want to mess with [the wire] or the blimp. It loooks confusing. [if the score is 6]But you have what [slay slump] needs![else]But [grump] could have helped and maybe could help again in the future.". understand "blimp" as ire way wire.

chapter changing scenery

slurp-bay is a truth state that varies.

initial-note is a truth state that varies.

after looking in Blimp Limp Bay:
	if Ump Gray Grump is in Blimp Limp Bay and number of carried things > 0:
		say "'Sheesh! What am I supposed to do with [i]THAT[r]?' moans [Grump], noticing [the random thing carried by the player] you just picked up. 'Of all the useless...'[paragraph break]Suddenly [Grump] falls down and seems to be almost sucked into the ground. You're not sure if [Grump] actually changes or is covered up quickly. But now where [grump] was, is a pile of hay. An [hump], if you will.";
		moot ump gray grump;
		move ump hay hump to blimp limp bay;
		say "[line break]Well, maybe if you're [i]very[r] lucky, you'll be hit with enough items that turn out to be oddly useful enough to get out of here. Weirder things have happened. Like ending up here in the first place.";
	if slurp-bay is false and Ump Slay Slump is touchable :
		say "You hear a noise behind you. The [slurp] has arrived! It consumes a perfectly acceptable rate-'K Crate you hadn't seen before. After taking a few bits, it casts the now ate-cray aside! It pretty clearly means business.";
		now slurp-bay is true;
	if number of npcish people in blimp limp bay > 0 and last-bay-score > 0 and last-bay-score < 3:
		say "Oh my goodness. Signs of life from the former [grump]! Things are looking up!";
	now last-bay-score is the score;
	if initial-note is false:
		ital-say "type [b]ABOUT[r][i] or [b]CREDITS[r][i] to see general information, or [b]V[r][i] to see the verbs [this-game-noi]'s simplified parser uses.";
		now initial-note is true;
	continue the action;

an ump clay clump is scenery. printed name is "ump-clay-clump". "It's just a large clump of clay. You probably can't make it into anything, or back into a human form that could help you."

Ump Gay Gump is a person. printed name is "Ump-Gay-Gump". description is "Slightly dopey-looking, but good-hearted, and happier than [grump] for sure.". talk-text is "[gump] begins to babble how life is like a box of chocolates. Halloween half-price or not.[paragraph break]The life-enhancing aphorisms are all well and good, but you'd appreciate them more if they were intertwined with, you know, concrete action that would, you know, get back to a life to enhance.[paragraph break][gump-how-far]."

last-gump-dirs is a number that varies.

to say gump-how-far:
	let dir-raw be (cur-dirs * 100);
	let my-percent be  dir-raw / 16;
	let my-remain be (the remainder after dividing dir-raw by 16) / 4;
	say "Oh, as [the gump]'s chatter winds down, they offhandedly mention you're about [my-percent][if my-remain > 0].[no line break][25 * my-remain][end if] percent of the way to finding something special. They don't know how they know, but they do. They encourage you to [if last-gump-dirs is 0]check back whenever you need to[else if last-gump-dirs is cur-dirs]keep at it, even if you didn't make recent progress[else]keep on truckin['] along[end if]";
	now last-gump-dirs is cur-dirs;

an ump hay hump is scenery. printed name of ump hay hump is "ump-hay-hump". "You don't want to move the hump. Maybe you can get [grump] back from beneath it, somehow, if you do enough stuff right. That's how dream logic works, you guess. You hope."

Ump Lay Lump is a person. printed name is "Ump-Lay-Lump". description is "Just lying out there. Whether lie or lay is strictly proper, that doesn't matter. They seem so close to consciousness and maybe helping you!". talk-text is "[lump] is barely conscious and not really up to speaking."

an ump pay pump is scenery. printed name is "ump-pay-pump". "Well, it's a pump where you have to pay. You have no method of payment. So it can't help you much right now."

Ump Slay Slump is a person. printed name is "Ump-Slay-Slump". description is "[slay slump] seems to be looking intently at your [rope].". talk-text is "'I don't like just sitting around and chatting. You know what gets me out of a slump? Work! And material to work with!'"

an ump stay stump is scenery. printed name is "ump-stay-stump". "It's just a tree stump. You can't do much with a stump. You can maybe feel less stumped for a bit. I don't know."

ump-morphs is a list of things variable. ump-morphs is { ump hay hump, ump pay pump, ump stay stump, ump clay clump, ump lay lump, ump gay gump, ump slay slump }.

book Roar Day Drawer / Ate Er Cray Crater

Ate Er Cray Crater is north of Blimp Limp Bay. it is first-half. printed name of Ate Er Cray Crater is "[if roar day drawer is moot]Ate-[']Er-Cray Crater[else]Roar Day Drawer[end if]". shorttext of Ate Er Cray Crater is "[if roar day drawer is moot]Crater[else]Drawer[end if]". "[psgs][if roar day drawer is not moot], but a [drawer] blocks your way east[end if]."

check going east in Ate Er Cray Crater: if roar day drawer is not moot, say "The [drawer] bellows and bocks your way east." instead;

chapter Roar Day Drawer

the Roar Day Drawer is scenery in Ate Er Cray Crater. "Well, it just doesn't stop roaring!"

chapter Id Lay Lid

the Id Lay Lid is a thing. printed name is "Id-Lay Lid". description is "It's a bit sharp around the edges. It could certainly bleed out your ego, but it could probably deflate bigger, more fragile egos much more quickly."

book Bill Ill Bay

Bill Ill Bay is east of Blimp Limp Bay. it is first-half. printed name is "Bill-Ill Bay".

The Not Say Snot is a person in Bill Ill Bay. "A humanoid [snot] waits here, wagging its finger at you occasionally. It doesn't seem to want to talk, but if it did, it would probably be telling you it won't let you by right now. If it did, it'd probably be a Knot-Say Snot, twisting words to prove you don't deserve to go where you want.". description of not say snot is "The sneer seems almost etched on. The [snot] can barely be bothered to look at you directly.". printed name is "Not-Say Snot". talk-text is "The [snot] shakes their heads and shrugs at you. You won't be able to reason with them."

check going north in Bill Ill Bay: if Not Say Snot is touchable, say "The [snot] wags its finger. It looks north and shudders as if to say, it's too scary to go that way. It makes an arm motion to bar you going north. It gestures to you as if to say it's doing all this FOR YOU." instead;

chapter Weak Eek Whey

the Weak Eek Whey is a thing. printed name is "Weak-Eek Whey". indefinite article of Weak Eek Whey is "some". description is "Just looking at it makes you worry you will lose your voice."

book X Ray Wrecks

check going to X Ray Wrecks:
	if Drawer is not moot or Snot is not moot, say "You feel impeded by some unnatural force. Perhaps there is more to do." instead;

X Ray Wrecks is north of Bill Ill Bay. It is nexus. It is east of Ate Er Cray Crater. "You don't feel irradiated here, but it's definitely an X. Well, an X turned 45 degrees. Any cardinal direction looks manageable.". printed name of X Ray Wrecks is "X-Ray Wrecks".

check going in X Ray Wrecks:
	if noun is north or noun is east:
		if X Ray Wrecks is not wested and X Ray Wrecks is not southed:
			say "Weird. You're pulled back from going [noun]. You're not sure why, but you are." instead;

chapter Own Gray Groan

the Own Gray Groan is a thing. description is "It's sort of ephemeral, but you can USE it if and when you need. It's a friendly groan, so much so it could almost get you to say 'Own Gray?! Grown.'". printed name is "Own-Gray Groan".

book Sneer Near Say

Sneer Near Say is east of X Ray Wrecks. printed name is "Sneer Near, Say". it is second-half.

chapter Lump Say Slump

Lump Say Slump is a person in Sneer Near Say. printed name is "Lump-Say-Slump". talk-text is "You try to start conversations, but the [say slump] beings complaining about, well, nearly anything.". description is "It's a green sentient blobby thing that shifts itself (and, likely, its arguments) around despite no perceptible wind."

check going north in Sneer Near Say: if lump say slump is touchable, say "[say slump] harangues you that it really might not be worth it. You don't have the energy to argue." instead;

chapter Cram Say Scram

Cram Say Scram is a proper-named thing. printed name is "Cram-Say-Scram". description is "It isn't something physical,but rather knowledge, of choice words and emphases to help chase someone you don't want around without being violent."

book Stirrer Stay

Stirrer Stay is north of X Ray Wrecks. it is second-half.

Lug Say Slug is a person in Stirrer Stay. "A Lug-Say Slug waits here. Just looking at it makes you feel getting by it on your own would be an effort. But there must be a way.". talk-text is "The [slug] isn't much for conversation. It would probably just get mad if you said anything. You may have to use your wits, or something you've found along the way.". printed name is "Lug-Say Slug". description of slug is "It's big and gray, even grayer than you remember [grump], and wrinkly, too. Sadly, since I offered some Alt-Say Salt in [utt], you'll need to find something else to repel the [slug]."

check going east in Stirrer Stay: if lug say slug is touchable, say "Not with [lug] around. It's pretty violent!" instead;

chapter Kill Say Skill

Kill Say Skill is a proper-named thing. printed name is "Kill-Say Skill". description is "You can't really see it. It's in your mind. It seems good for stopping conversations cold."

book Craze Raise Cay

Craze Raise Cay is east of Stirrer Stay. It is north of Sneer Near Say. printed name is "Craze-Raise Cay". it is second-half.

check going to Craze Raise Cay: if Lug Say Slug is not moot or Lump Say Slump is not moot, say "You feel a sense of dread. You're not ready yet." instead;

chapter Skull Say Cull

Skull Say Cull is a person in Craze Raise Cay. printed name is "Skull-Say-Cull". "[skull] wavers back and forth here, being generally scary and threatening and demoralizing. Your nemesis! How to defeat it?". description is "Fearsome, fearsome, fearsome! It would be looking down on you even if it couldn't leviate.". talk-text is "The [skull] gives out a spooky whoo-oo-ooh in response. There's no reasoning with that!"

chapter Eel Stay Steel

the Eel Stay Steel is a thing. printed name is "[']E'll-Stay Steel". description is "A sword, really. Just squeezing it and looking at it gives you extra courage to hold your ground.[paragraph break]But what color is it, you ask?[paragraph break]... puts on shades ...[paragraph break]Teal, of course!". indefinite article of Steel is "an".

chapter Hard Say Shard

the Hard Say Shard is a thing. printed name is "Hard-Say Shard". description is "A shield, really, and it's all spiky too, but unlike in Ultima V, you don't have to hit extra keystrokes if you want to attack with it.[paragraph break]On the other hand, unlike in Ultima V, there's not much plot or challenge here, so -- trade-offs."

chapter Rope Gay Grope

the Rope Gay Grope is a thing. description is "You feel happier just holding the [grope], like you can do ... well, lots of stuff.". printed name is "Rope Gay-Grope".

volume irregular verbs

chapter useoning

slurp-use is a truth state that varies.

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

this is the slurp-nonviable-use rule:
	if slurp-use is false:
		say "You wish it would be that easy. But you sense [the slurp] would just devour [the noun]. It's [if player has rope]far too close to ignore[else]just all around. You can feel it[end if]. But hey, breaking the fourth wall here, that could make it a lot ambiguous to [b]USE[r] something you're carrying without specifying a subject.";
		now slurp-use is true;
	the rule succeeds;

carry out useoning:
	if debug-state is true, say "DEBUG: USEONing [noun] on [second noun].";
	if noun is slurp or second noun is slurp:
		if slurp-use is true, say "No, you still don't need to use anything on [the slurp], or vice-versa." instead;
		abide by the slurp-nonviable-use rule;
	if noun is ire way wire or second noun is ire way wire, say "[if noun is a person or second noun is a person]No, [the second noun] knows the wire's at fault. You need to find the right tools[else]No, you don't want to futz with the wire or the blimp by yourself. That looks dangerous. Get the right tools to someone else[end if]." instead;
	repeat through table of useons:
		if noun is u1 entry and second noun is u2 entry:
			if there is a pre-rule entry, abide by the pre-rule entry;
			if there is a post-rule entry, process the post-rule entry;
			moot entry (the score + 1) in ump-morphs;
			if there is a get-point entry:
				process the get-point entry;
				if the rule succeeded:
					increment the score;
			else:
				increment the score;
			if score is not maximum score, move entry (the score + 1) in ump-morphs to blimp limp bay;
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
	say "You can't think of any way to use, um, [b]USE[r] [the noun] on [the second noun].";
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

definition: a thing (called t) is useonable:
	unless t is touchable, no;
	if t is enclosed by the player, no;
	if t is the player, no;
	if t is urp slay slurp and slurp-use is true, no;
	if t is noun, no;
	yes;

carry out useing:
	if noun is slurp:
		say "You are nowhere near powerful enough to use [the slurp], and even if you were, no good would come of it.";
		abide by the slurp-nonviable rule;
	let n be number of useonable things;
	if n is 0, say "You see nothing around you to USE anything on." instead;
	if n > 1, say "USE is ambiguous here, so you'll have to USE on. You have [the list of useonable things] to USE [the noun] on." instead;
	let RUT be random useonable thing;
	say "(using on [RUT])[line break]";
	try useoning noun with RUT instead;

chapter use thing on text

[this has to stay in WEW because UTT has cases where you can just USE something. WEW funnels USE X to USE X ON Y.]

justusing is an action applying to one thing and one topic.
rjustusing is an action applying to one topic and one thing.

understand "u [thing] on [text]" as justusing.
understand "u [text] on [thing]" as justusing (with nouns reversed).

understand "use [thing] on [text]" as justusing.
understand "use [text] on [thing]" as justusing (with nouns reversed).

carry out justusing: say "I couldn't figure what you wanted to use [if noun is a person]on [the noun][else][the noun] with[end if].";

volume options

volume clueing

A thing can be remarked or unremarked.

a thing has a number called remark-count. remark-count of a thing is usually 11.

every turn:
	repeat with X running through unremarked carried things:
		decrement remark-count of X;
		if remark-count of X is 0:
			say "A voice coldly states [i]YOOOOU HAVE NOOOTT NOOOTTIICEED YOOOOU PPOOOSSSEEEEESSSS THHE [printed name of X in upper case]. YOOOOU WWIILL NNOOTT WIN WITHOUT IT... YOU WILL NOT WIN ANYWAY...[r]";
			now X is remarked;

check useoning it with:
	now noun is remarked;
	now second noun is remarked;

volume regular verbs

chapter attacking

the block attacking rule is not listed in any rulebook.

check attacking:
	if noun is ump gray grump, say "Maybe if this were Bump-Ump Bay, that would be appropriate. But no." instead;
	say "Hit it?! Hey!" instead;

the block saying no rule is not listed in any rulebook.
the block saying yes rule is not listed in any rulebook.

chapter eating

procedural rule while eating something: ignore the carrying requirements rule.

the can't eat unless edible rule is not listed in any rulebook.

check eating:
	if noun is a person, say "Ick! Say, sick!" instead;
	if noun is Weak Eek Whey, say "That's plain and inedible." instead;
	say "Nothing here is worth eating, even if it were cooked in Leet-Eat Ley." instead;

chapter inventory

definition: a thing (called th) is physical:
	if th is own gray groan, no;
	if th is kill say skill, no;
	if th is cram say scram, no;
	yes;

check taking inventory:
	if number of carried things is 0, say "You are currently bereft of useful items and ideas, but you are sure you will find [if score is 0]some, soon[else]more[end if]." instead;
	say "You are[if number of carried physical things is 0]n't currently carrying anything[else] currently carrying [a list of carried physical things][end if].";
	say "[line break]";
	let ncp be number of carried not physical things;
	if ncp is 0:
		say "You don't have any ideas worth using in the right place.";
	else:
		say "You've gotten acquainted with [if ncp is 1]an idea[else]some ideas[end if] worth using later: [a list of carried not physical things].";
	now all carried things are remarked;
	the rule succeeds;

chapter listening

the block listening rule is not listed in any rulebook.

check listening:
	say "The [slurp]'s noises echo throughout." instead;

chapter taking

the mention taking is useless rule is listed first in the check taking rules.

check taking (this is the mention taking is useless rule):
	if the noun is carried by the player, say "You already have [the noun].";
	say "You never need to TAKE anything in this game." instead;

chapter waking

the block waking up rule is not listed in any rulebook.

check waking up:
	say "You worry you would wind up in Ache Way. Or a Wakey Achey Way. No. Gotta fix that blimp." instead;

chapter yes and no

check saying no: say "Oh, nay!" instead;

check saying yes: say "[']S yay!" instead;

volume meta-verbs

chapter abouting

abouting is an action out of world.

understand the command "about" as something new.
understand the command "credits" as something new.

understand "about" as abouting.
understand "credits" as abouting.

carry out abouting:
	say "[this-game] is an entry in the 2021 EctoComp Petite Mort (English version) and was a spinoff of my IFComp 2020 game, [i]Under They Thunder[r]. It was originally written for 2020 EctoComp, but I forgot the deadline was early October 31 and not the end of the day.";
	say "[line break]After [utt] sprawled on me (I went from being glad there was anything at all to having too much,) I sat down and limited myself to amusingly ('amusingly') surreal stuff and the best ideas that didn't fit. And this popped out.";
	say "[line break]The release version, due to the time limit, had no testers, but I would like to thank my testers from [utt] and all who played it, as well as Olaf Nowacki for moral support. He has an entry in the Petite Mort too! Oh, and the IFComp 2021 authors['] subforum. Several of them entered something, too!";
	say "[line break]I would also like to thank JJ Guest for creating EctoComp, Duncan Bowsman for stepping in and Ruber Eaglenest for running it so well for several years now, and itch.io for hosting EctoComp and other comps that help me just remember to play others['] stuff.";
	say "[line break]And thanks to svgrepo.com for the blimp SVG for the cover art.";
	the rule succeeds;


chapter hinting

hinting is an action out of world.

understand the command "hint" as something new.
understand the command "help" as something new.

understand "hint" as hinting.
understand "help" as hinting.

carry out hinting:
	say "The hint-int-hey hint system is a state-of-the-art engine using AI methods to specifically track your route via artificial intelligence algorithms to provide just the right level of hints up to and including and absolute solution based on[paragraph break]        	[b]Programming error 1031: [slurp] has, like, caused stuff to crash in general *[r][paragraph break]No fair! But then again, what would you expect? To be able to control your dreams, so you could sit back in a computer chair, find a file called walkthrough.txt in a zip file, and see where you are stuck? Sorry, this isn't one of those dreams.[paragraph break]Or is it?";
	the rule succeeds;

chapter verbsing

verbsing is an action applying to nothing.

understand the command "verbs" as something new.
understand the command "verb" as something new.
understand the command "v" as something new.

understand "verbs" as verbsing.
understand "verb" as verbsing.
understand "v" as verbsing.

carry out verbsing:
	say "Here are all the commands you need to win the game:[line break]";
	say "--[b]N, S, E, W[r], the four compass directions.";
	say "--[b]U[r] (or [b]USE[r]) (item) [b]ON[r] (another). You don't need the full name -- just one word. You also may get rid of the [b]ON[r] if only one target is available.";
	say "[line break]This command is useless but maybe fun:[line break]";
	say "--[b]T[r] TALKs to an NPC. There is never more than one present, so you don't need to use a subject.";
	say "[line break]Finally, [b]RM[r] toggles long/short room names in the description, since with Pig Latin, you can figure what it is.";
	the rule succeeds;

volume parser errors

rule for printing a parser error when the latest parser error is the not a verb i recognise error (this is the generic unrecognized verb rule):
	say "The simplified parser didn't recognize that command/first word. For a list of what works, type [b]V[r]/[b]VERB[r]/[b]VERBS[r]."

volume old school verb carnage

understand the command "ask" as something new.
understand the command "attach" as something new.
understand the command "buy" as something new.
understand the command "chop" as something new.
understand the command "crack" as something new.
understand the command "embrace" as something new.
understand the command "fight" as something new.
understand the command "give" as something new.
understand the command "hold" as something new.
understand the command "hop" as something new.
understand the command "hug" as something new.
understand the command "insert" as something new.
understand the command "jump" as something new.
understand the command "kill" as something new.
understand the command "light" as something new.
understand the command "move" as something new.
understand the command "murder" as something new.
understand the command "pay" as something new.
understand the command "polish" as something new.
understand the command "prune" as something new.
understand the command "pull" as something new.
understand the command "punch" as something new.
understand the command "purchase" as something new.
understand the command "push" as something new.
understand the command "put" as something new.
understand the command "say" as something new.
understand the command "scrub" as something new.
understand the command "shine" as something new.
understand the command "show" as something new.
understand the command "sip" as something new.
understand the command "skip" as something new.
understand the command "slice" as something new.
understand the command "sorry" as something new.
understand the command "stand" as something new.
understand the command "swallow" as something new.
understand the command "sweep" as something new.
understand the command "taste" as something new.
understand the command "tell" as something new.
understand the command "thump" as something new.
understand the command "tie" as something new.
understand the command "torture" as something new.
understand the command "touch" as something new.
understand the command "turn" as something new.
understand the command "wave" as something new.
understand the command "wipe" as something new.
understand the command "wreck" as something new.

volume out of world
