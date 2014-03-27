<h1>Haskell-OpenGL</h1>
<h2>Features</h2>
- Full support for loading .obj + .mtl files.
- Multipass postprocessing.
- Simplex procedurally generated terrain.
- GLSL 4+.
- Loading and displaying of textures in a variety of formats.
- Collision detection via AABBs.
- Gravity / basic physics.
- Uses own matrices, according to the OpenGL 2.1+ spec.
<h2>Screenshots</h2>
<h4>Simplex procedurally generated terrain.</h4>

![](http://i.imgur.com/SBSaObn.png)

<h4>Loading of models, including textures.</h4>

![](http://i.imgur.com/URxxELT.png)

<h2>Performance</h2>
Benchmark was done with a procedurally generated terrain, 50x50 vertices, with collision detection per face and a surrounding AABB to check general collision. Test was performed by walking around the terrain. Benchmarked on 1/31/14 with `ghc 7.6.3`. <b>This benchmark was done before a few significant changes.</b>

Tested on `Arch Linux 64 bit` with
- `16GB RAM`
- `i5-3470 Quad-Core CPU @ 3.20GHz`

Performance by GHC/GHCI command:
- `ghci`
    - CPU: `1-25%`
    - RAM: `315 MB`
- `ghc` (No flags)
    - CPU: `1-8%`
    - RAM: `55 MiB`
- `ghc -O`, `ghc -O2`, `ghc -fvia-C -O`, `ghc -O -fllvm`
    - CPU: `1-4%`
    - RAM: `53 MiB`
- `ghc -O -funfolding-use-threshold=16`
    - CPU: `1-4%`
    - RAM: `52 MiB`

All commands using the `-O` or `-O2` flags performed basically the same, with a decrease of `<1%` CPU usage from `-fllvm`, well within the margin of error. The version of llvm used was 3.4, which is "untested", so performance could be increased with the correct version. Adding the `-funfolding-use-threshold=16` flag decresed memory usage by 1 MiB, without affecting CPU usage.

<h2>Todo</h2>

<h4>Top</h4>
- <b>I Realized most of the type classes I have been making are simply doing badly what a StateT monad would do well. (ie. `GameIO t a = StateT (World t) IO a`)</b>
- <b>General code cleanup, make it easier to use and clearer.</b>
- <b>Framebuffer resizing.</b>
- <b>Octrees or BVH.</b>
- Create a FRP module, making it optional. (Elerea)
- AI / Pathfinding (A\*?).
- Chunks or other methods to allow for infinite terrain.
- Do alot more `{-# INLINE #-}`ing.
- Cleanup code again, look for efficiency increases.
- Make walking more stable and efficient.

<h4>Fixes</h4>
- Fix normals in procedurally generated terrain (Every other face is off by a bit).
- Better generalization of loading .obj files. Current loader is not compatible with many (most?) .obj files.

<h4>Additions</h4>
- Use [FFI](http://www.haskell.org/haskellwiki/FFI_Introduction) for core functions. Maybe for Matrices?
- Normal mapping / normal textures.
- Text / GUI
- Physics
- Audio support using a library
- Relative file loading in .mtl and .obj files.
- Save files.
- A GLSL shader code generator would be cool.

<h4>OpenGL</h4>
- LOD via [Tesselation shaders](http://prideout.net/blog/?p=48)
- [Good resource for example shaders](https://github.com/MovingBlocks/Terasology/tree/develop/engine/src/main/resources/assets/shaders)
- [Render to Texture / FBO](https://code.google.com/p/opengl-tutorial-org/source/browse/tutorial14_render_to_texture/tutorial14.cpp)
- [Lots of stuff to add shader/graphics-wise](http://developer.download.nvidia.com/SDK/9.5/Samples/samples.html)
- OpenGL 3.3+ [Sampler Objects](http://www.sinanc.org/blog/?p=215) (Pretty easy).
- Shadows
    - [GPUGems](http://http.developer.nvidia.com/GPUGems/gpugems_ch09.html)

<h4>Performance increases</h4>
- Use Bang Patterns.
- Use [Parallelism](http://www.haskell.org/haskellwiki/Parallel) in parts of the program like loading .obj/.mtl files.
- Analyze generated [Haskell Core](http://www.haskell.org/haskellwiki/Performance/GHC#Looking_at_the_Core) code for possible efficiency increases.
    - [Tutorial on how to read and use Core](http://alpmestan.com/2013/06/27/ghc-core-by-example-episode-1/)
- Instead of splitting a loaded terrain, just create a function to load multiple terrains and place them next to each other.
- Octree or some kind of grouping of vertices to speed up collision detection. Actually, collision detection is not that slow, but this should still be implemented at some point.
    - Bounding Volume Hierarchy seems to be the best choice.
        - Requires Raytracing
        - [Java code](https://github.com/diwi/Space_Partitioning_Octree_BVH/tree/master/SpacePartitioning/src/DwBVH), [C# code](http://www.3dmuve.com/3dmblog/?p=182), [Scholarly paper](http://www.cg.cs.tu-bs.de/media/publications/minimal-bounding-volume-hierarchy.pdf), [C++ Walkthrough/tutorial](http://www.scratchapixel.com/lessons/3d-basic-lessons/lesson-12-introduction-to-acceleration-structures/bounding-volume-hierarchy-bvh-part-1/), [C++ code](https://github.com/brandonpelfrey/Fast-BVH), [Large academic paper](http://www.sci.utah.edu/~wald/Publications/2007/FastBuild/download/fastbuild.pdf), [Stackoverflow question](http://stackoverflow.com/questions/5077243/how-to-roll-a-fast-bvh-representation-in-haskell), [Another Stackoverflow question](http://stackoverflow.com/questions/15013523/how-to-sort-and-compare-in-a-bounding-volume-hierarchy), [Academic publication](http://cg.ibds.kit.edu/publications/p2012/RBVH/RBVH.pdf)
- Use more efficient data structures - [ByteString](http://hackage.haskell.org/package/bytestring-0.9.2.1/docs/Data-ByteString.html) insteat of String, and [Vectors](https://hackage.haskell.org/package/vector) or [Arrays](https://hackage.haskell.org/package/array) instead of lists.

<h4>Organization</h4>
- Maybe define classes to constrain functions, instead of forcing the use of `GameObjects`?
- Better documentation / comments.

<h2>Interesting Extensions</h2>
- [Stackoverflow question](http://stackoverflow.com/questions/10845179/which-haskell-ghc-extensions-should-users-use-avoid/10849782#10849782)
- [GADTs](http://www.haskell.org/haskellwiki/GADTs_for_dummies)
- [Tuple sections](http://www.haskell.org/ghc/docs/7.0.1/html/users_guide/syntax-extns.html)
- Record wild cards
- [Existential types](http://www.haskell.org/haskellwiki/Existential_type)
- [Multi-parameter type classes](http://www.haskell.org/haskellwiki/Multi-parameter_type_class)
- [Type Families](http://www.haskell.org/haskellwiki/GHC/Type_families)
- <b>Bang Patterns</b>

<h2>Used libraries</h2>
- [OpenGL](http://hackage.haskell.org/package/OpenGL)
- [GLFW-b](http://hackage.haskell.org/package/GLFW-b-1.4.3)
- [GLUtil](https://github.com/acowley/GLUtil)
- [JuicyPixels](http://hackage.haskell.org/package/JuicyPixels)

<h2>Copyright</h2>
Haskell-OpenGL - An open source game/library written in Haskell.
Copyright (C) 2014  [fiendfan1](https://github.com/fiendfan1/)

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License version 3
as published by the Free Software Foundation.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
[GNU General Public License](https://gnu.org/licenses/gpl.html) for more details.

<h3>Contact</h3>
fiendfan1@yahoo.com
