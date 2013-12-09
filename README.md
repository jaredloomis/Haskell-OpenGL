<h1>Haskell-OpenGL</h1>
<h2>Plan</h2>
- Simple but well-written 2D (and/or 3D?) game library written in Haskell using [OpenGL](http://hackage.haskell.org/package/OpenGL) and [GLFW](http://hackage.haskell.org/package/GLFW-b)


- Possibly use [Functional Reactive Programming](http://www.haskell.org/haskellwiki/Functional_Reactive_Programming) (FRP) via a library. [Good discussion on different libraries](http://stackoverflow.com/questions/13341937/whats-the-status-of-current-functional-reactive-programming-implementations)
  - <b>[Netwire](http://hackage.haskell.org/package/netwire) -- Best for games. [Game examples](http://jshaskell.blogspot.de/), [Official tutorial for Wires](http://hackage.haskell.org/package/netwire-4.0.5/docs/Control-Wire.html), [Another good tutorial](http://hub.darcs.net/ertes/netwire/browse/README.md)</b>
  - [Yampa](http://www.haskell.org/haskellwiki/Yampa)
  - [Reactive-banana](http://www.haskell.org/haskellwiki/Reactive-banana) -- [Good tutorial blog](http://alfredodinapoli.wordpress.com/2011/12/24/functional-reactive-programming-kick-starter-guide/) [Tutorial](http://www.haskell.org/haskellwiki/FRP_explanation_using_reactive-banana)
  - [Elera](http://hackage.haskell.org/package/elerea) -- Used by Helm
  - [Reactive](http://www.haskell.org/haskellwiki/Reactive) -- One of the most widely used. Maybe not suitable for large projects due to time leaks. [Tutorial](http://netsuperbrain.com/blog/posts/introducing-reactive-events/)
  - [Sodium](http://hackage.haskell.org/package/sodium)
