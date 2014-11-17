waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["forum","Forum"];
player createDiarySubject ["teamspeak","TeamSpeak"];
player createDiarySubject ["changelog","Change Log"];
player createDiarySubject ["serverrules","Server Regelwerk"];
player createDiarySubject ["policerules","Polizei Regelwerk"];
player createDiarySubject ["katalog","Bußgeldkatalog"];
//player createDiarySubject ["civrules","Civilian Rules"];
//player createDiarySubject ["illegalitems","Illegal Activity"];
//player createDiarySubject ["gangrules","Gang Rules"];
//player createDiarySubject ["terrorrules","Terrorism Rules"];
//player createDiarySubject ["controls","Controls"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/	

player createDiaryRecord["forum",
		[
			"Das Zeitalter Forum",
				"
					Unser Forum findest du unter -> www.das-zeitalter.de
				"
		]
	];
	
	player createDiaryRecord["teamspeak",
		[
			"Das Zeitalter TeamSpeak",
				"
					Unser TeamSpeak findest du unter ->  ts3.das-zeitalter.de
				"
		]
	];
	
	player createDiaryRecord["changelog",
		[
			"Das Zeitalter Changelog",
				"
					Unser Changelog findest du im Das Zeitalter Forum. -> www.das-zeitalter.de
				"
		]
	];
	
	player createDiaryRecord["serverrules",
		[
			"§15 Sanitäter / ADAC",
				"
			ADAC-Mitarbeiter und Sanitäter dürfen unter keinen Umständen getötet werden. <br/>
			Hierbei gilt auch, dass die Besagten nicht als Geisel genommen werden dürfen. <br/>
			Des Weiteren dürfen die Fahrzeuge von ADAC und Sanitätern unter keinen Umständen geknackt oder geklaut werden. <br/><br/>
				"
		]
	];
	
	player createDiaryRecord["serverrules",
		[
			"§14 RDM / VDM",
				"
				Random Deathmatching / Vehicle Deathmatching ist strengstens verboten und wird mit einem Kick/Bann geahndet. <br/>
				Dies zerstört die ursprünglich erwähnte Rollenspielerwartung und somit auch den Spielspaß. <br/>
				Spieler die gegen diese Regelung verstoßen sollen umgehend gemeldet werden. <br/><br/>
				"
		]
	];
	
	player createDiaryRecord["serverrules",
		[
			"§13 Staatsbankraub",
				"
				Die Staatsbank darf ausgeraubt werden, wenn mindestens 5 Polizisten online sind. <br/>
				Gegen die Räuber darf sofort mit tödlicher Gewalt (Taser erwünscht) vorgegangen werden. <br/>
				Zivilisten die sich während eines Staatsbankraubes in der Nähe befinden, müssen mit Beschuss und dem Verlust ihres Lebens rechnen. <br/>
				Die RDM Regel gilt hierbei nicht. <br/>
				Die Staatsbank darf nichtausgeraubt werden, wenn ein Erstattungsevent im Gange ist. <br/><br/>

				"
		]
	];
	
	player createDiaryRecord["serverrules",
		[
			"§12 Regierungsgebiet (InGame Erstattungen)",
				"
				Unser Bürgermeister Ripper wird in regelmäßigen Abständen auf dem Regierungsgebiet Erstattungen tätigen. <br/>
				Dies wird vorher im Chat angekündigt. <br/>
				Während den Erstattungen ist das Regierungsgebiet streng von der Polizei bewacht. <br/>
				Hierbei ist es ausdrücklich erlaubt, Bürgermeister Ripper zu überfallen. Sobald das Event startet, darf der überfall auch ohne Ankündigung stattfinden. <br/>
				Dabei muss darauf geachtet werden, dass keine Zivilisten zu Schaden kommen. <br/>
				Während eines Erstattungsevents ist ein Staatsbankraub strengstens verboten!!! <br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"§11 Safezones", 
				"
				Alle größeren Städte gelten als Safezones (Kavala, Sofia, Athira) und sind mit einem roten Kreis auf der Karte markiert. <br/>
				Weiterhin gelten das Kavala Hauptquartier der Polizei, alle Krankenhäuser und ADAC Werkstätten als Safezones und dürfen nicht angegriffen werden. <br/>
				Das „Reinschießen“ in eine Safezone ist strengstens verboten und wir mit einem Kick/Bann geahndet. <br/>
				Das Einnehmen von Safezones ist verboten. Rebellenwaffen fügen des Weitern hier keinen Schaden zu, Polizeiwaffen allerdings schon. <br/>
				Innerhalb von Safezones dürfen keine Autos geknackt (Dietrich) oder gestohlen werden (bspw. nicht abgeschlossene Fahrzeuge). <br/>
				Dies gilt auch für sämtliche oben gelistete Safezones, insbesondere auch für ADAC-Werkstätten und Krankenhäuser. <br/>
				Waffen müssen innerhalb einer Safezone so schnell es geht geschultert werden (Shift-H) oder in dem Rucksack verstaut werden, ansonsten hat die Polizei sofort Feuererlaubnis auf den jeweiligen Spieler. <br/>
				Dabei muss, wenn möglich, zuerst der Taser verwendet werden. <br/>
				Das Benutzen von scharfer Munition ist für Polizisten allerdings in diesem Falle auch erlaubt. <br/>
				Spieler, die innerhalb einer Safezone wahllos um sich schießen, dürfen von der Polizei ohne Vorwarnung erschossen werden. <br/>
				Der überflug / Landeanflug einer Safezone mit Helikoptern ist streng untersagt und darf nur mit einer besonderen Landeerlaubnis (durch Polizei) geschehen. <br/>
				Dabei haben Polizisten sofort EMP- und Schussfreigabe, wenn sich nicht an diese Regel gehalten wird. Dabei muss zuerst versucht werden, den jeweiligen Helikopter fluguntauglich zu machen. <br/>
				Weiterhin muss darauf geachtet werden, dass keine Zivilisten verletzt werden. <br/>
				Ausgenommen hiervon sind ADAC-Mitarbeiter, Sanitäter und Polizisten, wenn diese in einer Notfallsituation dringend einen Helikopter benötigen. <br/>  
				Das Durchfahren der Safezones mit einem Hunter, Ifrit oder Stryder ist strengstens untersagt und wird mit Kick/Bann geahndet. <br/>
				Ausgenommen hiervon sind die Einsatzkräfte der Polizei, des ADACs und der Sanitäter. <br/><br/>
				"
		]
	];
	
	player createDiaryRecord["serverrules",
		[
			"§10 Illegale Waffe und Fahrzeuge",
				"
				Waffen gelten als illegal, wenn: <br/>
					- sie im Rebellenshop gekauft werden oder dort gelistet sind. <br/>
					- Rebellen die der Polizei vorbehaltenen Waffen tragen (MX-Reihe, Taser). <br/>
				Waffen gelten als legal, wenn: <br/>
					- diese in einem Waffenladen (ausgenommen: Rebellenshops) gekauft wurden. <br/>
					- diese in Verbindung mit einem Waffenschein getragen werden. <br/>
				Fahrzeuge gelten als illegal, wenn: <br/>
					- diese im Rebellenshop gekauft wurden oder in diesem gelistet sind (auch Helikopter). <br/><br/>
				"
		]
	];
					
	
	player createDiaryRecord ["serverrules",
		[
			"§9 Gangs", 
				"
					Die Gründung oder das Beitreten in eine Gang ist nicht illegal, sofern die  jeweilige Gang keine illegalen Handlungen ausführt. <br/>
					Die jeweilige Gang darf ihr Clangebiet verteidigen, Polizisten müssen einen Raid vorher ankündigen. <br/>
					Ganggebiete dürfen auch von anderen Rebellen angegriffen werden, dies muss mit einer Ankündigung bekannt gemacht werden. <br/>
					Clankriege / Gangkriege sind im Forum bekannt zu machen. <br/>
					Ansonsten besitzen sie keine Gültigkeit! Ein Krieg zwischen einzelnen Personen, die keiner Gang angehören, ist nicht möglich. <br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"§8 Rebellenregeln", 
				"
				Die Rebellen leisten bewaffneten Widerstand gegen die Besatzungsmacht (Militärpolizei) / Regierung. <br/>
				Dabei soll nicht jede Gelegenheit genutzt werden, um Polizisten oder sogar Zivilisten zu erschießen. <br/>
				Vielmehr wird der rebellische Widerstand durch List und Rollenspiel sichtbar gemacht. Friedliche Lösungen sind also erwünscht! <br/>
				Weiterhin gilt: Jeder rebellische Angriff muss einen guten Grund haben. Dieser muss der Polizei mitgeteilt werden. <br/>
				Sollte ein rebellischer Angriff stattfinden und weitere Rebellen entschließen sich dem Angriff beizutreten, dann muss dieses der Polizei (etc.) mitgeteilt werden. <br/>
				Die Nutzung von Sprengstoff ist erlaubt. <br/>
				Dieser darf aber lediglich gegen Polizisten eingesetzt werden und nur bei Angriffen / Hinterhalten (etc.) verwendet werden. <br/>
				Der Einsatz von Sprengstoff gegen Zivilisten wird als RDM gewertet und ist streng verboten. <br/>
				Das Töten von unbewaffneten Zivilisten ist verboten. Diese dürfen lediglich verletzt werden. <br/>
				Sollte ein Zivilist trotzdem ums Leben kommen, dann muss Schadensersatz geleistet werden. <br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"§7 Rebellen", 
				"
				Als Rebell gilt, wer eine Rebellenlizenz besitzt. <br/>
				Jede Person, die Rebellenkleidung / Rebellenwaffen trägt, gilt als Rebell. <br/>
				Jede Person, die ein Rebellenfahrzeug (auch Luftfahrzeuge) fährt oder sich in diesem befindet, gilt als Rebell (ausgenommen sind hier Geiseln). <br/>
				Stellt ein Rebell eine unmittelbare Gefahr da, darf dieser von der Polizei mit scharfer Munition beschossen werden. Dabei ist das Roleplay auch von der Polizei strikt einzuhalten. <br/>
				Jede Person, die rebelliert oder rebellische Handlungen ausführt gilt als gesuchter Krimineller und darf nach Belieben von der Polizei kontrolliert werden. <br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"§6 Die New Life Regel", 
				"
				Die sogenannte „New Life“ – Regel gilt für ALLE Spieler (Zivilisten, Polizisten). <br/>
				Nach einem Todesfall muss der Spieler mindestens 15 Echtzeitminuten von dem Tötungsort fernbleiben. <br/>
				Dabei muss dies in einem Radius von mindestens 1 km geschehen. <br/>
				Er darf weiterhin auch in dieser Zeit nicht mehr in die Kampfhandlung eingreifen (bspw. durch Scharfschützenfeuer aus mind. 1km Entfernung). <br/>
				Die New Life – Regel gilt, wenn:<br/>
					- du von einem Polizisten, Rebellen, Gangmitglied (etc.) getötet wurdest (gilt auch bei Verfolgungsjagden). <br/>
					- du durch einen von dir verschuldeten Unfall (Autounfall, etc.) getötet wurdest. <br/>
					- du dich in abgesperrten Bereichen befindest und du getötet wirst (siehe dazu: Sperrzonen). <br/>
					- du dich absichtlich tötest. <br/>	
				Die New Life – Regel gilt nicht, wenn: <br/>
					- du von einem Zivilisten getötet wurdest, der kein Rebell (feststellbar an Kleidung und Waffen) ist. <br/>
					- du wahllos getötet wurdest (RDM/VDM/Versehen/ usw.). <br/>
					- du  durch einen Disconnect (Ausnahme: Combatlogging) oder D-Sync getötet wurdest und ein „Re-Connect“ von Nöten ist. <br/>
					- du das Spiel beendest und zu einem späteren Zeitpunkt weiterspielst. <br/><br/>

				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"§5 Die Grundregeln (InGame)", 
				"
				Grundsätzlich gilt: Missachtete Regeln werden mit einer nach dem Ermessen der Admins gewählten Strafe geahndet! <br/>
				Dies kann in einem Kick oder einem temporären / permanenten Bann enden. <br/>
				Das Stören durch unrealistische, unnötige oder mutwillige Aktionen ist strengstens untersagt.<br/>
				Das sogenannte „Lobbyhopping“, um schnell von der einen zur anderen Stadt umzuloggen, ist strikt untersagt und führt zu einem Bann. <br/>
				Das sogenannte „Combatlogging“ ist streng verboten. Dies gilt auch, wenn ein Sanitäter verständigt wird („Request Medic“ – Button). <br/>
				Ein Verstoß führt zu einem temporären / permanenten Bann. Die Respawn – Zeit muss eingehalten werden! <br/>
				Im Side-Chat (Zivilisten) darf nicht geredet werden, dieser dient lediglich zum Schreiben. <br/>
				Spieler die diese Regelung missachten, sollen dem Admin-Team gemeldet werden. <br/>
				Um eine realistische und gute Kommunikation zu gewährleisten, sollte möglichst jeder Spieler ein passables Headset besitzen und dieses auch verwenden. <br/><br/>

				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"§4 Cheating", 
				"
				Wir dulden keine Spieler, die sich durch das Nutzen von Programmen oder das Ausnutzen von Fehlern im Spiel<br/>
				einen Vorteil gegenüber den Mitspielern verschaffen.<br/>
				Sogenannte „Cheater“ werden sofort von der Spielegemeinschaft „Das Zeitalter“ ausgeschlossen und permanent gebannt.<br/>
				Ansonsten liegt die Strafe für den Verstoß dieser Regelung bei den Admins.<br/>
				Solltet ihr Mitspieler sehen, die im Rahmen dieser Regelung als auffällig erscheinen, dann bitten wir euch, diese sofort dem Adminteam zu melden.<br/>
				Nur so kann ein reibungsloser Spielspaß für alle entstehen.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"§3 TeamSpeak", 
				"
				Unser TeamSpeak ist zu finden unter: ts3.das-zeitalter.de <br/>
				Hier könnt ihr gerne mit euren Mitspielern kommunizieren oder diskutieren. <br/>
				Weiterhin sind Admins und Community Manager / Betreuer hier die meiste Zeit zu erreichen. <br/>
				Bitte findet euch bei einer Anfrage in einem der Supporträume ein und schreibt das jeweilig erwünschte Teammitglied per CHAT an („Anstupsen“ wird ignoriert). <br/>
				Euch wird so schnell es geht geholfen. <br/>
				Da wir ein deutscher Server sind, ist die deutsche und englische Sprache vorrangig bei uns vertreten. <br/>
				Anderweitige Sprachen können von uns nicht bearbeitet werden, wir versuchen aber unser Bestes. <br/><br/>
				"
		]
	];
	player createDiaryRecord ["serverrules",
		[
			"§2 Einverständnis", 
				"
				Mit dem Betreten des Servers müsst ihr euch automatisch auch an die hier niedergeschriebenen Serverregeln halten. <br/>
				Wir setzen dabei voraus, dass ihr diese gelesen und verstanden habt. <br/>
				Solltet ihr vorab Fragen bezüglich dieses Regelkataloges haben, dann können diese gerne im TeamSpeak persönlich besprochen werden. <br/><br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"§1 Vorwort", 
				"
				Herzlich Willkommen auf unserem Altis Life Server! <br/>

				Der Fokus unserer Spielegemeinschaft ist die Zufriedenheit aller Spieler.<br/>
				Dabei versuchen wir durch dauerhafte Erreichbarkeit und Transparenz möglichst auf alle Anfragen,<br/>
				Probleme und Wünsche zu antworten und diese auch mit der Community zu besprechen.<br/>
				Des Weiteren legen wir einen hohen Wert auf das Rollenspiel („Roleplay“) und versuchen dies stets zu verbessern bzw. perfektionieren.<br/>
				Nur so kann der Spielspaß entstehen, für den Altis Life berühmt geworden ist.<br/>

				Wir dulden weiterhin keine rassistischen, fremdenfeindlichen und diskriminierenden äußerungen oder Aussagen auf unserem Server und werden, <br/>
				bei Verstoß, auch strikt gegen diese vorgehen. Spieler, die diese Ansicht nicht teilen, werden durch das Ermessen der Admins dauerhaft von unserem Server entfernt.<br/>
				Solltet ihr Anregungen, Wünsche oder Beschwerden haben, dann könnt ihr diese gerne mit uns im Forum oder im TeamSpeak (ts3.das-zeitalter.de) diskutieren.<br/>

				Im Nachfolgenden findet ihr die Serverregeln, welche für ALLE Spieler verbindlich gelten! Nur die Regelungen im Forum (www.das-zeitalter.de) und hier sind als geltend anzusehen.<br/>
				Andere Regelwerke werden sowohl von Admins und Polizisten nicht beachtet und besitzen demnach keine Gültigkeit.<br/>

				Wir wünschen allen viel Spaß beim Spielen!<br/><br/>

				"
		]
	];
	
// Police Section

	player createDiaryRecord ["policerules",
		[
			"§17 Kommandovergabe",
				"
				Befehlen von Ranghöheren muss Folge geleistet werden. Eine Wiedersetzung kann Konsequenzen nach sich ziehen! (z.B. Degradierung bishin zur Suspendierung vom Polizeidienst). <br/>
				Bei unklaren Situationen müssen sich rangniedrige Polizisten sofort an einen ranghohen Polizisten wenden. <br/><br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"§16 Der Taser",
				"
				Personen die sich weiter als 20 Meter entfernt befinden dürfen nicht getasert werden. <br/>
				Personen die sich in folgenden Fahrzeugen befinden dürfen NUR unmittelbar in Kavala aus ihren Fahrzeugen getasert werden! <br/>
				Personen die sich in der Luft befinden (Helicopter, Jet, Fallschirm) dürfe gar nicht getasert werden. <br/>
				Sollten Personen ohne triftigen Grund von Polizeibeamten getasert werden, darf Schmerzensgeld in Höhe von 5.000$ verlangt werden. <br/><br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"§15 Teamspeak",
				"
				Jeder Polizist hat sich bei Dienstbeginn auf dem Teamspeak (ts3.das-zeitalter.de) ein zu finden. <br/><br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"§14 Sperrzone",
				"
				Sperrzonen dürfen von Polizisten ausgerufen werden. Alle Personen müssen dann umgehend das Gebiet verlassen. <br/>
				Sollte man sich weigern darf der Taser und scharfe Munition verwendet werden. <br/>
				Die Verdächtigen können auch ohne Gewalt verhaftet werden. (Wenn dies möglich ist) <br/>
				Eine Durchsuchung darf ebenfalls ohne die Erlaubnis der verdächtigen Personen erfolgen. <br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"§13 (Versuchtes) Stehlen eines Polizeiwagens", 
				"
				Sollte ein Zivilist die Möglichkeit haben, ein Polizeifahrzeug wegzufahren, so darf der Taser und scharfe Munition verwendet werden. <br/>
				Sollte sich der Täter ergeben (Aussteigen und stehen bleiben) muss das Feuer sofort eingestellt werden. <br/>
				Der Verdächtige muss dann normal abgeführt werden. <br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"§12 Bankraub", 
				"
				Bei einem Bankraub dürfen alle aktiv beteiligten Personen erschossen werden. <br/>
				Unbeteiligte Personen müssen sich auf direktem Wege ~700 Meter von der Bank entfernen. <br/>
				Während einem Bankraub besteht für unbeteiligte User die Gefahr von Polizisten aus Versehen erschossen zu werden, Schadensansprüche werden ignoriert. <br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"§11 Mitnahme von Bürgern auf Streife", 
				"
				Beamte sind befugt andere Personen auf Streife mitzunehmen. <br/>
				Allerdings dürfen diese Personen in keiner Weise in einer Verfolgung aktiv eingreifen. <br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"§10 Straßensperren und Platzverweise", 
				"
				Polizisten ist es gestattet Straßen zu sperren. <br/>
				Sollten die Straßensperre durchbrochen oder umfahren werden, darf die Polizei Sie durch tasern (Punkt 17 beachten! (Der Taser)) oder scharfe Munition stoppen. <br/>
				Weiträumiges umfahren (~1KM) ist erlaubt. <br/>
				Sollte eine Person die Polizei bei der Arbeit behindern, so darf ein Platzverweis erteilt werden. <br/>
				Dieser ist 15 Minuten gültig und bezieht sich auf eine Reichweite von etwa 200 Meter. <br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"§9 Besitz von Illegalgen Gegenständen und Gebrauch", 
				"
				Illegale Gegenstände dürfen von der Polizei abgenommen werden. Zudem kann ein Strafzettel ausgestellt werden. Das konsumieren von Drogen ist ebenfalls verboten. <br/>
				Sollte ein Polizist dies sehen darf er Sie ohne Erlaubnis durchsuchen und ein Bußgeld von 8.000€ ausstellen. <br/>
				Alle Fahrzeuge gelten als illegal, wenn sie im Rebellenshop gekauft wurden oder dort gelistet sind. <br/>
				Der Polizei ist es freigestellt die o.g. Fahrzeuge bei Sichtung unmittelbar in Kavala bis zum nächsten Server-Restart einzubehalten. Zudem beträgt das Bußgeld 60.000$. <br/>
				Sollten die Fahrzeuge, durch verschulden eines Beamten bei der überführung zur Sammelstelle zerstört werden, muss das Fahrzeug dem Besitzer ersetzt werden. <br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"§8 Beschuss von Spielern", 
				"
				Sollte ein Spieler anfangen auf andere Spieler zu schießen, dürfen die Beamten sofort zurückschießen und den Straftäter töten. <br/>
				Polizei Beamte können andere Personen dazu auffordern, eine Einsatzstelle zu verlassen. <br/>
				Hierbei hat man einen angemessenen Abstand vom Einsatzort einzunehmen und zu halten (ca. 100m). <br/>
				Kommt man dieser Anweisung nicht nach, so darf nach Androhung der Taser benutzt werden. <br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"§7 Tragen von Waffen",
				"
				Zum verdeckten Führen von Schusswaffen ist eine Waffenlizenz nötig. <br/>
				Sollte einem Beamten auffallen, dass ein Spieler der offensichtlich keine Waffenlizenz besitzt, öffentlich Waffen trägt, kann er diesen nach einer Durchsuchung fragen. <br/>
				Sollte die Person nicht auf der Gesuchtenliste, aufgrund von Mord, Folter oder Beschuss, stehen, darf er die Durchsuchung verweigern. <br/>
				Sollte derjenige die Waffen nach Aufforderung nicht wegstecken, dürfen diese vom Beamten abgenommen werden. <br/><br/>
				" 
		]
	];
		
	player createDiaryRecord ["policerules",
		[
			"§6 Gründe für das Erschießen von Verdächtigen", 
				"
				Diebstahl eines Einsatzfahrzeuges <br/>
				Laufender Angriff/Beschuss auf Beamte/Zivilisten <br/>
				Personen, die Buguse betreiben um eine Verhaftung unmöglich zu machen <br/><br/>

				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"§5 Beihilfe zur Flucht",
				"
				Der Versuch, eine Verhaftung zu erschweren oder zu verhindern, erfüllt den Tatbestand der Beihilfe. <br/>
				Personen die einem Verdächtigen erfolgreich zur Flucht verholfen haben werden automatisch zum Mittäter und sind somit gleichzustellen wie der flüchtige Täter selbst. <br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"§4 Verfolgung der Verbrecher",
				"
				Hierbei muss man mindestens einmal warnen: z.B. Fahren sie sofort rechts ran oder Bitte rechts ranfahren ebenso gilt hier wieder die Martinshornregel (Siehe Punkt 2). <br/>
				Weigert er sich, darf das Fahrzeug durch rammen oder durch schießen auf die Reifen gestoppt werden. Nagelbänder dürfen ebenfalls verwendet werden. <br/>
				Sollte ein Verdächtiger auf der Flucht durch einen Polizisten oder deren Verschulden umkommen, ist dieser von der Gesuchtenliste zu entfernen. <br/>
				Verdächtige die abgeführt werden, dürfen ohne Erlaubnis auf illegale Gegenstände kontrolliert werden. (Mord, Folter, Angriff/Beschuss) StVo-Verstöße gehören nicht dazu! <br/>
				Im Wasser ist das Tasern / Cuffen (Handschellen anlegen) verboten, aber sobald jemand das Wasser betritt darf er ohne Verwarnung sofort erschossen werden. <br/>
				Verdächtige, die sich nach vorheriger Flucht auf Booten im Wasser befinden, dürfen ebenfalls ohne Vorwarnung erschossen werden. <br/>
				Hat der Verdächtige noch keinen Fluchtversuch unternommen, muss ihm die Chance auf eine normale Verhaftung gegeben werden (z.B. Vorwarnen, dann Fahren zu einem Steg oder Land) <br/> <br/>

				Wenn der Straftäter mit einem Luftfahrzeug flieht, muss er mit Sofort Landen etc. vorgewarnt werden. Kommt er dieser Aufforderung nicht nach, darf das Feuer eröffnet werden. <br/>
				Das tasern von Personen die sich in der Luft befinden (Helicopter, Jet, Fallschirm) ist strengstens untersagt. <br/> <br/> 

				Ein Täter, der laut Regelwerk erschossen wird, kann aufgeben und wird folglich nicht weiter beschossen, dazu müssen folgende Voraussetzungen erfüllt sein: <br/>
				Der Täter bleibt während der Flucht stehen und ergibt sich erkenntlich (Hände hoch nehmen (STRG und Shift + h)). <br/>
				Die Beamten geben ihr Bestes, dem Täter bei offensichtlicher Aufgabe genügend Zeit für diese Schritte zu geben. <br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"§3 Allgemeine Verkehrskontrollen",
				"
				Allgemeine Verkehrskontrollen dienen dazu Personen auf Ihre Identität, Polizeiakte sowie mitgeführte Objekte zu untersuchen, als auch dazu StVO-Verstöße zu ahnden. <br/>
				In einer Verkehrskontrolle ist folgender Ablauf einzuhalten.: <br/>
				Die Beamten weisen den zu überprüfenden an stehen zu bleiben / am Straßenrand zu parken oder ihnen zu folgen, <br/>
				ebenso wird eine Aufforderung stehen zu bleiben durch benutzen des Martinshorn geltend gemacht. <br/>
				Für die KfZ-Kontrolle: Fährt der zu überprüfende rechts ran / hält an, muss der Verdächtige aufgefordert werden das Fahrzeug zu verlassen. <br/>
				Wird diese Anweisung nicht beachtet darf nach Vorwarnung die Person aus dem Fahrzeug getasert werden. Hierbei gibt es Ausnahmen! Siehe Punkt 17 (Der Taser). <br/>
				Ist der zu Kontrollierende ausgestiegen, darf je nach Lage entweder ein Strafzettel ausgestellt werden wegen Verstoß gegen die StVO oder man fragt nach einer Durchsuchung. <br/>
				Sollte die Person nicht auf der Gesuchtenliste stehen darf die Durchsuchung verweigert werden. In diesem Falle kann ein Strafzettel über 4.000$ ausgestellt werden. <br/>
				Wenn sich die Person weigert den Strafzettel zu zahlen darf nach Vorwarnung trotzdem durchsucht werden. <br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"§2 Sonderrecht Blaulicht",
				"
				In einem regulären Streifenwagen genießt man ohne angeschaltetem Blaulicht keine Sondergenehmigungen bzgl. der Straßenverkehrs-Ordnung. <br/>
				Während ein eingeschaltetes Blaulicht den Beamten gestattet gegen die Richtlinien der StVO zu verstoßen, bietet nur das Martinshorn Wegerechte ein. <br/>
				Ohne aktives Martinshorn genießt ein Polizeifahrzeug folglich keinerlei Vorfahrtsprivilegien. <br/>
				Ebenso wird eine Aufforderung stehen zu bleiben durch benutzen des Martinshorn geltend gemacht. <br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"§1 Allgemeine Vorgehensweise der Polizei",
				"
				Im Sinne des APD werden alle Personen, welche nicht dem APD angehören, in diesem Dokument als Zivilisten oder Täter bezeichnet. <br/>
				Um das  Roleplay zu fördern, dürfen Regelungen zugunsten der Zivilisten abgeändert werden. <br/>
				Damit ist gemeint, Bußgeld Erlass oder mündliche Verwarnungen die bspw. einen Strafzettel zur Folge gehabt hätten. <br/>
				Bei Kooperation können ebenfalls Strafmilderungen erfolgen. <br/><br/>
				"
		]
	];
	
	
	
// Illegal Items Section
	player createDiaryRecord ["katalog",
		[
			"Bußgeldkatalog",
				"
				1. Polizisten trollen 20.000$<br/>   
				2. Beleidigung Zivi. 15.000$<br/>
				3. Beleidigung Polizisten 15.000$<br/>
				4. Flucht aus Polizeikontrolle 10.000$<br/>
				5. Geiselnahme KNAST+70.000$<br/>
				6. Bankraub KNAST+60.000$<br/>
				7. Autodiebstahl 30.000$<br/>
				8. Versuchter Autodiebstahl 15.000$<br/>
				9. Diebstahl ( Rucksack beklauen) 20.000$<br/>
				10. Raubüberfall 40.000$<br/>
				11. Körperverletzung ( z.B. Angefahren) 25.000$<br/>
				12. Mord KNAST+100000$<br/>
				13. Führen illegaler Waffen 25.000$<br/>
				14. Waffenbesitz ohne Lizenz 35.000$<br/>
				15. Drogenbesitz 40.000$<br/>
				16. Drogenhandel 60.000$<br/>
				17. Handel geschützter Arten 50.000$<br/>
				18. Erpressung KNAST+50000$<br/>
				19. Freiheitsberaubung (Fesseln) 50.000$<br/>
				20. Checkpoint zerstören 10.000$<br/>
				21. Bedrohung von Polizisten 50.000$<br/><br/>
				Zu Fuß:<br/>
				1. Verkehr behindern 20.000$<br/>
				2. Laufen auf der Straße 5.000$<br/>
				3. Fahrzeuge behindern 10.000$<br/>
				4. Absichtlich vor Autos werfen / Rennen 20.000$<br/><br/>
				Fahrzeuge:<br/>
				1. Überhöhte Geschwindigkeit bis 20 km/h 10.000$<br/>
				2. Überhöhte Geschwindigkeit über 20 km/h 20.000$<br/>
				3. Fahren auf falscher Straßenseite 5.000$<br/>
				4. Verursachen eines Unfalls 20.000$<br/>
				5. Fahren ohne Licht 5.000$<br/>
				6. Fahren mit kaputten Autos 5.000$<br/>
				7. Personen in Autos sperren 10.000$<br/>
				8. Fahren ohne Führerschein 15.000$<br/>
				9. Fahrerflucht 15.00$<br/>
				10. Führen illegaler Fahrzeuge (nur der Fahrer) 30.000$<br/>
				11. Trollen mit Fahrzeugen ( Hupen etc.) 20.000$<br/><br/>
				Luftfahrzeuge:<br/>
				1. Tiefer als 150m über Städte 30.000$<br/>
				2. Landen in Städten 50.000$<br/>
				3. Führen von Illegalen Flugobjekten 70.000$<br/>
				4. Fliegen ohne Kollisionslichter 15.000$<br/>
				5. Fliegen ohne Fluglizenz 20.000$<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Gang Rules",
				"
				1. Being in a gang is not illegal. Only when illegal crimes are committed.<br/>
				2. Being in a gang area is not illegal. Only when partaking in illegal activities.<br/>
				3. Gangs may hold and control gang areas. Other gangs may attack a controlling gang to compete for control of a gang area.<br/>
				4. To declare war on another gang, the leader must announce it in global and all gang members of both gangs must be notified. For a more long term gang war, a declaration should be made on the forums.<br/>
				5. Gangs may not kill unarmed civilians, unless said civilian is part of a rival gang and in your gangs controlled area.<br/>
				6. Gangs may not kill civilians, unless they are under threat. Killing unarmed civilians because they do not comply is considered RDM, but you can injure/damage.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegal Vehicles",
				"
				A civilian in control of the following prohibited vehicles is subject to the consequences defined in the unauthorized control of a prohibited vehicle law.<br/><br/>

				1. Ifrit<br/>
				2. Speedboat<br/>
				3. Hunter<br/>
				4. Police Offroad<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegal Weapons",
				"
				A civilian in possession of the following is subject to the consequences as defined in the illegal possession of a firearm law.<br/><br/>

				1. MX Series<br/>
				2. Katiba Series<br/>
				3. TRG Series<br/>
				4. Mk.20 Series<br/>
				5. Mk.18 ABR<br/>
				6. SDAR Rifle<br/>
				7. Sting SMG<br/>
				8. Silenced P07 (Taser)<br/>
				9. Any explosives<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegal Items",
				"
				The following items are illegal to posses:<br/><br/>
				1. Turtle<br/>
				2. Cocaine<br/>
				3. Heroin<br/>
				4. Cannabis<br/>
				5. Marijuana<br/><br/>
				"
		]
	];

	
// Controls Section

	player createDiaryRecord ["controls",
		[
			"",
				"
				Y: Open Player Menu<br/>
				U: Lock and unlock cars<br/>
				F: Cop Siren (if cop)<br/>
				T: Vehicle Trunk<br/>
				Left Shift + R: Restrain (Cop Only)<br/>
				Left Shift + G: Knock out / stun (Civ Only, used for robbing them)<br/>
				Left Windows: Main Interaction key which is used for picking up items/money, gathering, interacting with cars (repair,etc) and for cops to interact with civilians. Can be rebound to a single key like H by pressing ESC->Configure->Controls->Custom->Use Action 10<br/>
				Left Shift + L: Activates cop siren lights (as a cop).<br/>
				Left Shift + H: Holster's your pistol<br/><br/>
				"
		]
	];