
-- 基础配置
require("basic")
-- 快捷键映射
require("keybindings")
-- Packer插件管理
require("plugins")

-- 主题设置
require("colorschem")

--*****   插件    ********************
-- 树形插件配置
require("plugin-config.nvim-tree")

--顶部标签
require("plugin-config.bufferline")

--底部标签
require("plugin-config.lualine")

--模糊查找
require("plugin-config.telescope")

--启动动画
require("plugin-config.dashboard")
require("plugin-config.project")
--语法高量
require("plugin-config.nvim-treesitter")

require("plugin-config.toggleterm")

require("plugin-config.nvim-gdb")

--gcc 注释 - 不同括号不同颜色
require("plugin-config.autopairs")
require("plugin-config.comment")

require("lsp.setup")
require("lsp.cmp")
--*****************************
