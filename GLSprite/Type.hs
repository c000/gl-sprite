module GLSprite.Type
    where

import Graphics.Rendering.OpenGL

data Sprite = Sprite
    { size :: (GLfloat, GLfloat)
    , texture :: TextureObject
    } deriving (Eq)

data ImageTexture = ImageTexture !TextureObject !GLfloat !GLfloat
