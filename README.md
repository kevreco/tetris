# Tetris 

A simple tetris clone written in [zig programming language](https://github.com/andrewrk/zig).

## Controls

 * Left/Right/Down Arrow - Move piece left/right/down.
 * Up Arrow - Rotate piece clockwise.
 * Shift - Rotate piece counter clockwise.
 * Space - Drop piece immediately.
 * R - Start new game.
 * P - Pause and unpause game.
 * Escape - Quit.

## Dependencies

 * [Zig compiler](https://github.com/andrewrk/zig) - use the debug build.

## Building and Running

```
zig build-exe -target wasm32-freestanding --release-small src/main.zig
```

Run a local http server on the project root and access it from a browser that supports WebGL2