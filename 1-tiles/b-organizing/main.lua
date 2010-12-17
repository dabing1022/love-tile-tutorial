

function love.load()

  -- Tile width and heigth
  tileW, tileH = 32,32
  
  images = {
    tileset = love.graphics.newImage('tileset.png')
  }
  
  local tilesetW, tilesetH = images.tileset:getWidth(), images.tileset:getHeight()
  
  quads = {
    grass = love.graphics.newQuad(0,  0, tileW, tileH, tilesetW, tilesetH),
    box   = love.graphics.newQuad(32, 0, tileW, tileH, tilesetW, tilesetH)
  }
  
  tiles = {
  
     { 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 },
     { 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1 },
     { 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1 },
     { 1,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1 },
     { 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1 },
     { 1,0,0,1,0,0,0,0,0,1,1,0,0,1,0,0,0,1,0,1,1,1,0,0,1 },
     { 1,0,0,1,0,0,0,0,1,0,0,1,0,1,0,0,0,1,0,1,0,0,0,0,1 },
     { 1,0,0,1,0,0,0,0,1,0,0,1,0,0,1,0,1,0,0,1,1,1,0,0,1 },
     { 1,0,0,1,0,0,0,0,1,0,0,1,0,0,1,0,1,0,0,1,0,0,0,0,1 },           
     { 1,0,0,1,0,0,0,0,1,0,0,1,0,0,0,1,0,0,0,1,0,0,0,0,1 },
     { 1,0,0,1,1,1,1,0,0,1,1,0,0,0,0,1,0,0,0,1,1,1,0,0,1 },
     { 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1 },
     { 1,0,0,0,0,0,0,0,0,1,0,0,0,0,1,1,1,0,0,0,0,0,0,0,1 },
     { 1,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,1,0,0,0,0,0,0,0,1 },
     { 1,0,0,0,0,0,0,0,1,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,1 },
     { 1,0,0,0,0,0,0,0,0,1,0,0,1,0,1,0,0,0,0,0,0,0,0,0,1 },
     { 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1 },
     { 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 }
  }

end

function love.draw()

  local quad

  for y,row in ipairs(tiles) do
    for x,tileValue in ipairs(row) do
      if tileValue == 0 then
        quad = quads.grass
      else
        quad = quads.box
      end
      
      love.graphics.drawq(images.tileset, quad, (x-1)*tileW, (y-1)*tileH)

    end
  end
end