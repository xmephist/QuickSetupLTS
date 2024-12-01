# QuickSetupLTS

[![Made with GameMaker](https://img.shields.io/badge/Made%20with-GameMaker-000000.svg?style=flat&logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAAA4AAAAOCAMAAAAolt3jAAAAZlBMVEX%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F%2BrG8stAAAAIXRSTlMABg0OFBkfcn1%2Bf4CBgoOFhoeIiouWmNDa5ebp8PX2%2B%2F6o6Vq%2BAAAAY0lEQVR42k2OWQ6AIAwFn%2BIOioobrnD%2FS4o0EeanmQxNAdErRFTWtsFq6%2BiiZozz0CSnTjYBwo0RkF8DWDLf51Ni9K%2FYdq0Fy3KAfzk97M7goK1F%2F4rGH9Kk1OlboQtEDIrmC%2BU3CVxTr%2FRMAAAAAElFTkSuQmCC)](https://www.yoyogames.com/gamemaker)
<br>
# How To Use

## Music and Sound functions
Usage
```
Music(sound, pitch, loop)
Sound(sound, pitch, loop)
```
Fade time is configurable in MANAGER-Create


## Short Functions
I've replaced a bunch of built in functions with shorter versions so I don't need to type out a bunch of stuff.

Usage
```
dbg(text, show_message, ignoreObjectCaller)

dbgGrid(ds_grid)

dbgList(ds_list)
```
dbg is just show_debug_message
dbgGrid prints the contents of a DS grid
dbgList is like dbgGrid but with DS lists instead

Usage
```
Color(color)

SetAlign(halign,valigh)

SetAlignColor(halign,valign,color)

Alpha(alpha)
```
Color can take anything that draw_set_color can

SetAlign merges draw_set_halign and draw_set_valign because fuck writing those over and over

SetAlignColor merges the previous two short functions

Alpha is just draw_set_alpha but if you leave it blank it resets alpha to 1

## Debugger
The debugger is something that will change over time. Right now, it's main uses are for a 'Debug Overlay' and VarList

setVarList shows a list on screen from an array, so you feed it an array for it to work.
varListDisable disables the varList, this happens at room end as well

Usage
```
setVarList(array)

// Example
setVarList([
  "current_time: "+string(current_time),
  "ostype: "+string(os_type)
])
```

I will add more in the future, but this is a good starting point for the rewrite, and I'll be archiving the old version of QuickSetup moving forward.

## Flag System

This is a very simple system, but I use it and I think it's good enough

Usage
```
setFlag(flag, data)

getFlag(flag) // Returns data in the flag if the data exists

saveGameData() // Filename can be changed in script "_io"
loadGameData()
```
