# barchiesi vim configuration

## Dependencies
1. (C languages) cmake and  boost for completion
2. (Python) python-jedi for competion.
3. (Javascript) node and npm for installing TSServer via `npm install -g typescript`.
4. Default font is Inconsolata, install it or change in `config/common/appearance.vimrc`.

## Install steps
1. Clone this repository in `~/.vim`.
2. Enter `~/.vim` and run `git submodule update --init --recursive` to pull in Vundle plugin.
3. Run `vim -c PluginInstall` to download and install plugins. Errors until plugin list are expected.
4. Enter `~/.vim/bundle/YouCompleteMe` and run `python3 install.py --clang-completer`. Remove `--clang-completer` to disable  C language semantic and JavaScript support.

## JavaScript/HTML/CSS
`~/.vim/vimwebrc` contains JavaScript specific configuration. To use it start vim via `vim -u ~/.vim/vimwebrc` or use the script located in `~/.vim/bin`.
Additional plugins must be installed with `:PluginInstall` while using `~/.vim/vimwebrc` config.

## Python
The next section is taken from the YouCompleteMe README.
### Working with virtual environments

A common practice when working on a Python project is to install its
dependencies in a virtual environment and develop the project inside that
environment. To support this, YCM needs to know the interpreter path of the
virtual environment. You can specify it by creating a `.ycm_extra_conf.py` file
at the root of your project with the following contents:

```python
def Settings( **kwargs ):
  return {
    'interpreter_path': '/path/to/virtual/environment/python'
  }
```

where `/path/to/virtual/environment/python` is the path to the Python used
by the virtual environment you are working in.

## Useful functions
- `<C-e>` or `<C-y>,` to complete HTML with emmet.
- Fugitive: `:Gstatus` to view `git status`, `-` to stage/unstage files; `:Gblame` to view `git blame` on current file; `:Gcommit` to commit.
- UltiSnips: `<c-j>` to expand a snippet.
