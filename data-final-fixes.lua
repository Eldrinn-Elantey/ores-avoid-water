-- Spot noise picks patch centers from candidate points with the highest favorability.
-- Land candidates score up to 2, water candidates score 1, so water still gets a patch
-- when a region has no land candidates and the total ore amount stays the same.
local favorability = "spot_favorability_expression = 1 + starting_resources_lake_mask,"

local function patch(function_name, expression_names)
  local noise_function = data.raw["noise-function"][function_name]
  if not noise_function then return end
  for _, expression_name in pairs(expression_names) do
    local expression = noise_function.local_expressions[expression_name]
    local patched, count = expression:gsub("spot_favorability_expression%s*=%s*1%s*,", favorability)
    if count == 1 then
      noise_function.local_expressions[expression_name] = patched
      log("Patched " .. function_name .. "." .. expression_name)
    else
      log("WARNING: " .. function_name .. "." .. expression_name .. " has an unexpected format, left unchanged")
    end
  end
end

-- Space Exploration disables the vanilla lake check for starting patches too.
patch("se_resource_autoplace_all_patches", {"starting_patches", "regular_patches"})
patch("resource_autoplace_all_patches", {"regular_patches"})
