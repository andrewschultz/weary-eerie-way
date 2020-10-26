Version 1/201011 of Weary Eerie Way Tables by Andrew Schultz begins here.

"This should briefly describe the purpose of Weary Eerie Way Tables."

volume direction drop checking

definition: a direction (called d) is retreatish:
	if d is south or d is west, yes;
	no;

check going when noun is retreatish:
	if the room noun of location of player is nowhere, continue the action; [wrong way = wrong way]
	if noun is west, now location of player is wested;
	if noun is south, now location of player is southed;
	repeat through table of dirdrops:
		if myrm entry is location of player:
			if myitm entry is not off-stage, next;
			if there is a myrule entry:
				process the myrule entry;
				unless the rule succeeded, continue the action;
			[say "[myrm entry] [myitm entry] [location of myitm entry].";]
			if there is a mytxt entry:
				say "[mytxt entry][line break]";
			now player has myitm entry;

table of dirdrops
myrm	myrule	myitm	mytxt
rdd	a rule	Id Lay Lid	"You feel a stinging in your back. The drawer spit something at you! An [lid]! You consider throwing it back, but the drawer would just throw it when YOUR back was turned, and so forth. Perhaps the [lid] will be useful."
Bill Ill Bay	--	Weak Eek Whey	"As you go back west, you step in something icky. An open jar of [whey]. It's a bit disgusting, but you don't have to eat it. You take it."
X Ray Wrecks	wrecks-flee rule	Own Gray Groan	"You suddenly feel a bit futile. You hear a [groan] and involuntarily copy it. For a minute or two, you can do nothing else. Then it goes away. Maybe the ability to groan will be useful sometime soon."
Stirrer Stay	--	Cram Say Scram	"As you flee, you suddenly remember ... things, and ... stuff. About how to evade negativity. About ways to shut up people ho babble on too long. You remember ways people shut you up, for better or for worse, and you crystallize some critical ideas about how to deaden 'exciting' conversations that got nasty.[paragraph break]Indeed, you now possess [skill]."
Sneer Near Say	--	Kill Say Skill	"As you flee, you are overwhelmed with visions and recollections of people telling you not to bother to come back. Some are just hurtful, but some are pointed and could be used on someone who SHOULD be ostracized. You take a minute to distill the best of them.[paragraph break]You make a name for your self-research on the matter. You call it [scram]."

section going rules

this is the wrecks-flee rule:
	if Stirrer Stay is unvisited or Craze Raise Cay is unvisited:
		say "You almost half expect to find something as you flee, but ... nothing's there.";
		the rule fails;
	the rule succeeds;

volume useons

chapter big uses table

table of useons [xxuse2]
u1	u2	v1	v2	new-item	get-point	pre-rule	post-rule [get-point defaults to true. Also note it is a rule, not a truth state.]
weak eek whey	roar day drawer	true	true	a thing	a rule	a rule	use-whey-drawer rule
rope gay grope	ump gray grump	true	true	--	--	use-grope-grump rule
own gray groan	Skull Say Cull	true	true	--	--	use-groan-skill rule
Id Lay Lid	Not Say Snot	true	true	--	--	use-lid-snot rule
Cram Say Scram	Lug Say Slug	true	true	--	--	use-scram-slug rule
Kill Say Skill	Lump Say Slump	true	true	--	--	use-skill-slump rule

section pre rules

section post rules

this is the use-lid-snot rule:
	say "The Id from the [lid] seeps out into a cloudy gas overwhelms the [snot]. Who remains snotty, but intones 'Be that way, then. I can't stop you.'";

this is the use-groan-skill rule:
	say "As the skull continues to jabber away, you start groaning louder. Your groaning seems to wear it down. It bangs its head on the ground, forgetting that it is just a head. As a result, it collapses and rolls away, unconscious. Go, you!"

this is the use-whey-drawer rule:
	say "You schlop the whey at the drawer. It sticks! And the drawer slowly quiets down. It's a bit embarrassed by all this, and it picks up its legs and moves away.[paragraph break]It's no longer blocking the way east."

this is the use-grope-grump rule:
	say "As you hand the [grope] to [grump], [grump] mutters 'Grope ... [']ope ... gray...' but looks less sad, if still very gray. Several long, melodramatic sighs later, [grump] starts in fixiing the blimp. And it goes pretty fast. The [rope] and [wire] spark as they tie together. The blimp begins chugging. It works! You enter and soar back off to ... well, I can't tell you, because you wake up before the good part. Dreams are always like that.";
	end the story saying "Winnin['] Way!";

this is the use-scram-slug rule:
	say "The [slug] isn't used to being talked to that way. It's bigger than you! But you seem serious. And you don't back down. Its threats to hurt you get more repetitive, but it seems to get bored of them. Eventually, confused, it shuffles off."

this is the use-skill-slump rule:
	say "The [skill] helps you counter each of the [slump]'s protestations against, well, doing anything at all. Suddenly it finds a new thing to give up on: trying to convince you! It shuffles off in search of more gullible prey to lull into inaction. You briefly wonder what you have done to people, and if they deserve it. But hey, you're that much freer now."

chapter useon rejects

table of useon rejects [xxurej]
u1	u2	urule	utext
rope gay grope	ire way wire	a rule	"No, you don't have the technical skill. But someone else might."
id lay lid	roar day drawer	--	"No, you got the lid from the drawer."
own gray groan	Lug Say Slug	--	"Perhaps if the [slug] were more inclined to words, that would work."

Weary Eerie Way Tables ends here.

---- DOCUMENTATION ----
