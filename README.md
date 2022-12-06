# Welcome!
 This setup is optimized for writing notes and doing homework in LaTeX. 
* Requires Neovim 0.7.0+
* OS: Ubuntu 22.04
* Termimal: Alacritty
* Font: JetBrains Mono Nerd Font https://www.nerdfonts.com/font-downloads
* Colorscheme: Onenord https://github.com/rmehri01/onenord.nvim
* PDF Viewer: Zathura (or SumatraPDF if you're on Windows)
* lsp: https://github.com/neovim/nvim-lspconfig
* snippets: UltiSnips (will make a transition into luasnip in the future)
* completion: Currently using coc.nvim but will hopefully transtion into a lua based completion setup.

# Startup Screen
![Screenshot from 2022-11-21 18-40-22](https://user-images.githubusercontent.com/102345313/203207961-2f0a39e8-a59a-4191-b481-e77d498d44c2.png)

# Telescope 
![Screenshot from 2022-11-21 18-12-15](https://user-images.githubusercontent.com/102345313/203200920-43778e2e-89fb-42d2-a900-32a95bb9d020.png)

# Editing a LaTeX File
![Screenshot from 2022-11-21 18-15-34](https://user-images.githubusercontent.com/102345313/203200921-96781aaa-5885-4742-8ce2-a5089a5f8b51.png)

# Instructions

* Run the following commands:
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt install neovim

* clone this repository in your .config directory
* Install dependencies for coc.nvim using npm (install npm by using sudo apt install) and yarn install. 
* Install pip and using pip, install pynvim
* To get LaTeX up and running, you must install:
latexmk (compiler)
texlive-full (latex packages)
zathura (or SumatraPDF)


