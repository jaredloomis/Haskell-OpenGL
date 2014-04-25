<h1>Haskell-OpenGL</h1>
<h2>Features</h2>
- Full support for loading .obj + .mtl files.
- Multipass postprocessing.
- Simplex procedurally generated terrain.
- GLSL 4+.
- Loading and displaying of textures in a variety of formats.
- Collision detection via AABBs, using Octrees for speed.
- Gravity / basic physics.
- Uses own matrices, according to the OpenGL 2.1+ spec.
- Shadows.
<h2>Screenshots</h2>
<h4>Simplex procedurally generated terrain.</h4>

![](http://i.imgur.com/SBSaObn.png)

<h4>Loading of models, including textures.</h4>

![](http://i.imgur.com/URxxELT.png)

<h2>Performance</h2>
Benchmark was done with a procedurally generated terrain, `200x200 vertices`, with collision detection per face and an `Octree` with a max size (per leaf) of `64`. Test was performed by walking around the terrain. Benchmarked on `4/11/14` with `ghc 7.6.3`.

Tested on `Arch Linux 64 bit` with
- `16GB RAM`
- `i5-3470 Quad-Core CPU @ 3.20GHz`

Performance by GHC/GHCI command:
- `ghc -O2 -funfolding-use-threshold=16`
    - CPU: `1-2%`
    - RAM: `403 MiB`
- `ghc -O2 -fllvm -funfolding-use-threshold=16`
    - CPU: `1-2%`
    - RAM: `313 MiB`

<h2>Todo</h2>

<h4>Top</h4>
- <b>General code cleanup, make it easier to use and clearer.</b>
- <b>Repair shadows.</b>
- <b>A collision detection system for <i>dynamic</i> objects.</b>
- <b>Use State Monads more. Convert functions with types like `World t -> GameObject t -> a` to `GameObject t -> Game a`</b>
- Normal mapping.
- Create a FRP module, making it optional. (Elerea)
- AI / Pathfinding (A\*?).
- Chunks or other methods to allow for infinite terrain.

<h4>Fixes</h4>
- Make walking more stable and efficient.

<h4>Additions</h4>
- Normal mapping / normal textures.
- Text / GUI
- Physics
- Audio support using a library
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
- Use [Parallelism](http://www.haskell.org/haskellwiki/Parallel) in parts of the program like loading .obj/.mtl files.
- Use more efficient data structures - [ByteString](http://hackage.haskell.org/package/bytestring-0.9.2.1/docs/Data-ByteString.html) insteat of String, and [Vectors](https://hackage.haskell.org/package/vector) or [Arrays](https://hackage.haskell.org/package/array) instead of lists.

<h4>Organization</h4>
- Define classes to constrain functions, instead of forcing the use of `GameObjects`?
- Better documentation / comments.

<h2>Used libraries Include</h2>
- [OpenGL](http://hackage.haskell.org/package/OpenGL)
- [GLFW-b](http://hackage.haskell.org/package/GLFW-b-1.4.3)
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
