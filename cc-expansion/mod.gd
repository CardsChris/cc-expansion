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
    modloader.add_symbol_patch("res://cc-expansion/symbol-patches/rain.gd")
    modloader.add_symbol_patch("res://cc-expansion/symbol-patches/billionaire.gd")
    var gardnerlikes = ["leaves", "banana_peel", "seed", "flower"]
    var treefruit = ["apple", "banana", "coconut", "orange", "peach", "pear"]
    var voids = ["void_creature", "void_fruit", "void_stone"]

    for i in gardnerlikes:
        modloader.add_symbol_patch("res://cc-expansion/symbol-patches/Group.gd", {"id": i, "group": "gardenerlikes"})

    for i in treefruit: 
        modloader.add_symbol_patch("res://cc-expansion/symbol-patches/Group.gd", {"id": i, "group": "treefruit"})
    for i in voids:      
        modloader.add_symbol_patch("res://cc-expansion/symbol-patches/Group.gd", {"id": i, "group": "voids"})
     

var starting_symbols
var symbol_list

func modify_starting_symbols(symbols):
     starting_symbols = symbols
     #starting_symbols.append("politician")
     #starting_symbols.append("billionaire")
     #starting_symbols = ["anti_dud", "caramel_apple", "caramel", "honeyjar", "sugarcube", "leaves", "tea", "politician", "bear", "billionaire"]
     # starting_symbols.append("anti_dud")
     # starting_symbols.append("rain")
     # starting_symbols.append("tree")
     # starting_symbols.append("farmer")
     # starting_symbols.append("gardener")
#     starting_symbols.append("bowling_pin")
     return (starting_symbols)
