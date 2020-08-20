//Add module zeus
private _debug = false;

if ((isClass(configFile >> "CfgPatches" >> "ace_zeus"))) then {
	[btc_curator, ["ace_zeus", "ace_zeus_arsenal", "ace_zeus_captives", "ace_zeus_cargo", "ace_zeus_cargoAndRepair", "ace_zeus_fastroping", "ace_zeus_medical", "ace_zeus_pylons", "ace_zeus_repair"]] remoteExec ["addCuratorAddons", 2];
} else {
	if (_debug) then {hint "Le mod ACE est désactivé"};
};

/*
if ((isClass(configFile >> "CfgPatches" >> "zen_ai")) && (isClass(configFile >> "CfgPatches" >> "zen_compat_ace"))) then {
	[btc_curator, ["zen_ai", "zen_area_markers", "zen_attributes", "zen_camera", "zen_common", "zen_compat_ace", "zen_compositions", "zen_context_actions", "zen_context_menu", "zen_custom_modules", "zen_damage", "zen_dialog", "zen_doors", "zen_editor", "zen_editor_previews", "zen_flashlight", "zen_garage", "zen_inventory", "zen_loadout", "zen_main", "zen_markers_tree", "zen_modules", "zen_music", "zen_placement", "zen_position_logics", "zen_remote_control", "zen_visibility", "zen_vision"]] remoteExec ["addCuratorAddons", 2];
} else {
	if (_debug) then {hint "Le mod Zeus Ehanced et sa compatibilité sont désactivés"};
};
*/