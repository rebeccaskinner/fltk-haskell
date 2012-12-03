import Graphics.UI.Fltk.Fltk
import Graphics.UI.Fltk.Fl_Window
import Foreign.C

main = (withCString "Haskell FLTK Window" $ flWindowNew 640 480) >>= flWindowShow >> flckRun
