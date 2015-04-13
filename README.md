# Vim Config

Vim config optimized for PHP and web development, with some other things added.

## Install

Clone the repo somewhere, then create symlinks to `~/.vimrc` and `~/.vim`.
Something like this should work:

```bash
ln -s /path/to/repo/.vimrc ~/.vimrc
ln -s /path/to/repo/.vim ~/.vim
```

Then, run `vim +PluginInstall` to start vim and install the plugins.

## Credits

I used to use neo/vim-config, but tweaked for PHP development since that's
where I spend the majority of my time. Thus, that config served as a starting
point for this one.
