local M = {}

M.g = {
    mapleader = " ",
}

M.opt = {
    number = true,  --显示行号
    relativenumber = true,  --显示相对行号
    ruler = false,  
    list = true,  --显示不可见字符
    cursorline = true,  --高亮所在行
    tabstop = 4,  --4个空格等于一个tab
    expandtab = true,  --空格替代tab
    shiftround = true,  --round indent
    shiftwidth = 4,  --缩进4个空格
    scrolloff = 6,  --移动时上方保留6行
    sidescrolloff = 8,  --移动时下方保留8行
    mouse = "a",  --鼠标支持
    colorcolumn = "80",  --右侧参考线
    encoding = "utf-8",  --编码字符格式
    ignorecase = true,  --搜索忽略大小写
    smartcase = true,  --搜索包含大写字母则不忽略
    signcolumn = "yes",  --显示左侧图标指示列
    incsearch = true,  --边输入边搜索
    cmdheight = 1,  --命令行高
    autoread = true,  --自动加载(当文件被外部程序修改)
    wrap = false,  --禁止拆行
    backup = false, --禁止备份
    writebackup = false, --禁止创建备份
    swapfile = false,  --禁止创建swap文件
    completeopt = "menu,menuone,noselect,noinsert",  --自动补全不自动选中
    termguicolors = true,  --启用真彩色
    wildmenu = true,  --补全增强
    pumheight = 10,  --补全显示10行
    clipboard = "unnamedplus",  --配置剪贴板
    showmode = false,  --使用增强状态栏插件不在需要vim的模式提示
    splitbelow = true,  --新窗口放到当前窗口下方
    splitright = true,  --新窗口放到当前窗口右边
}

vim.opt.listchars:append("space:⋅")
-- 光标在行首尾时可以跳到下一行
vim.opt.whichwrap:append("<>[]hl")
vim.opt.shortmess:append("sI")

for prefix, tbl in pairs(M) do
    for key, value in pairs(tbl) do
        vim[prefix][key] = value
    end
end

return M
