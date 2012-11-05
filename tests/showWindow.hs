import Graphics.UI.Fltk.Fltk
import Foreign.C

main = (withCString "Haskell FLTK Window" $ flWindowNew 640 480) >>= flWindowShow >> flckRun
