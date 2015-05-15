FILE(REMOVE_RECURSE
  "CMakeFiles/generate_code"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/generate_code.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
