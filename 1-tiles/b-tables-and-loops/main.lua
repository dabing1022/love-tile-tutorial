
local map = require("map1")
function love.load()

  TileW, TileH = map.tilewidth, map.tileheight
  MapWidth = map.width
  MapHeight = map.height
  
  Tileset = love.graphics.newImage('countryside.png')
  
  local tilesetW, tilesetH = Tileset:getWidth(), Tileset:getHeight()
  
  local quadInfo = 
  {
    {0, 0},-- 1 = grass 
    {TileW, 0},-- 2 = box
    {0, TileH},-- 3 = flowers
    {TileW, TileH} -- 4 = boxTop
  }
  Quads = {}
  for i, info in ipairs(quadInfo) do
    Quads[i] = love.graphics.newQuad(info[1], info[2], TileW, TileH, tilesetW, tilesetH)
  end

  function map:getLayerByName(name)
    for i, v in ipairs(map.layers) do
      if v.name == name then
        return v
      end
    end
    return nil
  end

  stuffLayer = map:getLayerByName("stuffLayer")
  TileTable = stuffLayer.data

  objectLayer = map:getLayerByName("shapeObjectLayer")
end

function love.draw()
  for i, v in ipairs(TileTable) do
    x = (i - 1) % MapWidth * TileW
    y = math.floor((i - 1) / MapWidth) * TileH
    love.graphics.draw(Tileset, Quads[v], x, y)
  end

  for i, v in ipairs(objectLayer.objects) do
    if v.properties["name"] == "a" then
        love.graphics.setColor(255, 255, 255, 255)
        love.graphics.circle("fill", v.x + TileW/2, v.y + TileH/2, 20, 20, 30)
    elseif v.properties["name"] == "b" then
        love.graphics.setColor(255, 0, 255, 255)
        love.graphics.circle("fill", v.x + TileW/2, v.y + TileH/2, 20, 20, 30)
    elseif v.properties["name"] == "c" then  
        love.graphics.setColor(255, 255, 0, 255)
        love.graphics.circle("fill", v.x + TileW/2, v.y + TileH/2, 20, 20, 30)
    elseif v.properties["name"] == "d" then  
        love.graphics.setColor(0, 255, 255, 255)
        love.graphics.circle("fill", v.x + TileW/2, v.y + TileH/2, 20, 20, 30)
    end
  end
  love.graphics.reset( )
end
