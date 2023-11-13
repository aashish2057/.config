local crates_status, crates = pcall(require, "crates")
if not crates_status then
	return
end

crates.setup({
	src = {
		cmp = {
			enabled = true,
		},
	},
})
