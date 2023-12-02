vim.g.mapleader = " "
vim.keymap.set("n","<leader>pv",vim.cmd.Ex)
vim.keymap.set("n","<leader>qt",vim.cmd.q)

vim.keymap.set("v","<leader>y", '"+y')
vim.keymap.set("n","<leader>y", '"+y')


vim.keymap.set("n","<leader>r", function()
    -- check if this is a python file
    --get current file name
    local file_name = vim.fn.expand("%:t")

    -- check if this is a python file
    if not string.find(file_name, ".py") then
        print("Not a python file")
        return
    end
    vim.cmd("w")
    vim.cmd("vnew | term python " .. file_name)
    -- wait to the terminal is closed to close the window
    vim.cmd("startinsert")

end)

vim.keymap.set("n","<leader>w", vim.cmd.w)
vim.keymap.set("n","<leader><leader>", vim.cmd.so)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set('i', '<C-Del>', '<C-o>dw')


vim.keymap.set('n', '<leader>gc', function()
    local input = vim.fn.input("Commit message: ")
    input = '"' .. input .. '"'
    --use term to add fikles
    vim.cmd("term git add .")
    vim.cmd("term git commit -m " .. input)
    vim.cmd("term git push")
end)



vim.keymap.set("n","<leader>z",vim.cmd.UndotreeToggle)
