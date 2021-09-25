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
    
    self.texture = load_texture("res://cc-expansion/symbols/caramel_apple.png")
    self.name = "Caramel Apple"
    self.description = "Part of the <color_92F4EC>CC Expansion<end> mod."