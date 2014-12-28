# Topost.github.io

## 一、获取TOPost

```bash
$ cd ~
$ git clone https://github.com/Topost/topost.github.io.git topost
```

## 二、安装vimwiki

```bash
$ cd ~
$ vim -c "so % | quit" topost/vimwiki/vimwiki-2-1.vba
$ cat >> ~/.vimrc
let g:vimwiki_list = [{'path':'~/topost/', 'path_html': '~/topost/'}]
^D
```

## 三、构建TOPost

```bash
$ cd ~/topost/
$ echo "export TOPOST_PROJ_PATH=$PWD" >> ~/.bashrc
$ source ~/.bashrc
$ make clean
$ make [-s] [html]
```
