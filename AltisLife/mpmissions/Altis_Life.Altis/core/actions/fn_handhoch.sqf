
player setVariable ["handhoch", true, true]; 

while { player getVariable ["surrender", false] } do {
player playMove "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon"; 


if (!alive player) then {
player setVariable ["handhoch", false, true];
};
};

player playMoveNow "AmovPercMstpSsurWnonDnon_AmovPercMstpSnonWnonDnon";