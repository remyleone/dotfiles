		/* ./logos/alternate_oses/bsd.logo -- FreeBSD Logo */
	new_logo=calloc(1,sizeof(struct logo_info));

	logo_info_head=new_logo;

	new_logo->description=strdup("FreeBSD Logo");
	new_logo->name=strdup("bsd");
	new_logo->logo=strdup("[40;31m             ,        ,\n            /(        )`\n            \\ \\___   / |\n            /- _  `-/  \'\n           ([37m/\\/ \\ [31m\\   /\\\n           [37m/ /   | [31m`    \\\n           [34mO O   [37m) [31m/    |\n           [37m`-^--\'[31m`<     \'\n          [31m(_.)  _  )   /\n           [31m`.___/`    /\n             [31m`-----\' /\n[33m<----.     [31m__ / __   \\\n[33m<----|====[31mO)))[33m==[31m) \\) /[33m====\n[33m<----\'    [31m`--\' `.__,\' \\\n             |        |\n              \\       /       /\\\n         [32m______[31m( (_  / \\______/\n       [32m,\'  ,-----[31m\'   |\n       [32m`--{__________)[30m\n");
	new_logo->ysize=19;
	new_logo->ascii_logo=strdup("             ,        ,\n            /(        )`\n            \\ \\___   / |\n            /- _  `-/  \'\n           (/\\/ \\ \\   /\\\n           / /   | `    \\\n           O O   ) /    |\n           `-^--\'`<     \'\n          (_.)  _  )   /\n           `.___/`    /\n             `-----\' /\n<----.     __ / __   \\\n<----|====O)))==) \\) /====\n<----\'    `--\' `.__,\' \\\n             |        |\n              \\       /       /\\\n         ______( (_  / \\______/\n       ,\'  ,-----\'   |\n       `--{__________) \n");
	new_logo->ascii_ysize=19;
	new_logo->sysinfo_position=0;
	new_logo->next_logo=NULL;
	logo_info_tail=new_logo;
		/* ./logos/alternate_oses/bsd_banner.logo -- FreeBSD Logo */
	new_logo=calloc(1,sizeof(struct logo_info));

	logo_info_tail->next_logo=new_logo;

	new_logo->description=strdup("FreeBSD Logo");
	new_logo->name=strdup("bsd_banner");
	new_logo->logo=strdup("[40;31m             ,        ,\n            /(        )`\n            \\ \\___   / |\n            /- _  `-/  \'\n           ([37m/\\/ \\ [31m\\   /\\\n           [37m/ /   | [31m`    \\\n           [34mO O   [37m) [31m/    |\n           [37m`-^--\'[31m`<     \'\n          [31m(_.)  _  )   /\n           [31m`.___/`    /\n             [31m`-----\' /\n[33m<----.     [31m__ / __   \\\n[33m<----|====[31mO)))[33m==[31m) \\) /[33m====\n[33m<----\'    [31m`--\' `.__,\' \\\n             |        |\n              \\       /       /\\\n         [32m______[31m( (_  / \\______/\n       [32m,\'  ,-----[31m\'   |\n       [32m`--{__________)[30m\n");
	new_logo->ysize=19;
	new_logo->ascii_logo=strdup("             ,        ,\n            /(        )`\n            \\ \\___   / |\n            /- _  `-/  \'\n           (/\\/ \\ \\   /\\\n           / /   | `    \\\n           O O   ) /    |\n           `-^--\'`<     \'\n          (_.)  _  )   /\n           `.___/`    /\n             `-----\' /\n<----.     __ / __   \\\n<----|====O)))==) \\) /====\n<----\'    `--\' `.__,\' \\\n             |        |\n              \\       /       /\\\n         ______( (_  / \\______/\n       ,\'  ,-----\'   |\n       `--{__________) \n");
	new_logo->ascii_ysize=19;
	new_logo->sysinfo_position=1;
	new_logo->next_logo=NULL;
	logo_info_tail=new_logo;
