{-# LANGUAGE ForeignFunctionInterface #-}
module Graphics.UI.Fltk.Fltk where
import Foreign.C
import Foreign.C.Types (CInt(..))
import Foreign.Ptr

data Fltkc   = Fltkc
type FltkObj = Ptr Fltkc

data FlWin      = FlWin
type FltkWindow = Ptr FlWin

foreign import ccall unsafe "flkc_run" flckRun ::
    IO CInt

foreign import ccall unsafe "fl_window_new" flWindowNew :: 
    CInt -> CInt -> CString -> IO FltkWindow

foreign import ccall unsafe "fl_window_show" flWindowShow ::
    FltkWindow -> IO ()
