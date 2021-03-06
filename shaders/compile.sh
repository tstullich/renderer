#!/usr/bin/bash
if ! command -v glslc &> /dev/null
then
  echo "glslc is not available on your system! Make sure to install it."
  echo "Alternatively you can use LunarG's glslLangValidator."
else
  echo "Compiling shaders"
  # By GLSL convention we search for the following files that have the given extensions below
  glslc offscreen.vert -o offscreen-vert.spv
  glslc offscreen.frag -o offscreen-frag.spv
  glslc deferred.vert -o deferred-vert.spv
  glslc deferred.frag -o deferred-frag.spv
fi
