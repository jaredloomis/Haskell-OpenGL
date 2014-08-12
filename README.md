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
    - RAM: `403 MiB`

<h2>Todo</h2>

<h4>Changes to Graphics API</h4>
- Remove Proxies from data types; use `-XScopedTypeVariables`
- Use `Data.Proxy` instead of `NatProxy` and `SymbolProxy`. (Needs `-XPolyKinds`)
- Rename `HasBString` to something more clear, like `HasGLSL`.
- Remove `Assignment` constructor; use `Action` instead.

<h4>Top</h4>
- Possibly create a fast, polymorphic matrix library; I dont like any of the ones currently available.
    - Something similar to [hmatrix](https://hackage.haskell.org/package/hmatrix), but polymorphic (Not constrained to use `Double`).
    - Pure Haskell.
    - Row-major or Column-major (type-level flag variable).
    - Use [STVectors](https://hackage.haskell.org/package/vector-0.10.0.1/docs/Data-Vector-Mutable.html) for efficiency (Check out [bed-and-breakfast](https://hackage.haskell.org/package/bed-and-breakfast) for ideas).
    - Type-level width and height
    - May also need to define Vec type, to keep things consistent (like hmatrix).
- Update performance info.
- Redo Mesh AABB generation, so that it works better with Bullet physics. (Don't make an AABB for every face.)
- Decrease GPU usage.
- General code cleanup, make it easier to use and clearer.
    - More utility functions.
    - Better documentation / comments.
- Try using criterion, QuickCheck, and SmallCheck.
- Add shadow support to graphics API.
- <b>Use State Monads more. Convert functions with types like `World t -> GameObject t -> a` to `GameObject t -> Game a`</b>
- Create a FRP module, making it optional (Elerea and/or Netwire).

<h4>Fixes</h4>
- Make walking more stable and efficient.

<h4>Additions</h4>
- Use [mvc](https://hackage.haskell.org/package/mvc)?
- Normal mapping.
- AI / Pathfinding (A\*?).
- Chunks or other methods to allow for infinite terrain.
- When the time comes to add animations, large changes will probably need to be made, but use the [ST monad](https://hackage.haskell.org/package/base-4.7.0.0/docs/Control-Monad-ST.html) for performance, probably [STVectors](https://hackage.haskell.org/package/vector-0.10.0.1/docs/Data-Vector-Mutable.html).
- Normal mapping / normal textures.
- Text / GUI.
- Physics.
- Audio support using a library.
- Save files.

<h4>Performance increases</h4>
- Use more parallelism.

<h4>Organization</h4>
- Define classes to constrain functions, instead of forcing the use of `GameObjects`?
- Better documentation / comments.

<h2>Copyright</h2>
All source code in this repository is provided under the WTFPL Version 2.
```
        DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE 
                    Version 2, December 2004 

 Copyright (C) 2004 Sam Hocevar <sam@hocevar.net> 

 Everyone is permitted to copy and distribute verbatim or modified 
 copies of this license document, and changing it is allowed as long 
 as the name is changed. 

            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE 
   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION 

  0. You just DO WHAT THE FUCK YOU WANT TO.
```
