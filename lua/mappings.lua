require "nvchad.mappings"


local map = vim.keymap.set
--#region Basic mappings
-- Функция для проверки модификации файла и запроса на сохранение перед выходом
local function check_save_and_quit()
  if vim.bo.modified then
    local choice = vim.fn.input("Сохранить файл? Yes[y] No[n] Cancel[c]: ")
    if choice == 'y' then
      vim.cmd('w')
      vim.cmd('q')
    elseif choice == 'n' then
      vim.cmd('q!')
    else
      print('Отмена выхода')
    end
  else
    vim.cmd('q')
  end
end

-- Установка маппинга для выхода
map("i", "jk", "<ESC>")
map("n", "<C-e>", check_save_and_quit, { desc = "Quit with save prompt" })

--#region Terminal
map('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
--#endregion

--#region window commands
map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
--#endregion
