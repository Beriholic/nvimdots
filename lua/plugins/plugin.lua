local overrides = require("configs.overrides")
---@type NvPluginSpec[]

local plugins = {
	-- Override plugin definition options

	{
		"neovim/nvim-lspconfig",
		dependencies = {
			-- format & linting
			{
				"jose-elias-alvarez/null-ls.nvim",
				config = function()
					require("configs.null-ls")
				end,
			},
		},
		config = function()
			require("nvchad.configs.lspconfig")
			require("configs.lspconfig")
		end, -- Override to setup mason-lspconfig
		opts = {
			inlay_hints = { enabled = true },
		},
	},
	{
		"williamboman/mason.nvim",
		opts = overrides.mason,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		opts = overrides.treesitter,
	},
	{
		"nvim-tree/nvim-tree.lua",
		opts = overrides.nvimtree,
	},
	{
		"xeluxee/competitest.nvim",
		dependencies = "MunifTanjim/nui.nvim",
		ft = { "cpp", "py" },
		config = function()
			require("configs.competitest")
		end,
		lazy = false,
	},
	{
		"ray-x/go.nvim",
		dependencies = {
			"ray-x/guihua.lua",
			"neovim/nvim-lspconfig",
			"nvim-treesitter/nvim-treesitter",
		},
		event = { "CmdlineEnter" },
		ft = { "go", "gomod" },
		build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
		config = function()
			require("go").setup({
				vim.api.nvim_create_autocmd("BufWritePre", {
					group = vim.api.nvim_create_augroup("GoImport", { clear = true }),
					pattern = "*.go",
					callback = function()
						require("go.format").goimport()
						-- require("go.format").gofmt()
					end,
				}),
			})
		end,
	},
	{
		"folke/flash.nvim",
		event = "VeryLazy",
		---@type Flash.Config
		opts = {},
        -- stylua: ignore
        keys = {
            { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
        },
	},
	{
		"sindrets/diffview.nvim",
		lazy = false,
	},
	{
		"j-hui/fidget.nvim",
		opts = {
			-- options
		},
	},
	-- {
	-- 	"simrat39/symbols-outline.nvim",
	-- 	config = function()
	-- 		require("symbols-outline").setup()
	-- 	end,
	-- 	cmd = "SymbolsOutline",
	-- },
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				suggestion = {
					keymap = {
						accept = "<C-l>",
					},
				},
			})
		end,
		enabled = false,
	},
	{
		"wakatime/vim-wakatime",
		lazy = false,
	},
	{
		"kdheepak/lazygit.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		cmd = "LazyGit",
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			-- add any options here
		},
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			-- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view. If not available, we use `mini` as the fallback
			"rcarriga/nvim-notify",
		},
		config = function()
			require("configs.notify")
		end,
	},
	{
		"stevearc/dressing.nvim",
		opts = {},
		lazy = false,
	},
	{
		"gennaro-tedesco/nvim-jqx",
		ft = { "json", "yaml" },
	},
	{
		"toppair/peek.nvim",
		-- event = { "VeryLazy" },
		ft = { "md", "markdown" },
		build = "deno task --quiet build:fast",
		config = function()
			require("peek").setup({
				theme = "light",
			})
			-- refer to `configuration to change defaults`
			vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
			vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
		end,
	},
	{
		"michaelb/sniprun",
		branch = "master",

		build = "sh install.sh",
		-- do 'sh install.sh 1' if you want to force compile locally
		-- (instead of fetching a binary from the github release). Requires Rust >= 1.65

		config = function()
			require("sniprun").setup({
				-- your options
			})
		end,
		cmd = "SnipRun",
		enabled = false,
	},
	{
		"h-hg/fcitx.nvim",
		lazy = false,
		enabled = false,
	},
	{
		"rcarriga/nvim-dap-ui",
		dependencies = { "mfussenegger/nvim-dap", "theHamsta/nvim-dap-virtual-text" },
		enabled = false,
	},
	{
		"okuuva/auto-save.nvim",
		cmd = "ASToggle", -- optional for lazy loading on command
		event = { "InsertLeave", "TextChanged" }, -- optional for lazy loading on trigger events
		opts = {
			-- your config goes here
			-- or just leave it empty :)
		},
		config = function()
			require("auto-save").setup({
				execution_message = {
					enabled = false,
					message = function() -- message to print on save
						return ("AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"))
					end,
					dim = 0.18, -- dim the color of `message`
					cleaning_interval = 1250, -- (milliseconds) automatically clean MsgArea after displaying `message`. See :h MsgArea
				},
			})
		end,
		enabled = false,
	},
	{
		"saecki/crates.nvim",
		ft = { "rust", "toml" },
		config = function(_, opts)
			local crates = require("crates")
			crates.setup(opts)
			crates.show()
		end,
	},
	{
		"hrsh7th/nvim-cmp",
		opts = function()
			local M = require("nvchad.configs.cmp")
			table.insert(M.sources, { name = "crates" })
			return M
		end,
	},
}

return plugins
