extends Reference

func load(modloader: Reference, mod_info, tree: SceneTree):
    print(mod_info.name + " is loading!")
    modloader.add_mod_symbol("res://cc-expansion/symbols/caramel_apple.gd")
    modloader.add_mod_symbol("res://cc-expansion/symbols/caramel.gd")
    modloader.add_mod_symbol("res://cc-expansion/symbols/honeyjar.gd")
    modloader.add_mod_symbol("res://cc-expansion/symbols/sugarcube.gd")
    modloader.add_mod_symbol("res://cc-expansion/symbols/tree.gd")
    modloader.add_mod_symbol("res://cc-expansion/symbols/leaves.gd")
    modloader.add_mod_symbol("res://cc-expansion/symbols/tea.gd")
    modloader.add_mod_symbol("res://cc-expansion/symbols/gardener.gd")
    modloader.add_mod_symbol("res://cc-expansion/symbols/bowling_pin.gd")
    modloader.add_mod_symbol("res://cc-expansion/symbols/anti_dud.gd")
    modloader.add_mod_symbol("res://cc-expansion/symbols/politician.gd")
    modloader.add_symbol_patch("res://cc-expansion/symbol-patches/bear.gd")
    modloader.add_symbol_patch("res://cc-expansion/symbol-patches/billionaire.gd")
    var gardnerlikes = ["leaves", "banana_peel", "seed", "flower"]

    for i in gardnerlikes:
        modloader.add_symbol_patch("res://cc-expansion/symbol-patches/Group.gd", {"id": i, "group": "gardenerlikes"})

var starting_symbols
var symbol_list

func modify_starting_symbols(symbols):
    starting_symbols = symbols
    starting_symbols = ["anti_dud", "caramel_apple", "caramel", "honeyjar", "sugarcube", "leaves", "tea", "politician", "bear", "billionaire"]
    starting_symbols.append("tree")
    starting_symbols.append("gardener")
    starting_symbols.append("bowling_pin")
    return (starting_symbols)
