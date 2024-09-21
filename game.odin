package adventure

import "core:fmt"

classes :: enum {
	warrior,
	wizard,
	priest,
	none,
}

adventurer :: struct {
	name:  string,
	class: classes,
}

game_start :: proc() {
	fmt.println("Hello Adventurer, Welcome to the world.")
	mc := adventurer{"", classes.none}
	fmt.println("What is your name?")
	mc.name = read_line()
	fmt.println("Hello ", mc.name, "Nice to meet you.")
}
