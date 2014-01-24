<h1>Haskell-OpenGL</h1>
<h2>Screenshots</h2>
<h4>Simplex procedurally generated terrain.</h4>

![](http://i.imgur.com/SBSaObn.png)

<h4>Loading of models, including textures.</h4>

![](http://i.imgur.com/URxxELT.png)
<h2>Plan</h2>
Simple but well-written 3D (which also allows for 2D) game &| game library written in Haskell using [OpenGL](http://hackage.haskell.org/package/OpenGL) and [GLFW-b](http://hackage.haskell.org/package/GLFW-b-1.4.3). Also using [GLUtil](https://github.com/acowley/GLUtil) and [JuicyPixels](http://hackage.haskell.org/package/JuicyPixels).

<h2>Performance</h2>
Benchmark was done with a procedurally generated terrain, 50x50 vertices, with collision detection per face and a surrounding AABB to check general collision. Benchmarked on 1/22/14 with `ghc 7.6.3`.

Tested on `Arch Linux 64 bit` with
- `16GB RAM`
- `i5-3470 Quad-Core CPU @ 3.20GHz`

Performance by GHC/GHCI command:
- `ghci`
    - CPU: `1-23%`
    - RAM: `316 MB`
- `ghc` (No flags)
    - CPU: `1-6%`
    - RAM: `44 MiB`
- `ghc -O`
    - CPU: `1-4%`
    - RAM: `43 MiB`
- `ghc -O2`
    - CPU: `1-4%`
    - RAM: `43 MiB`
- `ghc -fllvm -O2`
    - CPU: `1-3%`
    - RAM: `43 MiB`
- `ghc -fvia-C -O2`
    - CPU: `1-4%`
    - RAM: `43 MiB`

All commands using the `-O` or `-O2` flags performed basically the same, with a decrease of `1%` CPU usage from `-fllvm`, well within the margin of error. The version of llvm used was 3.4, which is "untested", so performance could be increased with the correct version.

<h2>Todo</h2>
<h4>Additions</h4>
- Text / GUI
- Physics
- Audio support using a library
- Relative file loading in .mtl and .obj files.

<h4>OpenGL</h4>
- Bring game up to more complete OpenGL 3.3+ spec by handling matrices without OpenGL.
    - Use [Vect](http://hackage.haskell.org/package/vect). It has an [OpenGL package](http://hackage.haskell.org/package/vect-opengl)
    - Handle it on my own, using Vect, [Linear](http://hackage.haskell.org/package/linear), [this guy's Github](https://github.com/SonOfLilit/modern-opengl-tutorial/blob/master/Matrix.hs), and [tomtegebra Github](https://github.com/kig/tomtegebra/tree/master/Tomtegebra) as examples.
- [Lots of stuff to add shader/graphics-wise](http://developer.download.nvidia.com/SDK/9.5/Samples/samples.html)
- OpenGL 3.3+ [Sampler Objects](http://www.sinanc.org/blog/?p=215)
- Shadows (This can be very complicated and hard to do without a glm-like library)
    - [GPUGems](http://http.developer.nvidia.com/GPUGems/gpugems_ch09.html)

<h4>Performance increases</h4>
- Analyze generated [Haskell Core](http://www.haskell.org/haskellwiki/Performance/GHC#Looking_at_the_Core) code for possible efficiency increases.
    - [Tutorial on how to read and use Core](http://alpmestan.com/2013/06/27/ghc-core-by-example-episode-1/)
- Instead of splitting a loaded terrain, just create a function to load multiple terrains and place them next to each other.
- Octree or some kind of grouping of vertices to speed up collision detection. <i>Actually, collision detection is not that slow when using ghc (not ghci), but this should still be implemented at some point.</i>
    - Bounding Volume Hierarchy seems to be the best choice.
        - Requires Raytracing
        - [Java code](https://github.com/diwi/Space_Partitioning_Octree_BVH/tree/master/SpacePartitioning/src/DwBVH), [C# code](http://www.3dmuve.com/3dmblog/?p=182), [Scholarly paper](http://www.cg.cs.tu-bs.de/media/publications/minimal-bounding-volume-hierarchy.pdf), [C++ Walkthrough/tutorial](http://www.scratchapixel.com/lessons/3d-basic-lessons/lesson-12-introduction-to-acceleration-structures/bounding-volume-hierarchy-bvh-part-1/), [C++ code](https://github.com/brandonpelfrey/Fast-BVH), [Large academic paper](http://www.sci.utah.edu/~wald/Publications/2007/FastBuild/download/fastbuild.pdf), [Stackoverflow question](http://stackoverflow.com/questions/5077243/how-to-roll-a-fast-bvh-representation-in-haskell), [Another Stackoverflow question](http://stackoverflow.com/questions/15013523/how-to-sort-and-compare-in-a-bounding-volume-hierarchy), [Academic publication](http://cg.ibds.kit.edu/publications/p2012/RBVH/RBVH.pdf)
- Use more efficient data structures - [ByteString](http://hackage.haskell.org/package/bytestring-0.9.2.1/docs/Data-ByteString.html) insteat of String, and [Vectors](https://hackage.haskell.org/package/vector) or [Arrays](https://hackage.haskell.org/package/array) instead of lists.
- Speed up .obj loading. Currently reads the same file multiple times, making it <b>really</b> slow.

<h4>Organization</h4>
- Fix normals in procedurally generated terrain (Every other face is off by a bit).
- Check out [Vinyl](http://www.jonmsterling.com/posts/2013-04-06-vinyl-modern-records-for-haskell.html).
- Better documentation / comments.
- Use <i>throw </i> instead of <i>error</i>.
- Better generalization of loading .obj files (ie. not requiring slashes if only specifying vertices).
- Maybe FRP? <i>Use [Helm](https://github.com/switchface/helm/blob/master/src/FRP/Helm/Utilities.hs) for inspiration</i> if anything.
