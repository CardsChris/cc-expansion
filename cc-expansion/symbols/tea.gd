extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

# Called when the symbol is first initialized.
func init(modloader: Reference, params):
    # Set this symbol's reference to the modloader. Always include this line.
    self.modloader = modloader
    
    self.id = "tea"
    self.value = 5
    self.values = []
    self.rarity = "rare"
    self.groups = ["food"]
    self.buffs.push_back(buff().set_group("human").set_buff_type("temporary_bonus").set_value(25).consumes().animate("bounce"))
    self.sfx = ["drink"]
    
    self.texture = load_texture("res://cc-expansion/symbols/tea.png")
    self.name = "Tea"
    self.description = .get_description() + " Part of the <color_92F4EC>CC Expansion<end> mod."