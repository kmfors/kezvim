return {
------------------------ 查看git提交信息 -------------------
    {
        "f-person/git-blame.nvim",
        event = "VeryLazy",
        config = function()
            require('gitblame').setup({
                --Note how the `gitblame_` prefix is omitted in `setup`
                enabled = false,
            })
        end
    },
------------------------ 查看diff文件信息 -------------------

    {
        "sindrets/diffview.nvim",
        event = "VeryLazy",
    }
}
