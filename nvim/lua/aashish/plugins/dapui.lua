-- import nvim-autopairs safely
local dapui_setup, dapui = pcall(require, "dapui")
if not dapui_setup then
	return
end

dapui.setup()
