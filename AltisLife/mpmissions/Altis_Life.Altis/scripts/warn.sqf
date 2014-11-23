//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: TODO: spll3r
//////////////////////////////////////////////////////////////////
If (PrimaryWeapon Player != "") Then {
cutText [Format ["Stehen bleiben %1 oder das Feuer wird eröffnet!", Player],"PLAIN",2];
foreach (nearEntities ["Player", 50])
};