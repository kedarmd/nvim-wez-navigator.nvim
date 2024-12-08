local function merge_tables(defaults, opts)
	local result = vim.tbl_deep_extend("force", {}, defaults, opts or {})
	return result
end

return merge_tables
