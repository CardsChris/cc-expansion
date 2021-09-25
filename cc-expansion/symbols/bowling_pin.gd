extends "res://effects-builder-plugin/symbols/AbstractSymbol.gd"

# Called when the symbol is first initialized.
func init(modloader: Reference, params):
    # Set this symbol's reference to the modloader. Always include this line.
    .init(modloader, params)
    
    self.id = "bowling_pin"
    self.value = 2
    self.values = [1, 10, 15]
    self.rarity = "uncommon"
    self.groups = []
    self.sfx = ["lightbulbbreak"]

    self.adds.push_back(add().set_new_type("anti_dud").add_condition({"condition": "item", "type": "bowling_ball_essence"}).consumes().animate("shake"))
    self.destroys.push_back(destroy().set_target({"self": {}}).add_condition({"condition": "item", "type": "bowling_ball"}).animate("shake"))
    self.buffs.push_back(buff().set_type("bowling_pin").set_buff_type("temporary_bonus").set_value(values[1]).set_target({"self": {}}).add_condition({"condition" : "destroyed"}))
    self.buffs.push_back(buff().set_type("bowling_pin").set_buff_type("temporary_bonus").set_value(values[0]))
    self.buffs.push_back(buff().set_target({"self": {}}).set_buff_type("temporary_bonus").add_condition({"condition": "symbol_count", "type": "bowling_pin", "source": "reels", "operator": "exactly", "value": "10"}).set_value(values[2]).animate("bounce"))
    
    self.texture = load_texture("res://cc-expansion/symbols/bowling_pin.png")
    self.name = "Bowling Pin"
    self.description = .get_description() + " Part of the <color_92F4EC>CC Expansion<end> mod."