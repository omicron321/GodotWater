# Godot Water
This project has the aim to create 3D open water for the Godot game engine.

Tested with: Godot_v3.0-stable_win64

![Image in Godot 3.0](https://gitlab.com/MrMinimal/GodotWater/uploads/87ca62c0d8aadf9982e39b299207974d/GodotWater.png)

# Principle
The plane on which water is simulated is generated during runtime.
A mesh is generated using the SurfaceTool class.
After that, a vertex shader is applied to the mesh which moves the
vertices every frame.
The movement consists of the average of multiple Gerstner Waves each with
slightly different values.

# Resources
[GPU Gems](https://developer.nvidia.com/gpugems/GPUGems/gpugems_ch02.html)
