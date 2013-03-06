module Main where

import Prelude hiding (flip)
import Graphics.UI.SDL
import Graphics.Rendering.OpenGL
import GLSprite.TextureLoader

w, h, d :: Int
w = 640
h = 480
d = 32

main :: IO ()
main = do
    withInit [InitEverything] $ do
        window <- setVideoMode w h d [OpenGL]
        texture Texture2D $= Enabled
        blend $= Enabled
        matrixMode $= Projection
        ortho 0 (fromIntegral w) 0 (fromIntegral h) (-1) 1
        matrixMode $= Modelview 0
        clearColor $= Color4 1 1 1 1
        clear [ColorBuffer]
        color (Color4 1 0 1 (1::GLfloat))
        renderPrimitive Triangles $ do
            vertex (Vertex3 0  0 (0::GLfloat))
            vertex (Vertex3 100 0 (0::GLfloat))
            vertex (Vertex3 100 100 (0::GLfloat))
        glSwapBuffers
        delay 1000
    putStrLn "Test Success"
