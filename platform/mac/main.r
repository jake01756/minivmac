#include "Types.r"

#define MyIsCompilingRez 1

#include ":::c_src:CNFGGLOB.h"
#include ":::c_src:RESIDMAC.h"
#include ":::c_src:VERSINFO.h"

#ifndef UseCarbonLib
#define UseCarbonLib 0
#endif

#define kMyAppIcon 128
#define kMyRomIcon 129
#define kMyDskIcon 130

#define kMyAppFREF 128
#define kMyRomFREF 129
#define kMyDskFREF 130
#define kMyAnyFREF 131

#if UseCarbonLib
data 'plst' (0) {
	$"00"
};
#endif

resource 'MBAR' (kMyMenuBar, preload) {
	{	/* array MenuArray: 3 elements */
		/* [1] */
		kAppleMenu,
		/* [2] */
		kFileMenu,
		/* [3] */
		kSpecialMenu
	}
};

resource 'MENU' (kAppleMenu, preload) {
	kAppleMenu,
	textMenuProc,
	0x7FFFFFFD,
	enabled,
	apple,
	{	/* array: 2 elements */
		/* [1] */
		"About " kStrAppName "...", noIcon, noKey, noMark, plain,
		/* [2] */
		"-", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (kFileMenu, preload) {
	kFileMenu,
	textMenuProc,
	0x7FFFFFFD,
	enabled,
	"File",
	{	/* array: 3 elements */
		/* [1] */
		"Open Disk Image �", noIcon, noKey, noMark, plain,
		/* [2] */
		"-", noIcon, noKey, noMark, plain,
		/* [3] */
		"Quit", noIcon, noKey, noMark, plain
	}
};

resource 'MENU' (kSpecialMenu, preload) {
	kSpecialMenu,
	textMenuProc,
	0x7FFFFFFB,
	enabled,
	"Special",
	{	/* array: 5 elements */
		/* [1] */
		"Share Time", noIcon, noKey, noMark, plain,
		/* [2] */
		"Limit Speed", noIcon, noKey, noMark, plain,
		/* [3] */
		"-", noIcon, noKey, noMark, plain,
		/* [4] */
		"Reset", noIcon, noKey, noMark, plain,
		/* [5] */
		"Interrupt", noIcon, noKey, noMark, plain
	}
};

resource 'DITL' (kMyStandardAlert, purgeable) {
	{	/* array DITLarray: 2 elements */
		/* [1] */
		{145, 293, 165, 351},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{10, 72, 130, 353},
		StaticText {
			disabled,
			"^0\n\n^1^2^3"
		}
	}
};

resource 'DITL' (kMyOkCancelAlert, purgeable) {
	{	/* array DITLarray: 3 elements */
		/* [1] */
		{145, 197, 165, 255},
		Button {
			enabled,
			"Cancel"
		},
		/* [2] */
		{145, 293, 165, 351},
		Button {
			enabled,
			"OK"
		},
		/* [3] */
		{10, 72, 130, 353},
		StaticText {
			disabled,
			"^0\n\n^1^2^3"
		}
	}
};

resource 'ALRT' (kMyStandardAlert, "Non Fatal Error", purgeable) {
	{40, 43, 217, 405},
	kMyStandardAlert,
	{	/* array: 4 elements */
		/* [1] */
		OK, visible, sound1,
		/* [2] */
		OK, visible, sound1,
		/* [3] */
		OK, visible, sound1,
		/* [4] */
		OK, visible, sound1
	},
	alertPositionMainScreen
};

resource 'ALRT' (kMyOkCancelAlert, "Ok Cancel", purgeable) {
	{40, 43, 217, 405},
	kMyOkCancelAlert,
	{	/* array: 4 elements */
		/* [1] */
		OK, visible, sound1,
		/* [2] */
		OK, visible, sound1,
		/* [3] */
		OK, visible, sound1,
		/* [4] */
		OK, visible, sound1
	},
	alertPositionMainScreen
};

resource 'DITL' (kMyAboutAlert, purgeable) {
	{	/* array DITLarray: 7 elements */
		/* [1] */
		{261, 377, 281, 435},
		Button {
			enabled,
			"OK"
		},
		/* [2] */
		{10, 97, 38, 455},
		StaticText {
			disabled,
			kStrAppName " " kStrVersion ", Copyright " kStrCopyrightYear "."
		},
		/* [3] */
		{47, 97, 100, 455},
		StaticText {
			disabled,
			"Including or based upon code by Bernd Sc"
			"hmidt, Philip Cummins, Richard F. Bannis"
			"ter, Weston Pawlowski, Paul Pratt, and o"
			"thers."
		},
		/* [4] */
		{110, 97, 151, 455},
		StaticText {
			disabled,
			kStrAppName " is distributed under the terms"
			" of the GNU Public License, version 2."
		},
		/* [5] */
		{165, 6, 223, 455},
		StaticText {
			disabled,
			kStrAppName " is distributed in the hope tha"
			"t it will be useful, but WITHOUT ANY WAR"
			"RANTY; without even the implied warranty"
			" of MERCHANTABILITY or FITNESS FOR A PAR"
			"TICULAR PURPOSE."
		},
		/* [6] */
		{235, 6, 258, 339},
		StaticText {
			disabled,
			"For more information, see:"
		},
		/* [7] */
		{267, 21, 290, 339},
		StaticText {
			disabled,
			kStrHomePage
		}
	}
};

resource 'ALRT' (kMyAboutAlert, "About", purgeable) {
	{34, 27, 330, 489},
	kMyAboutAlert,
	{	/* array: 4 elements */
		/* [1] */
		OK, visible, sound1,
		/* [2] */
		OK, visible, sound1,
		/* [3] */
		OK, visible, sound1,
		/* [4] */
		OK, visible, sound1
	},
	alertPositionMainScreen
};

resource 'SIZE' (-1) {
	reserved,
	acceptSuspendResumeEvents,
	reserved,
	canBackground,
	multiFinderAware,
	backgroundAndForeground,
	dontGetFrontClicks,
	ignoreChildDiedEvents,
	is32BitCompatible,
	isHighLevelEventAware,
	localAndRemoteHLEvents,
	isStationeryAware,
	useTextEditServices,
	reserved,
	reserved,
	reserved,
	5242880,
	1572864
};

resource 'vers' (1) {
	kMajorVersion,
	kMinorVersion * 16 + kMinorSubVersion,
	release,
	0x0,
	0,
	kStrVersion,
	kStrVersion ", � " kStrCopyrightYear " Bernd Schmidt, "
	"Philip Cummins, Richard F. Bannister, Paul Pratt."
};

resource 'BNDL' (128) {
	'MnvM',
	0,
	{	/* array TypeArray: 2 elements */
		/* [1] */
		'FREF',
		{	/* array IDArray: 4 elements */
			/* [1] */
			0, kMyAppFREF,
			/* [2] */
			1, kMyRomFREF,
			/* [3] */
			2, kMyDskFREF,
			/* [4] */
			3, kMyAnyFREF
		},
		/* [2] */
		'ICN#',
		{	/* array IDArray: 4 elements */
			/* [1] */
			0, kMyAppIcon,
			/* [2] */
			1, kMyRomIcon,
			/* [3] */
			2, kMyDskIcon,
			/* [4] */
			3, 0
		}
	}
};

data 'MnvM' (0, "Owner resource") {
	$"00"                                                 /* . */
};

resource 'FREF' (kMyAppFREF) {
	'APPL',
	0,
	""
};

resource 'FREF' (kMyRomFREF) {
	'ROM!',
	1,
	""
};

resource 'FREF' (kMyDskFREF) {
	'MvIm',
	2,
	""
};

resource 'FREF' (kMyAnyFREF) {
	'****',
	3,
	""
};

resource 'ICN#' (kMyAppIcon, purgeable) {
	{	/* array: 2 elements */
		/* [1] */
		$"0000 0000 07FF FFE0 0800 0010 0800 0010"
		$"08FF FF10 0900 0090 0918 1890 0918 3090"
		$"0918 6090 0918 C090 0919 8090 091B 0090"
		$"091E 0090 091C 0090 0918 0090 0910 0090"
		$"0900 0090 08FF FF10 0800 0010 0800 0010"
		$"0800 0010 0800 0010 0800 FF10 0800 0010"
		$"0800 0010 0800 0010 0800 0010 07FF FFE0"
		$"0400 0020 0400 0020 0400 0020 07FF FFE0",
		/* [2] */
		$"0000 0000 07FF FFE0 0FFF FFF0 0FFF FFF0"
		$"0FFF FFF0 0FFF FFF0 0FFF FFF0 0FFF FFF0"
		$"0FFF FFF0 0FFF FFF0 0FFF FFF0 0FFF FFF0"
		$"0FFF FFF0 0FFF FFF0 0FFF FFF0 0FFF FFF0"
		$"0FFF FFF0 0FFF FFF0 0FFF FFF0 0FFF FFF0"
		$"0FFF FFF0 0FFF FFF0 0FFF FFF0 0FFF FFF0"
		$"0FFF FFF0 0FFF FFF0 0FFF FFF0 07FF FFE0"
		$"07FF FFE0 07FF FFE0 07FF FFE0 07FF FFE0"
	}
};

resource 'ICN#' (kMyRomIcon, purgeable) {
	{	/* array: 2 elements */
		/* [1] */
		$"1FFF FC00 1000 0600 1000 0500 1000 0480"
		$"1000 0440 1000 0420 1000 07F0 1000 0010"
		$"1155 5010 12AA A810 13FF F810 13FF F810"
		$"13FF F810 13FF F810 13FF F810 13FF F810"
		$"12AA A810 1155 5010 1000 0010 1155 5010"
		$"12AA A810 13FF F810 13FF F810 13FF F810"
		$"13FF F810 13FF F810 13FF F810 12AA A810"
		$"1155 5010 1000 0010 1000 0010 1FFF FFF0",
		/* [2] */
		$"1FFF FC00 1FFF FE00 1FFF FF00 1FFF FF80"
		$"1FFF FFC0 1FFF FFE0 1FFF FFF0 1FFF FFF0"
		$"1FFF FFF0 1FFF FFF0 1FFF FFF0 1FFF FFF0"
		$"1FFF FFF0 1FFF FFF0 1FFF FFF0 1FFF FFF0"
		$"1FFF FFF0 1FFF FFF0 1FFF FFF0 1FFF FFF0"
		$"1FFF FFF0 1FFF FFF0 1FFF FFF0 1FFF FFF0"
		$"1FFF FFF0 1FFF FFF0 1FFF FFF0 1FFF FFF0"
		$"1FFF FFF0 1FFF FFF0 1FFF FFF0 1FFF FFF0"
	}
};

resource 'ICN#' (kMyDskIcon, purgeable) {
	{	/* array: 2 elements */
		/* [1] */
		$"1FFF F800 1000 0C00 1000 0A00 1000 0900"
		$"1000 0880 1000 0840 1000 0820 1000 0FF0"
		$"1000 0010 1000 0010 1000 0010 1000 0010"
		$"1000 0010 10FF FC10 1120 9210 1121 5110"
		$"1121 5110 1121 5110 1120 9110 111F E110"
		$"1100 0110 1100 0110 111F F110 1120 0910"
		$"1120 0910 1122 8910 1123 0910 1122 0910"
		$"1120 0910 10FF FE10 1000 0010 1FFF FFF0",
		/* [2] */
		$"1FFF F800 1FFF FC00 1FFF FE00 1FFF FF00"
		$"1FFF FF80 1FFF FFC0 1FFF FFE0 1FFF FFF0"
		$"1FFF FFF0 1FFF FFF0 1FFF FFF0 1FFF FFF0"
		$"1FFF FFF0 1FFF FFF0 1FFF FFF0 1FFF FFF0"
		$"1FFF FFF0 1FFF FFF0 1FFF FFF0 1FFF FFF0"
		$"1FFF FFF0 1FFF FFF0 1FFF FFF0 1FFF FFF0"
		$"1FFF FFF0 1FFF FFF0 1FFF FFF0 1FFF FFF0"
		$"1FFF FFF0 1FFF FFF0 1FFF FFF0 1FFF FFF0"
	}
};

resource 'icl8' (kMyAppIcon, purgeable) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0000 00FF FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF FFFF FFFF FFFF FF00 0000 0000"
	$"0000 0000 FF2B 2B2B 2B2B 2B2B 2B2B 2B2B"
	$"2B2B 2B2B 2B2B 2B2B 2B2B 2BFF 0000 0000"
	$"0000 0000 FF2B 2B2B 2B2B 2B2B 2B2B 2B2B"
	$"2B2B 2B2B 2B2B 2B2B 2B2B 2BFF 0000 0000"
	$"0000 0000 FF2B 2B2B FCFC FCFC FCFC FCFC"
	$"FCFC FCFC FCFC FCFC 2B2B 2BFF 0000 0000"
	$"0000 0000 FF2B 2BFC 2A2A 2A2A 2A2A 2A2A"
	$"2A2A 2A2A 2A2A 2A2A 002B 2BFF 0000 0000"
	$"0000 0000 FF2B 2BFC 2A2A 2AEC EC2A 2A2A"
	$"2A2A 2AEC EC2A 2A2A 002B 2BFF 0000 0000"
	$"0000 0000 FF2B 2BFC 2A2A 2AEC EC2A 2A2A"
	$"2A2A ECEC 2A2A 2A2A 002B 2BFF 0000 0000"
	$"0000 0000 FF2B 2BFC 2A2A 2AEC EC2A 2A2A"
	$"2AEC EC2A 2A2A 2A2A 002B 2BFF 0000 0000"
	$"0000 0000 FF2B 2BFC 2A2A 2AEC EC2A 2A2A"
	$"ECEC 2A2A 2A2A 2A2A 002B 2BFF 0000 0000"
	$"0000 0000 FF2B 2BFC 2A2A 2AEC EC2A 2AEC"
	$"EC2A 2A2A 2A2A 2A2A 002B 2BFF 0000 0000"
	$"0000 0000 FF2B 2BFC 2A2A 2AEC EC2A ECEC"
	$"2A2A 2A2A 2A2A 2A2A 002B 2BFF 0000 0000"
	$"0000 0000 FF2B 2BFC 2A2A 2AEC ECEC EC2A"
	$"2A2A 2A2A 2A2A 2A2A 002B 2BFF 0000 0000"
	$"0000 0000 FF2B 2BFC 2A2A 2AEC ECEC 2A2A"
	$"2A2A 2A2A 2A2A 2A2A 002B 2BFF 0000 0000"
	$"0000 0000 FF2B 2BFC 2A2A 2AEC EC2A 2A2A"
	$"2A2A 2A2A 2A2A 2A2A 002B 2BFF 0000 0000"
	$"0000 0000 FF2B 2BFC 2A2A 2AEC 2A2A 2A2A"
	$"2A2A 2A2A 2A2A 2A2A 002B 2BFF 0000 0000"
	$"0000 0000 FF2B 2BFC 2A2A 2A2A 2A2A 2A2A"
	$"2A2A 2A2A 2A2A 2A2A 002B 2BFF 0000 0000"
	$"0000 0000 FF2B 2B2B 0000 0000 0000 0000"
	$"0000 0000 0000 0000 2B2B 2BFF 0000 0000"
	$"0000 0000 FF2B 2B2B 2B2B 2B2B 2B2B 2B2B"
	$"2B2B 2B2B 2B2B 2B2B 2B2B 2BFF 0000 0000"
	$"0000 0000 FF2B 2B2B 2B2B 2B2B 2B2B 2B2B"
	$"2B2B 2B2B 2B2B 2B2B 2B2B 2BFF 0000 0000"
	$"0000 0000 FF2B 2B2B 2B2B 2B2B 2B2B 2B2B"
	$"2B2B 2B2B 2B2B 2B2B 2B2B 2BFF 0000 0000"
	$"0000 0000 FF2B 2B2B 2B2B 2B2B 2B2B 2B2B"
	$"2B2B 2B2B 2B2B 2B2B 2B2B 2BFF 0000 0000"
	$"0000 0000 FF2B 2B2B 2B2B 2B2B 2B2B 2B2B"
	$"FFFF FFFF FFFF FFFF 2B2B 2BFF 0000 0000"
	$"0000 0000 FF2B 2B2B 2B2B 2B2B 2B2B 2B2B"
	$"0000 0000 0000 0000 2B2B 2BFF 0000 0000"
	$"0000 0000 FF2B 2BE3 E32B 2B2B 2B2B 2B2B"
	$"2B2B 2B2B 2B2B 2B2B 2B2B 2BFF 0000 0000"
	$"0000 0000 FF2B 2BD8 D82B 2B2B 2B2B 2B2B"
	$"2B2B 2B2B 2B2B 2B2B 2B2B 2BFF 0000 0000"
	$"0000 0000 FF2B 2B2B 2B2B 2B2B 2B2B 2B2B"
	$"2B2B 2B2B 2B2B 2B2B 2B2B 2BFF 0000 0000"
	$"0000 0000 00FF FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF FFFF FFFF FFFF FF00 0000 0000"
	$"0000 0000 00FF FBFB FBFB FBFB FCFC FCFC"
	$"FCFD FDFD FDFD FDFD FDFD FF00 0000 0000"
	$"0000 0000 00FF FAFA FAFA FAFA FAFA FBFB"
	$"FCFC FCFC FDFD FDFD FDFD FF00 0000 0000"
	$"0000 0000 00FF F9F9 F9F9 F9F9 F9F9 FAFA"
	$"FAFB FBFC FCFC FCFD FDFD FF00 0000 0000"
	$"0000 0000 00FF FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF FFFF FFFF FFFF FF"
};

resource 'icl8' (kMyRomIcon, purgeable) {
	$"0000 00FF FFFF FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF FFFF 0000 0000 0000 0000 0000"
	$"0000 00FF F5F5 F5F5 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5FF FF00 0000 0000 0000 0000"
	$"0000 00FF F5F5 F5F5 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5FF 2BFF 0000 0000 0000 0000"
	$"0000 00FF F5F5 F5F5 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5FF 2B2B FF00 0000 0000 0000"
	$"0000 00FF F5F5 F5F5 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5FF 2B2B 2BFF 0000 0000 0000"
	$"0000 00FF F5F5 F5F5 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5FF 2B2B 2B2B FF00 0000 0000"
	$"0000 00FF F5F5 F5F5 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5FF FFFF FFFF FFFF 0000 0000"
	$"0000 00FF F5F5 F5F5 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 F5F5 F5FF 0000 0000"
	$"0000 00FF F5F5 F5FF F5FF F5FF F5FF F5FF"
	$"F5FF F5FF F5F5 F5F5 F5F5 F5FF 0000 0000"
	$"0000 00FF F5F5 FF00 FF00 FF00 FF00 FF00"
	$"FF00 FF00 FFF5 F5F5 F5F5 F5FF 0000 0000"
	$"0000 00FF F5F5 FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF FFF5 F5F5 F5F5 F5FF 0000 0000"
	$"0000 00FF F5F5 FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF FFF5 F5F5 F5F5 F5FF 0000 0000"
	$"0000 00FF F5F5 FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF FFF5 F5F5 F5F5 F5FF 0000 0000"
	$"0000 00FF F5F5 FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF FFF5 F5F5 F5F5 F5FF 0000 0000"
	$"0000 00FF F5F5 FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF FFF5 F5F5 F5F5 F5FF 0000 0000"
	$"0000 00FF F5F5 FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF FFF5 F5F5 F5F5 F5FF 0000 0000"
	$"0000 00FF F5F5 FF00 FF00 FF00 FF00 FF00"
	$"FF00 FF00 FFF5 F5F5 F5F5 F5FF 0000 0000"
	$"0000 00FF F5F5 F5FF F5FF F5FF F5FF F5FF"
	$"F5FF F5FF F5F5 F5F5 F5F5 F5FF 0000 0000"
	$"0000 00FF F5F5 F5F5 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 F5F5 F5FF 0000 0000"
	$"0000 00FF F5F5 F5FF F5FF F5FF F5FF F5FF"
	$"F5FF F5FF F5F5 F5F5 F5F5 F5FF 0000 0000"
	$"0000 00FF F5F5 FF00 FF00 FF00 FF00 FF00"
	$"FF00 FF00 FFF5 F5F5 F5F5 F5FF 0000 0000"
	$"0000 00FF F5F5 FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF FFF5 F5F5 F5F5 F5FF 0000 0000"
	$"0000 00FF F5F5 FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF FFF5 F5F5 F5F5 F5FF 0000 0000"
	$"0000 00FF F5F5 FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF FFF5 F5F5 F5F5 F5FF 0000 0000"
	$"0000 00FF F5F5 FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF FFF5 F5F5 F5F5 F5FF 0000 0000"
	$"0000 00FF F5F5 FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF FFF5 F5F5 F5F5 F5FF 0000 0000"
	$"0000 00FF F5F5 FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF FFF5 F5F5 F5F5 F5FF 0000 0000"
	$"0000 00FF F5F5 FF00 FF00 FF00 FF00 FF00"
	$"FF00 FF00 FFF5 F5F5 F5F5 F5FF 0000 0000"
	$"0000 00FF F5F5 F5FF F5FF F5FF F5FF F5FF"
	$"F5FF F5FF F5F5 F5F5 F5F5 F5FF 0000 0000"
	$"0000 00FF F5F5 F5F5 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 F5F5 F5FF 0000 0000"
	$"0000 00FF F5F5 F5F5 F5F5 F5F5 F5F5 F5F5"
	$"F5F5 F5F5 F5F5 F5F5 F5F5 F5FF 0000 0000"
	$"0000 00FF FFFF FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF FFFF FFFF FFFF FFFF"
};

resource 'icl8' (kMyDskIcon, purgeable) {
	$"0000 00FF FFFF FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF FF00 0000 0000 0000 0000 0000"
	$"0000 00FF 0000 0000 0000 0000 0000 0000"
	$"0000 0000 FFFF 0000 0000 0000 0000 0000"
	$"0000 00FF 0000 0000 0000 0000 0000 0000"
	$"0000 0000 FF2A FF00 0000 0000 0000 0000"
	$"0000 00FF 0000 0000 0000 0000 0000 0000"
	$"0000 0000 FF2A 2AFF 0000 0000 0000 0000"
	$"0000 00FF 0000 0000 0000 0000 0000 0000"
	$"0000 0000 FF2A 2A2A FF00 0000 0000 0000"
	$"0000 00FF 0000 0000 0000 0000 0000 0000"
	$"0000 0000 FF2A 2A2A 2AFF 0000 0000 0000"
	$"0000 00FF 0000 0000 0000 0000 0000 0000"
	$"0000 0000 FF2A 2A2A 2A2A FF00 0000 0000"
	$"0000 00FF 0000 0000 0000 0000 0000 0000"
	$"0000 0000 FFFF FFFF FFFF FFFF 0000 0000"
	$"0000 00FF 0000 0000 0000 0000 0000 0000"
	$"0000 0000 00FA FAFA FAFA FAFF 0000 0000"
	$"0000 00FF 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 00FF 0000 0000"
	$"0000 00FF 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 00FF 0000 0000"
	$"0000 00FF 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 00FF 0000 0000"
	$"0000 00FF 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 00FF 0000 0000"
	$"0000 00FF 0000 00F5 E0FF E0E0 E0E0 E0E0"
	$"E0E0 E0E0 E0E0 0000 0000 00FF 0000 0000"
	$"0000 00FF 0000 00E0 5454 AB2A 2A2A 2AFA"
	$"FFFA 2AAB 5454 E000 0000 00FF 0000 0000"
	$"0000 00FF 0000 00E0 5454 AB2A 2A2A 2AFF"
	$"00FF 2AAB 5454 54E0 0000 00FF 0000 0000"
	$"0000 00FF 0000 00E0 5454 AB2A 2A2A 2AFF"
	$"00FF 2AAB 5454 54E0 0000 00FF 0000 0000"
	$"0000 00FF 0000 00E0 5454 AB2A 2A2A 2AFF"
	$"00FF 2AAB 5454 54E0 0000 00FF 0000 0000"
	$"0000 00FF 0000 00E0 5454 AB2A 2A2A 2AFA"
	$"FFFA 2AAB 5454 54E0 0000 00FF 0000 0000"
	$"0000 00FF 0000 00E0 5454 54AB ABAB ABAB"
	$"ABAB AB54 5454 54E0 0000 00FF 0000 0000"
	$"0000 00FF 0000 00E0 5454 5454 5454 5454"
	$"5454 5454 5454 54E0 0000 00FF 0000 0000"
	$"0000 00FF 0000 00E0 5454 5454 5454 5454"
	$"5454 5454 5454 54E0 0000 00FF 0000 0000"
	$"0000 00FF 0000 00E0 5454 54AB ABAB ABAB"
	$"ABAB ABAB 5454 54E0 0000 00FF 0000 0000"
	$"0000 00FF 0000 00E0 5454 AB2A 2A2A 2A2A"
	$"2A2A 2A2A AB54 54E0 0000 00FF 0000 0000"
	$"0000 00FF 0000 00E0 5454 AB2A 2A2A 2A2A"
	$"2A2A 2A2A AB54 54E0 0000 00FF 0000 0000"
	$"0000 00FF 0000 00E0 5454 AB2A 2A2A EC2A"
	$"EC2A 2A2A AB54 54E0 0000 00FF 0000 0000"
	$"0000 00FF 0000 00E0 5454 AB2A 2A2A ECEC"
	$"2A2A 2A2A AB54 54E0 0000 00FF 0000 0000"
	$"0000 00FF 0000 00E0 5454 AB2A 2A2A EC2A"
	$"2A2A 2A2A AB54 54E0 0000 00FF 0000 0000"
	$"0000 00FF 0000 00E0 5454 AB2A 2A2A 2A2A"
	$"2A2A 2A2A AB54 54E0 0000 00FF 0000 0000"
	$"0000 00FF 0000 00F5 FFFF E0E0 E0E0 E0E0"
	$"E0E0 E0E0 FFE0 E0F5 0000 00FF 0000 0000"
	$"0000 00FF 0000 0000 0000 0000 0000 0000"
	$"0000 0000 0000 0000 0000 00FF 0000 0000"
	$"0000 00FF FFFF FFFF FFFF FFFF FFFF FFFF"
	$"FFFF FFFF FFFF FFFF FFFF FFFF"
};

resource 'icl4' (kMyAppIcon, purgeable) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 0FFF FFFF FFFF FFFF FFFF FFF0 0000"
	$"0000 FCCC CCCC CCCC CCCC CCCC CCCF 0000"
	$"0000 FCCC CCCC CCCC CCCC CCCC CCCF 0000"
	$"0000 FCCC EEEE EEEE EEEE EEEE CCCF 0000"
	$"0000 FCCE 0D0D 0D0D 0D0D 0D0D 0CCF 0000"
	$"0000 FCCE D0D6 60D0 D0D6 60D0 CCCF 0000"
	$"0000 FCCE 0D06 6D0D 0D66 0D0D 0CCF 0000"
	$"0000 FCCE D0D6 60D0 D660 D0D0 CCCF 0000"
	$"0000 FCCE 0D06 6D0D 660D 0D0D 0CCF 0000"
	$"0000 FCCE D0D6 60D6 60D0 D0D0 CCCF 0000"
	$"0000 FCCE 0D06 6D66 0D0D 0D0D 0CCF 0000"
	$"0000 FCCE D0D6 6660 D0D0 D0D0 CCCF 0000"
	$"0000 FCCE 0D06 660D 0D0D 0D0D 0CCF 0000"
	$"0000 FCCE D0D6 60D0 D0D0 D0D0 CCCF 0000"
	$"0000 FCCE 0D06 0D0D 0D0D 0D0D 0CCF 0000"
	$"0000 FCCE D0D0 D0D0 D0D0 D0D0 CCCF 0000"
	$"0000 FCCC 0C0C 0C0C 0C0C 0C0C 0CCF 0000"
	$"0000 FCCC CCCC CCCC CCCC CCCC CCCF 0000"
	$"0000 FCCC CCCC CCCC CCCC CCCC CCCF 0000"
	$"0000 FCCC CCCC CCCC CCCC CCCC CCCF 0000"
	$"0000 FCCC CCCC CCCC CCCC CCCC CCCF 0000"
	$"0000 FCCC CCCC CCCC FFFF FFFF CCCF 0000"
	$"0000 FCCC CCCC CCCC 0C0C 0C0C CCCF 0000"
	$"0000 FCC8 8CCC CCCC CCCC CCCC CCCF 0000"
	$"0000 FCC3 3CCC CCCC CCCC CCCC CCCF 0000"
	$"0000 FCCC CCCC CCCC CCCC CCCC CCCF 0000"
	$"0000 0FFF FFFF FFFF FFFF FFFF FFF0 0000"
	$"0000 0FEE EEEE EEEE EEFF FFFF FFF0 0000"
	$"0000 0FDD DDDD DDEE EEEE EEFF FFF0 0000"
	$"0000 0FDD DDDD DDDD DEEE EEEE EEF0 0000"
	$"0000 0FFF FFFF FFFF FFFF FFFF FFF0"
};

resource 'icl4' (kMyRomIcon, purgeable) {
	$"000F FFFF FFFF FFFF FFFF FF00 0000 0000"
	$"000F 0C0C 0C0C 0C0C 0C0C 0FF0 0000 0000"
	$"000F C0C0 C0C0 C0C0 C0C0 CFCF 0000 0000"
	$"000F 0C0C 0C0C 0C0C 0C0C 0FCC F000 0000"
	$"000F C0C0 C0C0 C0C0 C0C0 CFCC CF00 0000"
	$"000F 0C0C 0C0C 0C0C 0C0C 0FCC CCF0 0000"
	$"000F C0C0 C0C0 C0C0 C0C0 CFFF FFFF 0000"
	$"000F 0C0C 0C0C 0C0C 0C0C 0C0C 0C0F 0000"
	$"000F C0CF CFCF CFCF CFCF C0C0 C0CF 0000"
	$"000F 0CF0 F0F0 F0F0 F0F0 FC0C 0C0F 0000"
	$"000F C0FF FFFF FFFF FFFF F0C0 C0CF 0000"
	$"000F 0CFF FFFF FFFF FFFF FC0C 0C0F 0000"
	$"000F C0FF FFFF FFFF FFFF F0C0 C0CF 0000"
	$"000F 0CFF FFFF FFFF FFFF FC0C 0C0F 0000"
	$"000F C0FF FFFF FFFF FFFF F0C0 C0CF 0000"
	$"000F 0CFF FFFF FFFF FFFF FC0C 0C0F 0000"
	$"000F C0F0 F0F0 F0F0 F0F0 F0C0 C0CF 0000"
	$"000F 0C0F 0F0F 0F0F 0F0F 0C0C 0C0F 0000"
	$"000F C0C0 C0C0 C0C0 C0C0 C0C0 C0CF 0000"
	$"000F 0C0F 0F0F 0F0F 0F0F 0C0C 0C0F 0000"
	$"000F C0F0 F0F0 F0F0 F0F0 F0C0 C0CF 0000"
	$"000F 0CFF FFFF FFFF FFFF FC0C 0C0F 0000"
	$"000F C0FF FFFF FFFF FFFF F0C0 C0CF 0000"
	$"000F 0CFF FFFF FFFF FFFF FC0C 0C0F 0000"
	$"000F C0FF FFFF FFFF FFFF F0C0 C0CF 0000"
	$"000F 0CFF FFFF FFFF FFFF FC0C 0C0F 0000"
	$"000F C0FF FFFF FFFF FFFF F0C0 C0CF 0000"
	$"000F 0CF0 F0F0 F0F0 F0F0 FC0C 0C0F 0000"
	$"000F C0CF CFCF CFCF CFCF C0C0 C0CF 0000"
	$"000F 0C0C 0C0C 0C0C 0C0C 0C0C 0C0F 0000"
	$"000F C0C0 C0C0 C0C0 C0C0 C0C0 C0CF 0000"
	$"000F FFFF FFFF FFFF FFFF FFFF FFFF"
};

resource 'icl4' (kMyDskIcon, purgeable) {
	$"000F FFFF FFFF FFFF FFFF F000 0000 0000"
	$"000F 0000 0000 0000 0000 FF00 0000 0000"
	$"000F 0000 0000 0000 0000 F0F0 0000 0000"
	$"000F 0000 0000 0000 0000 FC0F 0000 0000"
	$"000F 0000 0000 0000 0000 F0C0 F000 0000"
	$"000F 0000 0000 0000 0000 FC0C 0F00 0000"
	$"000F 0000 0000 0000 0000 F0C0 C0F0 0000"
	$"000F 0000 0000 0000 0000 FFFF FFFF 0000"
	$"000F 0000 0000 0000 0000 0DDD DDDF 0000"
	$"000F 0000 0000 0000 0000 0000 000F 0000"
	$"000F 0000 0000 0000 0000 0000 000F 0000"
	$"000F 0000 0000 0000 0000 0000 000F 0000"
	$"000F 0000 0000 0000 0000 0000 000F 0000"
	$"000F 0000 FFFF FFFF FFFF FF00 000F 0000"
	$"000F 000F CCEC 0C0D FD0E CCF0 000F 0000"
	$"000F 000F CCE0 C0CF 0FCE CCCF 000F 0000"
	$"000F 000F CCEC 0C0F 0F0E CCCF 000F 0000"
	$"000F 000F CCE0 C0CF 0FCE CCCF 000F 0000"
	$"000F 000F CCEC 0C0D FD0E CCCF 000F 0000"
	$"000F 000F CCCE EEEE EEEC CCCF 000F 0000"
	$"000F 000F CCCC CCCC CCCC CCCF 000F 0000"
	$"000F 000F CCCC CCCC CCCC CCCF 000F 0000"
	$"000F 000F CCCE EEEE EEEE CCCF 000F 0000"
	$"000F 000F CCEC 0C0C 0C0C ECCF 000F 0000"
	$"000F 000F CCE0 C0C0 C0C0 ECCF 000F 0000"
	$"000F 000F CCEC 0C6C 6C0C ECCF 000F 0000"
	$"000F 000F CCE0 C066 C0C0 ECCF 000F 0000"
	$"000F 000F CCEC 0C6C 0C0C ECCF 000F 0000"
	$"000F 000F CCE0 C0C0 C0C0 ECCF 000F 0000"
	$"000F 0000 FFFF FFFF FFFF FFF0 000F 0000"
	$"000F 0000 0000 0000 0000 0000 000F 0000"
	$"000F FFFF FFFF FFFF FFFF FFFF FFFF"
};

resource 'ics#' (kMyAppIcon, purgeable) {
	{	/* array: 2 elements */
		/* [1] */
		$"0000 1FF8 2004 2FF4 2814 2A94 2B14 2A14"
		$"2814 2FF4 2004 2004 20F4 2004 1FF8 1FF8",
		/* [2] */
		$"0000 1FF8 3FFC 3FFC 3FFC 3FFC 3FFC 3FFC"
		$"3FFC 3FFC 3FFC 3FFC 3FFC 3FFC 1FF8 1FF8"
	}
};

resource 'ics#' (kMyRomIcon, purgeable) {
	{	/* array: 2 elements */
		/* [1] */
		$"7FE0 4030 4028 403C 4004 5FC4 5FC4 5FC4"
		$"5FC4 4004 5FC4 5FC4 5FC4 5FC4 4004 7FFC",
		/* [2] */
		$"7FE0 7FF0 7FF8 7FFC 7FFC 7FFC 7FFC 7FFC"
		$"7FFC 7FFC 7FFC 7FFC 7FFC 7FFC 7FFC 7FFC"
	}
};

resource 'ics#' (kMyDskIcon, purgeable) {
	{	/* array: 2 elements */
		/* [1] */
		$"7FE0 4030 4028 403C 4004 4004 4004 4FC4"
		$"4AA4 4BA4 4824 4BA4 4AA4 4FE4 4004 7FFC",
		/* [2] */
		$"7FE0 7FF0 7FF8 7FFC 7FFC 7FFC 7FFC 7FFC"
		$"7FFC 7FFC 7FFC 7FFC 7FFC 7FFC 7FFC 7FFC"
	}
};

resource 'ics4' (kMyAppIcon, purgeable) {
	$"0000 0000 0000 0000 000F FFFF FFFF F000"
	$"00FC CCCC CCCC CF00 00FC EEEE EEEE CF00"
	$"00FC ED0D 0D0C CF00 00FC E060 60D0 CF00"
	$"00FC ED66 0D0C CF00 00FC E060 D0D0 CF00"
	$"00FC ED0D 0D0C CF00 00FC D0C0 C0C0 CF00"
	$"00FC CCCC CCCC CF00 00FC 8CCC CCCC CF00"
	$"00FC 3CCC FFFF CF00 00FC CCCC CCCC CF00"
	$"000F FFFF FFFF F000 000F FFFF FFFF F0"
};

resource 'ics4' (kMyRomIcon, purgeable) {
	$"0FFF FFFF FFF0 0000 0F0C 0C0C 0CFF 0000"
	$"0FC0 C0C0 C0FC F000 0F0C 0C0C 0CFF FF00"
	$"0FC0 C0C0 C0C0 CF00 0F0F FFFF FF0C 0F00"
	$"0FCF FFFF FFC0 CF00 0F0F FFFF FF0C 0F00"
	$"0FCF FFFF FFC0 CF00 0F0C 0C0C 0C0C 0F00"
	$"0FCF FFFF FFC0 CF00 0F0F FFFF FF0C 0F00"
	$"0FCF FFFF FFC0 CF00 0F0F FFFF FF0C 0F00"
	$"0FC0 C0C0 C0C0 CF00 0FFF FFFF FFFF FF"
};

resource 'ics4' (kMyDskIcon, purgeable) {
	$"0FFF FFFF FFF0 0000 0F00 0000 00FF 0000"
	$"0F00 0000 00FC F000 0F00 0000 00FF FF00"
	$"0F00 0000 000D DF00 0F00 0000 0000 0F00"
	$"0F00 0000 0000 0F00 0F00 FFFF FF00 0F00"
	$"0F00 FCE0 ECF0 0F00 0F00 FCEE ECF0 0F00"
	$"0F00 FCCC CCF0 0F00 0F00 FCEE ECF0 0F00"
	$"0F00 FCE0 ECF0 0F00 0F00 FFFF FFF0 0F00"
	$"0F00 0000 0000 0F00 0FFF FFFF FFFF FF"
};

resource 'ics8' (kMyAppIcon, purgeable) {
	$"0000 0000 0000 0000 0000 0000 0000 0000"
	$"0000 00FF FFFF FFFF FFFF FFFF FF00 0000"
	$"0000 FF2B 2B2B 2B2B 2B2B 2B2B 2BFF 0000"
	$"0000 FF2B FCFC FCFC FCFC FCFC 2BFF 0000"
	$"0000 FF2B FC2A 2A2A 2A2A 2A00 2BFF 0000"
	$"0000 FF2B FC2A EC2A EC2A 2A00 2BFF 0000"
	$"0000 FF2B FC2A ECEC 2A2A 2A00 2BFF 0000"
	$"0000 FF2B FC2A EC2A 2A2A 2A00 2BFF 0000"
	$"0000 FF2B FC2A 2A2A 2A2A 2A00 2BFF 0000"
	$"0000 FF2B FA00 0000 0000 0000 2BFF 0000"
	$"0000 FF2B 2B2B 2B2B 2B2B 2B2B 2BFF 0000"
	$"0000 FF2B E32B 2B2B 2B2B 2B2B 2BFF 0000"
	$"0000 FF2B D82B 2B2B FFFF FFFF 2BFF 0000"
	$"0000 FF2B 2B2B 2B2B 2B2B 2B2B 2BFF 0000"
	$"0000 00FD FDFD FDFD FDFF FFFF FF00 0000"
	$"0000 00FF FFFF FFFF FFFF FFFF FF"
};

resource 'ics8' (kMyRomIcon, purgeable) {
	$"00FF FFFF FFFF FFFF FFFF FF00 0000 0000"
	$"00FF F5F5 F5F5 F5F5 F5F5 FFFF 0000 0000"
	$"00FF F5F5 F5F5 F5F5 F5F5 FF2B FF00 0000"
	$"00FF F5F5 F5F5 F5F5 F5F5 FFFF FFFF 0000"
	$"00FF F5F5 F5F5 F5F5 F5F5 F5F5 F5FF 0000"
	$"00FF F5FF FFFF FFFF FFFF F5F5 F5FF 0000"
	$"00FF F5FF FFFF FFFF FFFF F5F5 F5FF 0000"
	$"00FF F5FF FFFF FFFF FFFF F5F5 F5FF 0000"
	$"00FF F5FF FFFF FFFF FFFF F5F5 F5FF 0000"
	$"00FF F5F5 F5F5 F5F5 F5F5 F5F5 F5FF 0000"
	$"00FF F5FF FFFF FFFF FFFF F5F5 F5FF 0000"
	$"00FF F5FF FFFF FFFF FFFF F5F5 F5FF 0000"
	$"00FF F5FF FFFF FFFF FFFF F5F5 F5FF 0000"
	$"00FF F5FF FFFF FFFF FFFF F5F5 F5FF 0000"
	$"00FF F5F5 F5F5 F5F5 F5F5 F5F5 F5FF 0000"
	$"00FF FFFF FFFF FFFF FFFF FFFF FFFF"
};

resource 'ics8' (kMyDskIcon, purgeable) {
	$"00FF FFFF FFFF FFFF FFFF FF00 0000 0000"
	$"00FF 0000 0000 0000 0000 FFFF 0000 0000"
	$"00FF 0000 0000 0000 0000 FF2A FF00 0000"
	$"00FF 0000 0000 0000 0000 FFFF FFFF 0000"
	$"00FF 0000 0000 0000 0000 00FA FAFF 0000"
	$"00FF 0000 0000 0000 0000 0000 00FF 0000"
	$"00FF 0000 0000 0000 0000 0000 00FF 0000"
	$"00FF 0000 E0E0 E0E0 E0E0 0000 00FF 0000"
	$"00FF 0000 E054 AB2A AB54 E000 00FF 0000"
	$"00FF 0000 E054 ABAB AB54 E000 00FF 0000"
	$"00FF 0000 E054 5454 5454 E000 00FF 0000"
	$"00FF 0000 E054 ABAB AB54 E000 00FF 0000"
	$"00FF 0000 E054 AB2A AB54 E000 00FF 0000"
	$"00FF 0000 E0FF E0E0 E0E0 E000 00FF 0000"
	$"00FF 0000 0000 0000 0000 0000 00FF 0000"
	$"00FF FFFF FFFF FFFF FFFF FFFF FFFF"
};
