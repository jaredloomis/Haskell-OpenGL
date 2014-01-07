<h1>Haskell-OpenGL</h1>
<h2>Plan</h2>
- Simple but well-written 3D (which also allows for 2D) game library written in Haskell using [OpenGL](http://hackage.haskell.org/package/OpenGL) and [GLFW-b](http://hackage.haskell.org/package/GLFW-b-1.4.3)
- Try using procedurally generated terrain/content.

- Eventually use [Functional Reactive Programming](http://www.haskell.org/haskellwiki/Functional_Reactive_Programming) (FRP) via a library. [Good discussion on different libraries](http://stackoverflow.com/questions/13341937/whats-the-status-of-current-functional-reactive-programming-implementations)
  - <b>[Elera](http://hackage.haskell.org/package/elerea) - Used by [Helm](http://helm-engine.org/), very simple framework, easy to use.</b>
  - [Netwire](http://hackage.haskell.org/package/netwire) - Possibly best for games, but hard to understand, only outdated tutorials. [Game examples](http://jshaskell.blogspot.de/), [Official tutorial for Wires](http://hackage.haskell.org/package/netwire-4.0.5/docs/Control-Wire.html), [Another good tutorial](http://hub.darcs.net/ertes/netwire/browse/README.md)

<h2>Todo</h2>
- Speed up .obj loading. Currently reads the same file multiple times, making it <b>really</b> slow.
- Procedural generation (eventually).
- Relative file loading in .mtl and .obj files.
- Fix .mtl files loading/rendering textures incorrectly.
- Texture loading to support more textures (counting number of textures).
- Audio support using a library.
- <b>Organization clean-up.</b>
- Add support for .mtl files so that models can have textures &| <del>colors</del>.
- <del>Fix glVertexAttribPointer length argument. Not causing any noticable problems, but it probably will.</del>
