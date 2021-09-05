return {
  version = "1.5",
  luaversion = "5.1",
  tiledversion = "1.7.2",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 40,
  height = 12,
  tilewidth = 64,
  tileheight = 64,
  nextlayerid = 10,
  nextobjectid = 77,
  properties = {},
  tilesets = {
    {
      name = "platformer",
      firstgid = 1,
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      columns = 3,
      image = "tileset.png",
      imagewidth = 192,
      imageheight = 192,
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 64,
        height = 64
      },
      properties = {},
      wangsets = {},
      tilecount = 9,
      tiles = {}
    },
    {
      name = "Flag",
      firstgid = 10,
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      columns = 1,
      image = "flag.png",
      imagewidth = 64,
      imageheight = 64,
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 64,
        height = 64
      },
      properties = {},
      wangsets = {},
      tilecount = 1,
      tiles = {}
    },
    {
      name = "DesertTiles",
      firstgid = 11,
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      columns = 32,
      image = "DesertTiles.png",
      imagewidth = 2048,
      imageheight = 128,
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 64,
        height = 64
      },
      properties = {},
      wangsets = {},
      tilecount = 64,
      tiles = {}
    },
    {
      name = "Tree",
      firstgid = 75,
      tilewidth = 313,
      tileheight = 260,
      spacing = 0,
      margin = 0,
      columns = 1,
      image = "DesertTileset/Objects/Tree.png",
      imagewidth = 313,
      imageheight = 260,
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 313,
        height = 260
      },
      properties = {},
      wangsets = {},
      tilecount = 1,
      tiles = {}
    },
    {
      name = "StoneBlock",
      firstgid = 76,
      tilewidth = 101,
      tileheight = 99,
      spacing = 0,
      margin = 0,
      columns = 1,
      image = "DesertTileset/Objects/StoneBlock.png",
      imagewidth = 101,
      imageheight = 99,
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 101,
        height = 99
      },
      properties = {},
      wangsets = {},
      tilecount = 1,
      tiles = {}
    },
    {
      name = "Stone",
      firstgid = 77,
      tilewidth = 124,
      tileheight = 73,
      spacing = 0,
      margin = 0,
      columns = 1,
      image = "DesertTileset/Objects/Stone.png",
      imagewidth = 124,
      imageheight = 73,
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 124,
        height = 73
      },
      properties = {},
      wangsets = {},
      tilecount = 1,
      tiles = {}
    },
    {
      name = "Bush (1)",
      firstgid = 78,
      tilewidth = 145,
      tileheight = 88,
      spacing = 0,
      margin = 0,
      columns = 1,
      image = "DesertTileset/Objects/Bush (1).png",
      imagewidth = 145,
      imageheight = 88,
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 145,
        height = 88
      },
      properties = {},
      wangsets = {},
      tilecount = 1,
      tiles = {}
    },
    {
      name = "Skeleton",
      firstgid = 79,
      tilewidth = 150,
      tileheight = 51,
      spacing = 0,
      margin = 0,
      columns = 1,
      image = "DesertTileset/Objects/Skeleton.png",
      imagewidth = 150,
      imageheight = 51,
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 150,
        height = 51
      },
      properties = {},
      wangsets = {},
      tilecount = 1,
      tiles = {}
    },
    {
      name = "Cactus (1)",
      firstgid = 80,
      tilewidth = 108,
      tileheight = 111,
      spacing = 0,
      margin = 0,
      columns = 1,
      image = "DesertTileset/Objects/Cactus (1).png",
      imagewidth = 108,
      imageheight = 111,
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 108,
        height = 111
      },
      properties = {},
      wangsets = {},
      tilecount = 1,
      tiles = {}
    },
    {
      name = "SignArrow",
      firstgid = 81,
      tilewidth = 84,
      tileheight = 87,
      spacing = 0,
      margin = 0,
      columns = 1,
      image = "DesertTileset/Objects/SignArrow.png",
      imagewidth = 84,
      imageheight = 87,
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 84,
        height = 87
      },
      properties = {},
      wangsets = {},
      tilecount = 1,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 40,
      height = 12,
      id = 1,
      name = "Tile Layer 1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 78, 0, 0, 0, 0, 0, 0, 75, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 81, 0, 77, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 39, 39, 39, 39, 39, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        43, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 48, 0, 0, 0, 0, 0, 0, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 38, 39, 41, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 78, 0, 0, 0, 10,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 12, 12, 12, 16,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49, 51, 51, 19, 36,
        0, 0, 0, 79, 0, 0, 35, 35, 35, 35, 0, 0, 79, 0, 0, 80, 0, 0, 35, 35, 35, 35, 0, 80, 0, 0, 77, 0, 0, 0, 80, 0, 0, 79, 0, 49, 51, 19, 51, 36,
        35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 49, 19, 19, 19, 36
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 9,
      name = "DangerZone",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 63,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4.92639,
          y = 699.548,
          width = 2234.12,
          height = 66.5063,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 7,
      name = "Coins",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 50,
          name = "",
          type = "",
          shape = "rectangle",
          x = 894.703,
          y = 192.183,
          width = 58.1395,
          height = 56.5245,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 51,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1025.52,
          y = 64.5995,
          width = 59.7545,
          height = 56.5245,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 52,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1151.49,
          y = 190.568,
          width = 56.5245,
          height = 62.9845,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 55,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1537.47,
          y = 125.969,
          width = 56.5245,
          height = 59.7545,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 56,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1665.05,
          y = 66.2145,
          width = 54.9096,
          height = 59.7545,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 57,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1792.64,
          y = 130.814,
          width = 59.7545,
          height = 51.6796,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 59,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2046.19,
          y = 190.568,
          width = 62.9845,
          height = 61.3695,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 60,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2173.77,
          y = 125.969,
          width = 61.3695,
          height = 61.3695,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 61,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2304.59,
          y = 190.568,
          width = 58.1395,
          height = 61.3695,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 62,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2428.94,
          y = 319.767,
          width = 56.5245,
          height = 59.7545,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 70,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1024.69,
          y = 194.593,
          width = 61.5799,
          height = 54.1903,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 71,
          name = "",
          type = "",
          shape = "rectangle",
          x = 897.835,
          y = 71.4327,
          width = 61.5799,
          height = 54.1903,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 73,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1156.47,
          y = 73.8959,
          width = 61.5799,
          height = 54.1903,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 74,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1025.46,
          y = 322.142,
          width = 58.5799,
          height = 40.1903,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 75,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1153.4,
          y = 316.752,
          width = 60.5799,
          height = 47.1903,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 76,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1284.56,
          y = 315.289,
          width = 61.5799,
          height = 54.1903,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 4,
      name = "Enemies",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 33,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1153.1,
          y = 390.827,
          width = 61.3695,
          height = 53.2946,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 34,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1590.76,
          y = 255.168,
          width = 71.0594,
          height = 66.2145,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 5,
      name = "Flag",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 39,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2495.16,
          y = 447.351,
          width = 59.7545,
          height = 62.9845,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 6,
      name = "Start",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 41,
          name = "",
          type = "",
          shape = "rectangle",
          x = 387.597,
          y = 128.988,
          width = 54.9096,
          height = 59.7545,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 3,
      name = "Platforms",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 25,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6.45995,
          y = 318.152,
          width = 893.088,
          height = 79.1344,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 28,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1025.52,
          y = 444.121,
          width = 316.537,
          height = 56.5245,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 29,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1539.08,
          y = 324.612,
          width = 444.121,
          height = 66.2145,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 30,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2243.22,
          y = 513.566,
          width = 318.152,
          height = 62.9845,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 65,
          name = "",
          type = "",
          shape = "rectangle",
          x = -68.9695,
          y = 0,
          width = 71.4327,
          height = 768.517,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 66,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2559.26,
          y = -2.4632,
          width = 73.8959,
          height = 768.517,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 68,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2524.78,
          y = -908.919,
          width = 115.77,
          height = 903.993,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 69,
          name = "",
          type = "",
          shape = "rectangle",
          x = -133.013,
          y = -960.647,
          width = 128.086,
          height = 960.647,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
