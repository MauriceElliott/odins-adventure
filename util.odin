package adventure

import "core:fmt"
import "core:os"

read_line :: proc() -> string {
	buf := make([]byte, 256)
	n, err := os.read(os.stdin, buf[:])
	if err != nil {
		fmt.eprintln("Error reading: ", err)
		return ""
	}
	return string(buf[:n])
}
