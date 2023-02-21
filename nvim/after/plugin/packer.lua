local status_ok, packer = pcall(require, "packer")
packer.init {
	display = {
		open_fn = function()
		return require("packer.util").float { border = "rounded" }
	end,
  },
}
