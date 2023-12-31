local devicons_available, devicons = pcall(require, 'nvim-web-devicons')

local Mode = {}

Mode.map = {
  ["n"] = "NORMAL",
  ["no"] = "NORMAL",
  ["v"] = "VISUAL",
  ["V"] = "VISUAL LINE",
  [""] = "VISUAL BLOCK",
  ["s"] = "SELECT",
  ["S"] = "SELECT LINE",
  [""] = "SELECT BLOCK",
  ["i"] = "INSERT",
  ["ic"] = "INSERT",
  ["R"] = "REPLACE",
  ["Rv"] = "VISUAL REPLACE",
  ["c"] = "COMMAND",
  ["cv"] = "VIM EX",
  ["ce"] = "EX",
  ["r"] = "PROMPT",
  ["rm"] = "MOAR",
  ["r?"] = "CONFIRM",
  ["!"] = "SHELL",
  ["t"] = "TERMINAL",
}

local function git_branch()
    local branch = vim.fn.system(" git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n' ")
    if string.len(branch) > 0 then
        return string.format("  %s ", branch:lower())
    else
        return ""
    end
end

local function mode()
    local current_mode = vim.api.nvim_get_mode().mode
    if Mode.map[current_mode] == nil then
        return current_mode
    end
    return string.format(' -- %s -- ', Mode.map[current_mode])
end

local function update_mode_colors()
  local current_mode = vim.api.nvim_get_mode().mode
  local mode_color = "%#StatusLineAccent#"
  if current_mode == "n" then
      mode_color = "%#StatuslineAccent#"
  elseif current_mode == "i" or current_mode == "ic" then
      mode_color = "%#StatuslineInsertAccent#"
  elseif current_mode == "v" or current_mode == "V" or current_mode == "" then
      mode_color = "%#StatuslineVisualAccent#"
  elseif current_mode == "R" then
      mode_color = "%#StatuslineReplaceAccent#"
  elseif current_mode == "c" then
      mode_color = "%#StatuslineCmdLineAccent#"
  elseif current_mode == "t" then
      mode_color = "%#StatuslineTerminalAccent#"
  end
  return mode_color
end

local function filepath()
  local fpath = vim.fn.fnamemodify(vim.fn.expand "%", ":~:.:h")
  if fpath == "" or fpath == "." then
      return " "
  end

  return string.format(" %%<%s/", fpath)
end

local function filename()
  local fname = vim.fn.expand "%:t"
  if fname == "" then
      return ""
  end
  return fname .. " "
end

local function is_modified()
    if vim.bo.modified then
        return '[+]'
    else 
        return ''
    end
end

local function filetype()
    return string.format(" %s ", vim.bo.filetype):lower()
end

local function lineinfo()
  if vim.bo.filetype == "alpha" then
    return ""
  end
  return " %P   %l:%c "
end

function get_icon()
    local default_file_icon = "󰈔 [No Name]"
    if devicons_available then
        return (devicons.get_icon_by_filetype(vim.bo.filetype)) or default_file_icon
    else
        return default_file_icon
    end
end

local fileencoding = "  %{&fileencoding?&fileencoding:&encoding}  "

local fileformat = "%{&fileformat} "

Statusline = {}

Statusline.active = function()
  return table.concat {
    "%#Statusline#",
    git_branch(),
    mode(),
    "%#StatusLine#",
    "%=",
    filename(),
    is_modified(),
    "%=%#StatusLine#",
    filetype(),
    get_icon(),
    fileencoding,
    fileformat,
    lineinfo(),
    "%#Normal#",
  }
end
function Statusline.inactive()
  return " %F"
end

vim.api.nvim_exec([[
  augroup Statusline
  au!
  au WinEnter,BufEnter * setlocal statusline=%!v:lua.Statusline.active()
  au WinLeave,BufLeave * setlocal statusline=%!v:lua.Statusline.inactive()
  au WinEnter,BufEnter,FileType NvimTree setlocal statusline=%!v:lua.Statusline.short()
  augroup END
]], false)

