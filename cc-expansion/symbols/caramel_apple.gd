extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

# Called when the symbol is first initialized.
func init(modloader: Reference, params):
    # Set this symbol's reference to the modloader. Always include this line.
    self.modloader = modloader
    
    self.id = "caramel_apple"
    self.value = 4
    self.values = []
    self.rarity = "very_rare"
    self.groups = ["food", "fruitlikes", "fruit"]
    self.buffs.push_back(buff().set_type("mrs_fruit").set_buff_type("permanent_bonus").set_value(1))
    
    self.texture = load_texture("res://cc-expansion/symbols/caramel_apple.png")
    self.name = "Caramel Apple"
    self.description = "<icon_mrs_fruit> get an extra permanent <icon_coin> bonus when eating this snack! Part of the <color_92F4EC>CC Expansion<end> mod."