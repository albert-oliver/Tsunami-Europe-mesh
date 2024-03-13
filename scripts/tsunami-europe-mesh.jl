using TerrainGraphs

t = TerrainGraphs.load_tiff("resources/world.tif")
tk = TerrainGraphs.simple_NaN_removal(t)
p = TerrainGraphs.RefinementParameters(100, -100, 100, 100)

# Initial graph - regular grid (in uv)
g = SphereGraph(60000, -180, 180, -65, 65, 20, 10)

# Graph that can be adapted to terrain
gk = TerrainGraphs.TerrainSphereGraph(g, tk)

output_directory = "Resulting_Meshes/"
if !isdir(output_directory)
    mkpath(output_directory)
end
export_step(g, step) = export_inp(g, "$(output_directory)tsunami-europe-mesh_$(step).inp")
export_step(gk, 0)
TerrainGraphs.adapt_terrain!(gk, p, 9, after_step=export_step)
