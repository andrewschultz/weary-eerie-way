Version 1/201011 of Weary Eerie Way Tables by Andrew Schultz begins here.

"This should briefly describe the purpose of Weary Eerie Way Tables."

volume direction drop checking

definition: a direction (called d) is retreatish:
	if d is south or d is west, yes;
	no;

check going when noun is retreatish:
	if the room noun of location of player is nowhere, continue the action; [wrong way = wrong way]
	if skull is not moot:
		if noun is west, now location of player is wested;
		if noun is south, now location of player is southed;
	repeat through table of dirdrops:
		if myrm entry is location of player:
			if myitm entry is not off-stage, next;
			if there is a myrule entry:
				process the myrule entry; [ABIDE BY won't work, because otherwise this may short-circuit going backwards in some cases]
				if the rule failed, continue the action;
			if there is a mytxt entry:
				say "[mytxt entry][line break]";
			now player has myitm entry;
			continue the action;

table of dirdrops
myrm	myrule	myitm	mytxt
Ate Er Cray Crater	a rule	Id Lay Lid	"As you walk away, you feel a sharp sting in your [if drawer is moot]foot. When the [drawer] exploded, something must've gone flying[else]back. Ouch! The [drawer] must've thrown it when you weren't looking[end if]. You look down and find [a lid][if drawer is not moot]. You consider throwing it back, but the drawer would just throw it when YOUR back was turned, and so forth. Perhaps the [lid] will be useful elsewhere, and perhaps there is a way to deal with [the drawer][end if]."
Bill Ill Bay	--	Weak Eek Whey	"As you go back west, you step in something icky. An open jar of [whey]. It's a bit disgusting, but you don't have to eat it. You take it."
X Ray Wrecks	wrecks-flee rule	Own Gray Groan	"You suddenly feel a bit futile. You hear a [groan] and involuntarily copy it. For a minute or two, you can do nothing else. Then it goes away. Maybe the ability to groan will be useful sometime soon."
Stirrer Stay	--	Kill Say Skill	"As you flee, you suddenly remember ... things, and ... stuff. About how to evade negativity. About ways to shut up people ho babble on too long. You remember ways people shut you up, for better or for worse, and you crystallize some critical ideas about how to deaden 'exciting' conversations that got nasty.[paragraph break]Indeed, you now possess [skill]."
Sneer Near Say	--	Cram Say Scram	"As you flee, you are overwhelmed with visions and recollections of people telling you not to bother to come back. Some are just hurtful, but some are pointed and could be used on someone who SHOULD be ostracized. You take a minute to distill the best of them.[paragraph break]You make a name for your self-research on the matter. You call it [scram]."
Craze Raise Cay	--	Eel Stay Steel	"You trip over what appears to be a metal pole. Wait, it's sort of sharp. It's a sword! It makes you feel confident you can hang around for a bit. Etched on the blade is the phrase ... [steel]."
Craze Raise Cay	--	Hard Say Shard	"Your [steel] clanks at your side, swinging out and ... catching on something that makes you trip. It's a protrusion of metal, roughly round-shaped. Wait! It's a sort of shield! It's not the shape you expect from shields, but it should protect you."

section going rules

this is the wrecks-flee rule:
	if Stirrer Stay is unvisited or Craze Raise Cay is unvisited or Sneer Near Say is unvisited:
		say "You almost half expect to find something as you flee, but ... nothing's there.";
		the rule fails;
	the rule succeeds;

volume useons

chapter big uses table

table of useons [xxuse2]
u1	u2	v1	v2	new-item	get-point	pre-rule	post-rule [get-point defaults to true. Also note it is a rule, not a truth state.]
weak eek whey	roar day drawer	true	true	a thing	a rule	a rule	use-whey-drawer rule
Id Lay Lid	Not Say Snot	true	true	--	--	--	use-lid-snot rule
Cram Say Scram	Lug Say Slug	true	true	--	--	--	use-scram-slug rule
Kill Say Skill	Lump Say Slump	true	true	--	--	--	use-skill-slump rule
Own Gray Groan	Skull Say Cull	true	true	--	--	pre-groan-cull rule	use-groan-skull rule
rope gay grope	ump slay slump	true	true	--	--	--	use-grope-slump rule

section pre rules

this is the pre-groan-cull rule:
	if steel is off-stage or shard is off-stage:
		say "You feel mentally, but not [if cull-score is 0]close to[else]quite[end if] physically equipped to deal with the [skull].";
		the rule fails;

section post rules

this is the use-lid-snot rule:
	say "The Id from the [lid] seeps out into a cloudy gas overwhelms the [snot]. Who remains snotty, but intones 'Be that way, then. I can't stop you.'";

this is the use-groan-skull rule:
	say "You focus the [groan] on the [skull]. A light emanates from above the [groan] to the [skull] and back up to the heavens.[paragraph break]As the skull begins to jabber away defensively, you start groaning louder. The skull is upset! It was groaning first! It rushes at you! Your [steel] vaporizes as the [skull] bashes you. It rolls back but then rolls forward as you draw your [shard].[paragraph break]Again, your [shard] vaporizes, but this time, you see a crack in the [skull]. It freezes momentarily. It can't move. Well, it bangs its head on the ground, forgetting that it is just a head. Very shortly, it shatters into many pieces, which themselves dissolve in the air. Go, you![paragraph break]Sadly, there's no treasure or anything where the [skull] used to be.";
	now all rooms are not wested;
	now all rooms are not southed;
	moot hard say shard;
	moot eel stay steel;

this is the use-whey-drawer rule:
	say "You schlop the whey at the drawer. It sticks! The drawer tries to gobble it down, roaring a bit louder ... until it ingests some of the [whey]. Then it gets quieter. Then the middle drawer starts thumping up and down less, because [the whey] has stuck it together. That doesn't stop the [drawer] from lashing out violently against the walls and the floor. Thankfully, you're able to avoid it. It leaves quite a dent everywhere before exploding and somehow vaporizing.[paragraph break]After that demonstration, the way east is free."

this is the use-grope-slump rule:
	say "The [urp] seems to be just behind you as you hand the [grope] to [slay slump], [slay slump] mutters 'Grope ... [']ope ... gray...' but you can see they're getting stuff done. The [wire] is reconnected properly. And it goes pretty fast, as the [slurp]'s noises get louder. The [rope] and [wire] spark, and the blimp begins chugging before emitting a forlorn 'Airway ... WHERE?!?!' Just as it gives a huge cough, the [slurp] appears in the bay![paragraph break]But ... at that moment, when it pounces with a 'LEAP! SAY!' ... an aim-flay flame bursts from the rear of the blimp.[paragraph break]The [slurp]'s voice cracks. 'Eep ... slay ...!' But of course it only goes to sleep.[paragraph break]You ask how the [slay slump] did that. And boy, do you get an explanation! It's not just the technical stuff, but there are so many life lessons in there. You would never have thought about them yourself--well, with your conscious mind. As you chug away in the blimp, you have a profound vision of how to link [the gump]'s simplistic ideas with what [the slay slump] said. It all makes so much sense! You soar back off to ... well, I can't tell you, because you wake up before the good part. Dreams are always like that.[paragraph break]You wake up. You tried to write down what you saw. But hours later, it was either gobbledygook or too simplistic. You consoled yourself it wasn't really your ideas, until you realized that of course it was--it was in your subconscious! The self-help book garnered from it all would've been real self-help! It could have revolutionized society![paragraph break]Nevertheless, bits and pieces you remembered over the years helped make your life, and that of those around you, much better. Each time you recover some of [slay slump]'s wisdom, it's great, and you almost eventually learn not to be crushed at what you couldn't recall.[paragraph break]And oh, sure, some people look at you askance when you set your resolutions on November 1st instead of January 1st, but those who're actually intrigued? Well, they're the keepers.";
	end the story saying "Winnin['] Way!";

this is the use-scram-slug rule:
	say "The [slug] isn't used to being talked to that way. It's bigger than you! But you seem serious. And you don't back down. Its threats to hurt you get more repetitive, but it seems to get bored of them. Eventually, confused, it shuffles off."

this is the use-skill-slump rule:
	say "The [skill] helps you counter each of [the say slump]'s protestations against, well, doing anything at all. Suddenly it finds a new thing to give up on: trying to convince you! It shuffles off in search of more gullible prey to lull into inaction. You briefly wonder what you have done to those people, and if they deserve it. But hey, you're that much freer now."

chapter useon rejects

table of useon rejects [xxurej]
u1	u2	urule	utext
rope gay grope	ire way wire	a rule	"No, you don't have the technical skill. But someone else might."
id lay lid	roar day drawer	--	"No, you got the lid from the drawer."
own gray groan	Lug Say Slug	--	"Perhaps if the [slug] were more inclined to words, that would work."

volume keywords

table of keywords
stuff (topic)	what-to-say	what-to-do
"bump"	"You'll be crashing around enough."	a thing
"che/chez/chump"	"You don't need to head chez some chump right now."
"clay/clump"	--	ump clay clump
"fray/frump"	"You have a snide thought about the fading looks of someone you dislike."
"gay/gump"	--	ump gay gump
"grey/gray/grump"	"If you help yourself, you'll be able to  help [the grump]."	--
"hay/hey/hump"	--	ump hay hump
"jay/jump"	"You consider getting high."
"lay/lump"	--	ump lay lump
"pay/pump"	--	ump pay pump
"play/plump"	"You puff your stomach out for a bit, pointlessly."
"ray/rump"	"I don't want to know what you're thinking."
"say/sump"	"Your babble produces no sump-pump. Thankfully, you don't need a sump-pump on top of all this."
"slay/slump"	"Yes, [if slay slump is touchable]now you're at[else]in[end if] the end, you will need to slay your slump. But you can't just vow to do so."
"stay/stump"	--	ump stay stump
"they/thump"	"That was last game, in [utt]. You don't need Ump-They-Thump making things worse."
"tray/trump"	"Alas, no tray carrying a deus-ex-machina item pops up."

to decide which thing is current-ump:
	decide on entry (the score + 1) in ump-morphs;

rule for printing a parser error (this is the ump pig latin rule):
	if player is not in blimp limp bay, continue the action;
	if player has rope gay grope, continue the action;
	repeat through table of keywords:
		if the player's command includes stuff entry:
			if there is a what-to-say entry:
				if player has rope gay grope:
					say "More action, less attempted wordplay. [slay slump] has the power to get fancy and change things right now, not you.";
				else:
					say "[what-to-say entry][line break]";
			else if there is a what-to-do entry:
				if what-to-do entry is touchable, say "You don't need to do anything special with [the what-to-do entry]." instead;
				if what-to-do entry is moot, say "The [what-to-do entry] is in the past. Onward!" instead;
				if what-to-do entry is off-stage, say "You've guessed at something [the grump] can become, but you need to make your own progress, here." instead;
			else:
				say "You can't really tinker with [the current-ump]. You don't really have magical powers.";
			the rule succeeds;
	continue the action;

volume FINAL PUZZLE

last-dirs is a number that varies.

to decide which number is cur-dirs:
	decide on number of wested rooms + number of easted rooms + number of southed rooms + number of northed rooms;

after going when skull is moot:
	let LP be location of player;
	if noun is east and the room west of LP is not nowhere, now LP is easted;
	if noun is west and the room east of LP is not nowhere, now LP is wested;
	if noun is north and the room south of LP is not nowhere, now LP is northed;
	if noun is south and the room north of LP is not nowhere, now LP is southed;
	if cur-dirs > last-dirs:
		now last-dirs is cur-dirs;
		repeat through table of dirchecks:
			if cur-dirs is dirs-gone entry:
				say "[dirs-result entry][line break]";
				continue the action;
	continue the action;

table of dirchecks
dirs-gone	dirs-result
2	"You wonder how much running around you will have to do."
4	"You wonder if maybe the sort of running around you do is more important than the amount."
8	"You're getting somewhere. You think. You hope."
12	"You're pretty sure you explored nearly every which way."
14	"How much more exploring can there be to do? You've been through all seven places a LOT. Perhaps there is just a bit more to nail down."
16	"With a flash, an item appears on the ground. After all this running, you're happy to see it. It is a [grope]. You're even happier to pick it up. What could it be used for?[give-grope]"

to say give-grope:
	now player has rope gay grope;
	increment the score;
	if player is in Blimp Limp Bay:
		say "As you handle the rope, [gump] suddenly starts talking more intelligently. Overgeneralized aphorisms become thoughtful, incisive. 'You're ready. You've got to help me ... help me help you!' [gump] looks more purposeful now, an [slay slump].";
	else:
		say "You hear surprisingly clever, decisive and exciting talk to the [list of to-origin directions]. Maybe you should go back and have a look!";
	moot Ump Gay Gump;
	move Ump Slay Slump to Blimp Limp Bay;

definition: a direction (called dir) is to-origin:
	unless dir is south or dir is east, no;
	if dir is east and location of player is not Ate Er Cray Crater, yes;
	if dir is south and location of player is not bill ill bay, yes;
	no;

Weary Eerie Way Tables ends here.

---- DOCUMENTATION ----
