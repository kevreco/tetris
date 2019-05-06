const c = @import("webgl.zig");

pub const StaticGeometry = struct {
    rect_2d_vertex_buffer: c.GLuint,
    rect_2d_tex_coord_buffer: c.GLuint,

    triangle_2d_vertex_buffer: c.GLuint,
    triangle_2d_tex_coord_buffer: c.GLuint,

    pub fn create() StaticGeometry {
        var sg: StaticGeometry = undefined;

        const rect_2d_vertexes = [][3]c.GLfloat{
            []c.GLfloat{ 0.0, 0.0, 0.0 },
            []c.GLfloat{ 0.0, 1.0, 0.0 },
            []c.GLfloat{ 1.0, 0.0, 0.0 },
            []c.GLfloat{ 1.0, 1.0, 0.0 },
        };
        
        sg.rect_2d_vertex_buffer = c.glCreateBuffer();
        c.glBindBuffer(c.GL_ARRAY_BUFFER, sg.rect_2d_vertex_buffer);
        c.glBufferData(c.GL_ARRAY_BUFFER, &rect_2d_vertexes[0][0], 4 * 3 * @sizeOf(c.GLfloat), c.GL_STATIC_DRAW);

        const rect_2d_tex_coords = [][2]c.GLfloat{
            []c.GLfloat{ 0, 0 },
            []c.GLfloat{ 0, 1 },
            []c.GLfloat{ 1, 0 },
            []c.GLfloat{ 1, 1 },
        };
        
        sg.rect_2d_tex_coord_buffer = c.glCreateBuffer();
        c.glBindBuffer(c.GL_ARRAY_BUFFER, sg.rect_2d_tex_coord_buffer);
        c.glBufferData(c.GL_ARRAY_BUFFER, &rect_2d_tex_coords[0][0], 4 * 2 * @sizeOf(c.GLfloat), c.GL_STATIC_DRAW);

        const triangle_2d_vertexes = [][3]c.GLfloat{
            []c.GLfloat{ 0.0, 0.0, 0.0 },
            []c.GLfloat{ 0.0, 1.0, 0.0 },
            []c.GLfloat{ 1.0, 0.0, 0.0 },
        };

        sg.triangle_2d_vertex_buffer = c.glCreateBuffer();
        c.glBindBuffer(c.GL_ARRAY_BUFFER, sg.triangle_2d_vertex_buffer);
        c.glBufferData(c.GL_ARRAY_BUFFER, &triangle_2d_vertexes[0][0], 3 * 3 * @sizeOf(c.GLfloat), c.GL_STATIC_DRAW);

        const triangle_2d_tex_coords = [][2]c.GLfloat{
            []c.GLfloat{ 0, 0 },
            []c.GLfloat{ 0, 1 },
            []c.GLfloat{ 1, 0 },
        };
        
        sg.triangle_2d_tex_coord_buffer = c.glCreateBuffer();
        c.glBindBuffer(c.GL_ARRAY_BUFFER, sg.triangle_2d_tex_coord_buffer);
        c.glBufferData(c.GL_ARRAY_BUFFER, &triangle_2d_tex_coords[0][0], 3 * 2 * @sizeOf(c.GLfloat), c.GL_STATIC_DRAW);

        return sg;
    }

    pub fn destroy(sg: *StaticGeometry) void {
        c.glDeleteBuffer(sg.rect_2d_tex_coord_buffer);
        c.glDeleteBuffer(sg.rect_2d_vertex_buffer);

        c.glDeleteBuffer(sg.triangle_2d_vertex_buffer);
        c.glDeleteBuffer(sg.triangle_2d_tex_coord_buffer);
    }
};
