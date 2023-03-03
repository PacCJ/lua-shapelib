# lua-shapelib
This is a fork of https://github.com/dminor/lua-shapelib

Lua bindings for the for the Shapelib (http://shapelib.maptools.org/) library for working with shapefiles.

The interface for shapefiles allows the shape handle to be indexed to retrieve objects in the shapefile.  The interface for dbf files follows the C API closely.

See the examples folder for usage.

# Building

## Windows

Firstly, make a file called Tools.ini which should look something like the following:
```
[NMAKE]
LUA_INCLUDE = C:\lua-5.1.5\include
LUA_LIB = C:\lua-5.1.5\bin\lua51.lib
```

Then run `nmake /f makefile.vc` from the Visual Studio dev command prompt.