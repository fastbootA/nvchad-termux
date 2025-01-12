**Этот репозиторий является моей персональной настройкой NvChad для Termux**

- The main nvchad repo (NvChad/NvChad) is used as a plugin by this repo.
- So you just import its modules , like `require "nvchad.options" , require "nvchad.mappings"`
- So you can delete the .git from this repo ( when you clone it locally ) or fork it :)
# Установка 
```sh
git clone https://github.com/fastbootA/nvchad-termux ~/.config
echo 'alias tovi="NVIM_APPNAME=nvchad-termux nvim"' >> ~/.bashrc
tovi # Start
```

## Credits

1) Lazyvim starter https://github.com/LazyVim/starter as nvchad's starter was inspired by Lazyvim's . It made a lot of things easier!
