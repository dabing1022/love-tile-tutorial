return {
  version = "1.1",
  luaversion = "5.1",
  orientation = "orthogonal",
  width = 25,
  height = 18,
  tilewidth = 32,
  tileheight = 32,
  properties = {},
  tilesets = {
    {
      name = "countryside",
      firstgid = 1,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "countryside.png",
      imagewidth = 64,
      imageheight = 64,
      properties = {},
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      name = "stuffLayer",
      x = 0,
      y = 0,
      width = 25,
      height = 18,
      visible = true,
      opacity = 1,
      properties = {},
      encoding = "lua",
      data = {
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2,
        2, 1, 1, 4, 4, 4, 4, 4, 1, 2, 1, 2, 2, 2, 3, 3, 4, 4, 4, 4, 4, 3, 3, 4, 2,
        2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 2,
        2, 1, 4, 4, 4, 4, 1, 2, 1, 2, 2, 4, 4, 4, 4, 4, 4, 2, 1, 4, 4, 4, 4, 1, 2,
        2, 1, 4, 1, 1, 1, 1, 2, 2, 2, 4, 4, 3, 4, 4, 3, 4, 4, 4, 1, 1, 4, 4, 1, 2,
        2, 1, 4, 1, 2, 1, 3, 4, 2, 4, 1, 2, 1, 3, 4, 3, 3, 4, 4, 1, 3, 4, 2, 1, 2,
        2, 1, 4, 2, 2, 1, 3, 4, 4, 2, 1, 1, 3, 3, 4, 1, 3, 4, 1, 1, 3, 1, 2, 3, 2,
        2, 1, 4, 2, 1, 3, 1, 3, 4, 4, 2, 2, 2, 2, 2, 3, 3, 4, 4, 4, 1, 1, 4, 4, 2,
        2, 1, 4, 4, 4, 3, 3, 1, 3, 4, 4, 4, 4, 4, 4, 3, 4, 1, 4, 3, 3, 3, 1, 4, 2,
        2, 1, 1, 2, 1, 4, 3, 3, 3, 3, 3, 3, 3, 4, 3, 4, 4, 3, 1, 3, 4, 1, 2, 1, 2,
        2, 1, 1, 1, 2, 3, 2, 1, 1, 3, 2, 3, 2, 4, 2, 1, 3, 2, 1, 1, 4, 3, 4, 1, 2,
        2, 1, 1, 1, 1, 2, 4, 4, 3, 3, 1, 1, 1, 1, 1, 3, 3, 3, 1, 1, 4, 1, 4, 1, 2,
        2, 1, 1, 1, 1, 3, 1, 4, 3, 4, 3, 1, 1, 1, 1, 2, 2, 1, 3, 3, 4, 1, 4, 1, 2,
        2, 1, 1, 1, 1, 2, 2, 2, 1, 1, 4, 4, 4, 1, 1, 1, 1, 1, 2, 2, 4, 1, 4, 1, 2,
        2, 1, 1, 1, 1, 1, 1, 2, 3, 1, 4, 1, 2, 4, 4, 2, 2, 2, 2, 2, 4, 4, 1, 1, 2,
        2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2
      }
    },
    {
      type = "objectgroup",
      name = "shapeObjectLayer",
      visible = true,
      opacity = 1,
      properties = {},
      objects = {
        {
          name = "",
          type = "",
          shape = "rectangle",
          x = 547,
          y = 129,
          width = 24,
          height = 27,
          visible = true,
          properties = {
            ["name"] = "c"
          }
        },
        {
          name = "",
          type = "",
          shape = "rectangle",
          x = 355,
          y = 161,
          width = 24,
          height = 27,
          visible = true,
          properties = {
            ["name"] = "a"
          }
        },
        {
          name = "",
          type = "",
          shape = "rectangle",
          x = 291,
          y = 289,
          width = 24,
          height = 27,
          visible = true,
          properties = {
            ["name"] = "b"
          }
        },
        {
          name = "",
          type = "",
          shape = "rectangle",
          x = 323,
          y = 354,
          width = 24,
          height = 27,
          visible = true,
          properties = {
            ["name"] = "d"
          }
        }
      }
    }
  }
}
