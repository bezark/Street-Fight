# Todos
## John
 - Square Board

## Dave
- Architecture


# Structure
Put the structure here 


Outline:
- Main
	- Logic
		- Timer
			- Alternate turns
		- Player turn
			- Render movement options (only rendered if player turn)
				- Lookup possible offsets based on current moveset
				- Add tilemap layer for each
			- Upon selection (can only select if player turn)
				- Move player to location
					- Get tile of mouse press
						-
						  ```gdscript
						  func get_clicked_tile_power():
							  var clicked_cell = tile_map.local_to_map(tile_map.get_local_mouse_position())
							  var data = tile_map.get_cell_tile_data(0, clicked_cell)
							  if data:
								  return data.get_custom_data("power")
							  else:
								  return 0
						  ```
				- Check for enemies
		- Enemy turn
			- For each
				- Pick location
				- Move
				- If multiple -> fuse
				- If on player kill
	- Tilemap
	- Player
	- enemy
