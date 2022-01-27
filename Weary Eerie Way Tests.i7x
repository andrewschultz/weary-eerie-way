Version 1/201020 of Weary Eerie Way Tests by Andrew Schultz begins here.

"This should briefly describe the purpose of Weary Eerie Way Tests."

volume starting stuff

when play begins:
	let need-text be 0;
	repeat with PER running through people:
		if talk-text of PER is empty:
			say "[PER] needs talk-text.";
			increment need-text;
	if need-text is 0:
		say "Basic talking implementation PASSED.";
	else:
		say "Talking implementation[if need-text > 1]s[end if] still required: [need-text].";
	now need-text is 0;
	repeat with THI running through things:
		if description of THI is empty:
			say "[THI] needs a description.";
			increment need-text;
	if need-text is 0:
		say "Basic examining implementation PASSED.";
	else:
		say "Description implementation[if need-text > 1]s[end if] still required: [need-text].";

volume automation

test first with "e/w/n/use whey on drawer/s/e/use lid on snot/n".

test tweak with "w/e/s/n".

test second with "e/w/n/use scram on slug/s/e/use skill on slump/n/s/w/w/e/s/n/n/e/s/n/w/e/use groan on skull".

test most with "test first/test tweak/test second".

test w with "test most/w/s/s/w/n/e/e/n/s/w/w/s/e/n/n/e/w/s/s/w/use rope on slump".

Weary Eerie Way Tests ends here.

---- DOCUMENTATION ----
