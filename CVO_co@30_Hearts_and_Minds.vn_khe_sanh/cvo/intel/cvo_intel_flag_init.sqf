diag_log ("[CVO] [INTEL] [FLAGS] (INIT) - start");


// Defining Functions

cvo_intel_flag_fnc_findAllFlags = compile preprocessFile "cvo\intel\cvo_intel_flag_fnc_findAllFlags.sqf";
cvo_intel_flag_fnc_decider = compile preprocessFile "cvo\intel\cvo_intel_flag_fnc_decider.sqf";
cvo_intel_flag_fnc_createMarker = compile preprocessFile "cvo\intel\cvo_intel_flag_fnc_createMarker.sqf";

cvo_p_intel_flag_timer = 60;
CVO_flag_counter = 0;

CVO_flag_red = [];
CVO_flag_green = [];

// Adding Event on flags placed

diag_log ("[CVO] [INTEL] [FLAGS] (INIT) - functions defined");

private _codeEH = {
	params ["_unit", "_flag"];
	private _color = "";

		switch (typeOf _flag) do
		{
			case "ace_marker_flags_green": 	{_color = "green";};
			case "ace_marker_flags_red":	{_color = "red";};
		};

	diag_log ("[CVO] [INTEL] [FLAGS] (EH_placed) - " + str _unit + " placed " + _color + " Flag at: " + str(getPos _flag));

	[_flag, _color] call cvo_intel_flag_fnc_decider;
	
}; ["ace_marker_flags_placed", _codeEH] call CBA_fnc_addEventHandler;

diag_log ("[CVO] [INTEL] [FLAGS] (INIT) - flags_placed EH added");


// Calling findAllFlags

[cvo_intel_flag_fnc_findAllFlags, [], 60] call CBA_fnc_waitAndExecute;
// [] call cvo_intel_flag_fnc_findAllFlags;



// adds SHOW Hideout Zeus Action


_code = {

	////////////////////////////////////////////////////////////////////////////
	///// Hideout //////


	private _Array = [];

	// Creates Marker for Hideout

	{ 
		_markerName = ("hideout_" + str _forEachIndex);
		_markerPos = getPos _x;
		_marker = createMarkerLocal [_markerName, getPos _x, 0 ];
		_marker setMarkerShapeLocal "ICON";
		_marker setMarkerSizeLocal [1,1];
		_marker setMarkerTextLocal _markerName;
		_marker setMarkerColorLocal "ColorCIV";
		_marker setMarkerTypeLocal "Minefield";

		_Array pushBack _marker;


	} forEach ((allMissionObjects "all") select {"Flag_Red_F" == typeOf _x});


	////////////////////////////////////////////////////////////////////////////
	///// Weapons Cache //////
	// Creates Marker for Cache
	
	["btc_cache_obj"] remoteExec ["publicVariable", 2];

	private _isCBRN = false;

	if ( count ((getPos btc_cache_obj) nearObjects 10 select {"CBRN" in (typeOf _x)}) > 0 ) then 
		{    _isCBRN = true;   };

	
	_markerName = ("Weapon Cache");  
	_markerPos = getPos btc_cache_obj;  
	_markerCache = createMarkerLocal [_markerName, _markerPos, 0 ];  
	_markerCache setMarkerShapeLocal "ICON";  
	_markerCache setMarkerSizeLocal [1,1];
	if (_isCBRN) then {
		_markerCache setMarkerTextLocal (_markerName + " !CBRN!") ;  
		_markerCache setMarkerColorLocal "ColorRED";  
		_markerCache setMarkerTypeLocal "MinefieldAP"; 
	} else {
		_markerCache setMarkerTextLocal _markerName;  
		_markerCache setMarkerColorLocal "ColorOrange";  
		_markerCache setMarkerTypeLocal "Minefield"; 
	};

	_Array pushBack _markerCache;


	_code = {
		{    deleteMarkerLocal _x;      } forEach (_this#0);
	};
	[_code, [_Array], 10] call CBA_fnc_waitAndExecute;

};

_aceAction = [
	"cvo_zeus_show_hideout",         // * 0: Action name <STRING>
	"Show Hideouts and Caches for 60s",            //  * 1: Name of the action shown in the menu <STRING>
	"",                          //  * 2: Icon <STRING> "\A3\ui_f\data\igui\cfg\simpleTasks\types\backpack_ca.paa"
	_code,                            //  * 3: Statement <CODE>
	{true},                      //  * 4: Condition <CODE>
	{},                          //  * 5: Insert children code <CODE> (Optional)
	[],                          //  * 6: Action parameters <ANY> (Optional)
	[0,0,0],         				//  * 7: Position (Position array, Position code or Selection Name) <ARRAY>, <CODE> or <STRING> (Optional)
	20,                            //  * 8: Distance <NUMBER> (Optional)
	[],                            //  * 9: Other parameters [showDisabled,enableInside,canCollapse,runOnHover,doNotCheckLOS] <ARRAY> (Optional)
	{}                            //  * 10: Modifier function <CODE> (Optional)
] call ace_interact_menu_fnc_createAction;

[
	["ACE_MainActions"],        	// * 2: Parent path of the new action <ARRAY> (Example: `["ACE_SelfActions", "ACE_Equipment"]`)
	_aceAction	         			// * 3: Action <ARRAY>    
] call ace_interact_menu_fnc_addActionToZeus;


diag_log ("[CVO] [INTEL] [FLAGS] (INIT) - completed");

