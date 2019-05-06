pub extern fn setFillColor(_: c_int, _: c_int, _: c_int, _: c_int) void;
pub extern fn fillRect(_: c_int, _: c_int, _: c_int, _: c_int) void;
pub extern fn clearRect(_: c_int, _: c_int, _: c_int, _: c_int) void;
pub extern fn fillText(_: *const u8, _: c_uint, _: c_int, _: c_int) void;
pub extern fn getCanvasWidth() c_int;
pub extern fn getCanvasHeight() c_int;