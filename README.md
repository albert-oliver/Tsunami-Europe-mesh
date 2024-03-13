# NEED dam break meshes

## Dependencies

This is a [Julia](https://julialang.org/) code that depends on the following Julia packages:
   - MeshGraphs.jl, which implements the Graph Grammar.
   - TerrainGraphs.jl, which deals with the reading of the GeoTiff data and calling the MeshGraphs.jl package to generate the mesh.

To install these packages, please enter Julia and run the following commands:
```julia
julia> using Pkg

julia> Pkg.add(url="https://github.com/albert-oliver/MeshGraphs.jl#Tsunami-Europe-mesh")
julia> Pkg.add(url="https://github.com/albert-oliver/TerrainGraphs.jl#Tsunami-Europe-mesh")
```

## Running

To generate the Earth Globe meshes, run the julia script:
```bash
julia scripts/tsunami-europe-mesh.jl
```
The results will be saved in the folder "Resulting_Meshes/"

The results are written in [AVS/UCD format](https://dav.lbl.gov/archive/NERSC/Software/express/help6.1/help/reference/dvmac/UCD_Form.htm) that can be visualized with [Paraview](https://www.paraview.org/)
