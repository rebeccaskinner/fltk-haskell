{-# LANGUAGE ForeignFunctionInterface #-}

module Graphics.UI.Fltk.Fl_Window where

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

foreign import ccall unsafe "fl_window_free" flWindowFree ::
    FltkWindow -> IO ()

foreign import ccall unsafe "fl_window_handle" flWindowHandle ::
    FltkWindow -> CInt -> IO CInt

foreign import ccall unsafe "fl_window_hide" flWindowHide ::
    FltkWindow -> IO ()

foreign import ccall unsafe "fl_window_resize" flWindowResize ::
    FltkWindow -> CInt -> CInt -> CInt -> CInt -> IO ()

foreign import ccall unsafe "fl_window_show" flWindowShow ::
    FltkWindow -> IO ()

foreign import ccall unsafe "fl_window_current" flWindowCurrent ::
    IO FltkWindow

foreign import ccall unsafe "fl_window_get_default_xclass" flWindowGetDefaultXClass ::
    IO CString

foreign import ccall unsafe "fl_window_iconlabel" flWindowIconLabel ::
    FltkWindow -> IO CString

foreign import ccall unsafe "fl_window_label_get" flWindowLabelGet ::
    FltkWindow -> IO CString

foreign import ccall unsafe "fl_window_xclass" flWindowXClass ::
    FltkWindow -> IO CString
