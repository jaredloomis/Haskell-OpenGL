<h1>Haskell-OpenGL</h1>
<h2>Plan</h2>
- Simple but well-written 3D (which also allows for 2D) game/game library written in Haskell using [OpenGL](http://hackage.haskell.org/package/OpenGL) and [GLFW-b](http://hackage.haskell.org/package/GLFW-b-1.4.3). Also using [GLUtil](https://github.com/acowley/GLUtil) and [JuicyPixels](http://hackage.haskell.org/package/JuicyPixels).
- Use procedurally generated terrain/content.

- Eventually use [Functional Reactive Programming](http://www.haskell.org/haskellwiki/Functional_Reactive_Programming) (FRP) via a library. [Good discussion on different libraries](http://stackoverflow.com/questions/13341937/whats-the-status-of-current-functional-reactive-programming-implementations)
  - <b>[Elera](http://hackage.haskell.org/package/elerea) - Used by [Helm](http://helm-engine.org/), very simple framework, easy to use.</b>
  - [Netwire](http://hackage.haskell.org/package/netwire) - Possibly best for games, but hard to understand, only outdated tutorials. [Game examples](http://jshaskell.blogspot.de/), [Official tutorial for Wires](http://hackage.haskell.org/package/netwire-4.0.5/docs/Control-Wire.html), [Another good tutorial](http://hub.darcs.net/ertes/netwire/browse/README.md)

<h2>Todo</h2>
- Better documentation / comments.
- Use <i>throw </i> instead of <i>error</i>
- Use more efficient data structures - [ByteString](http://hackage.haskell.org/package/bytestring-0.9.2.1/docs/Data-ByteString.html) insteat of String, and [Vectors](https://hackage.haskell.org/package/vector) or [Arrays](https://hackage.haskell.org/package/array) instead of lists.
- Shadows (This can be very complicated and hard to do without a glm-like library)
    - [GPUGems](http://http.developer.nvidia.com/GPUGems/gpugems_ch09.html)
- Maybe use/create a library to deal with matrices, bringing it up to the OpenGL 3+ spec. <i>Why? It would be less efficient...</i> It would allow for more post-processing.
- Better generalization of loading .obj files (ie. not requiring slashes if only specifying vertices.)
- <b>FRP. <i>Use [Helm](https://github.com/switchface/helm/blob/master/src/FRP/Helm/Utilities.hs) for inspiration</i></b>
- Speed up .obj loading. Currently reads the same file multiple times, making it <b>really</b> slow.
- Relative file loading in .mtl and .obj files.
- Audio support using a library.
- <del>Add delta time.</del>
- <del>Procedural generation (eventually).</del>
- <del>Organization clean-up.</del>
- <del>Fix .mtl files loading/rendering textures incorrectly.</del>
- <del>Texture loading to support more textures (counting number of textures).</del>
- <del>Fix serious performance issue with textures.</del>
- <del>Add support for .mtl files so that models can have textures &| colors</del>.
- <del>Fix glVertexAttribPointer length argument. Not causing any noticable problems, but it probably will.</del>
