local packer = require("packer")
packer.startup({
  function(use)
    -- Packer 可以管理自己本身
    use 'wbthomason/packer.nvim'

    -- 主题设置
    use "folke/tokyonight.nvim"

       -- 文件浏览器 (树形)
    use { 
      "kyazdani42/nvim-tree.lua", 
      requires = "kyazdani42/nvim-web-devicons" 
    }

    --顶部状态栏
    use { 
      "akinsho/bufferline.nvim",
      update = true,
      requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }
   }

   --底部标签
    use { "nvim-lualine/lualine.nvim", 
      requires = { "kyazdani42/nvim-web-devicons" }
    }
    use "arkav/lualine-lsp-progress"

    --模糊查找
     use { 'nvim-telescope/telescope.nvim',
        requires = { "nvim-lua/plenary.nvim" } 
      }

      -- telescope extensions 模糊查找扩展-环境变量
     use "LinArcX/telescope-env.nvim"

    
        -- dashboard-nvim- 启动动画
    --use("glepnir/dashboard-nvim")
    use {
      "glepnir/dashboard-nvim",
      --commit = "a36b3232c98616149784f2ca2654e77caea7a522"
    } 

    -- project
    use("ahmedkhalf/project.nvim")

    --语法高量
    --use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
    use { "nvim-treesitter/nvim-treesitter" }

    --LSP 这个插件被弃用了
    --use("williamboman/nvim-lsp-installer")
    -- Lspconfig
    use { "neovim/nvim-lspconfig" }
    use { "williamboman/mason.nvim" }
    use { "williamboman/mason-lspconfig.nvim" }


     -- 补全引擎
        use("hrsh7th/nvim-cmp")
        -- snippet 引擎
        use("hrsh7th/vim-vsnip")
        -- 补全源
        use("hrsh7th/cmp-vsnip")
        use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
        use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
        use("hrsh7th/cmp-path") -- { name = 'path' }
        use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }

        -- 常见编程语言代码段
        use("rafamadriz/friendly-snippets")

    --浮动终端
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end}

    use {
    "ravenxrz/nvim-gdb",
    run = "./install.sh"
  }

     use "numToStr/Comment.nvim" -- gcc和gc注释
  use "windwp/nvim-autopairs" -- 自动补全括号
  









  end,
  config = {
    -- 并发数限制
    max_jobs = 16,
    -- 自定义源
    git = {
      -- default_url_format = "https://hub.fastgit.xyz/%s",
      -- default_url_format = "https://mirror.ghproxy.com/https://github.com/%s",
      -- default_url_format = "https://gitcode.net/mirrors/%s",
      -- default_url_format = "https://gitclone.com/github.com/%s",
    },
    --以浮动窗口打开安装列表：
    display = {
        open_fn = function()
            return require("packer.util").float({ border = "single" })
        end,
    },
    
  },
  
})


--**************
-- 每次保存 plugins.lua 自动安装插件
pcall(
  vim.cmd,
  [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
)




