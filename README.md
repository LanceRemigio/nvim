
# nvim

 This setup is optimized for writing notes and doing homework in LaTeX. 
* Requires version 0.9.0+
* OS: Ubuntu 22.03
* Termimal: Alacritty
* Font in Screenshot: FiraCode https://www.nerdfonts.com/font-downloads
* Colorscheme: Rose Pine
* PDF Viewer: Sioyek/Zathura (or SumatraPDF if you're on Windows)
* Snippets: Luasnip
* Completion: nvim-cmp

## Installation

First, install the language server dependecies:

````
sudo apt install curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
nvm install node 
````

Then install the C compiler 

````
sudo apt install gcc
````

Finally, install the dependencies needed for latex compilation and pdf-viewer

````
sudo apt install texlive-full latexmk sioyek
````
Then clone the repo into your `.config` directory:
````
git clone https://github.com/LanceRemigio/nvim
cd nvim 
nvim init.lua
````
## Screenshot

![editing a tex file](./png/editinglatex.png)


