netzfisch does also dotfiles
============================

These dotfiles personalize my system, but feel free to fork them. Originally I cloned them from [thoughtbot/dotfiles](https://github.com/thoughtbot/dotfiles), who focus mainly at ruby development with tools like vim, tmux and git. But meanwhile I customised for my needs to use with ubuntu/[lubuntu](http://lubuntu.net) and integrate with Ethan Schoonover [solarized-theme](https://github.com/altercation/solarized) for Xfce4-Terminal and [VIM](http://vim.org).

**Heads-up**: If you run into trouble concerning **terminal colors**, check this excellent  [post](http://push.cx/2008/256-color-xterms-in-ubuntu) for a general overview - how things suppose to work!

Differently from thoughtbot I track my customisations (files with .local-extension) also in git. That way **ALL my configurations are tracked** and I keep easily up with the orginal fork by doing:

    git remote add upstream git@github.com:thoughtbot/dotfiles.git
    git fetch upstream
    git rebase upstream/master

See the unofficial guide to [dotfiles on GitHub](http://dotfiles.github.io/) and why you want to track down you dotfiels and to get started with a bootstrap!

Install
-------

Set zsh as your login shell:

    chsh -s /bin/zsh

Fork or clone onto your box:

    git clone git://github.com/netzfisch/dotfiles.git

Than install:

    cd dotfiles
    ./install.sh

This will create symlinks for config files in your home directory.

Make your own customizations
----------------------------

Put your customizations in dotfiles appended with `.local`:

* `~/.aliases.local`
* `~/.gitconfig.local`
* `~/.gvimrc.local`
* `~/.tmux.conf.local`
* `~/.vimrc.local`
* `~/.vimrc.bundles.local`
* `~/.zshrc.local`

What's in it?
-------------

[vim](http://www.vim.org/) configuration:

* [Ctrl-P](https://github.com/kien/ctrlp.vim) for fuzzy file/buffer/tag finding.
* [Rails.vim](https://github.com/tpope/vim-rails) for enhanced navigation of
  Rails file structure via `gf` and `:A` (alternate), `:Rextract` partials,
  `:Rinvert` migrations, etc.
* Run [RSpec](https://www.relishapp.com/rspec) specs from vim.
* Set `<leader>` to a single space.
* Switch between the last two files with space-space.
* Syntax highlighting for CoffeeScript, Textile, Cucumber, Haml, Markdown, and
  HTML.
* Use [Ag](https://github.com/ggreer/the_silver_searcher) instead of Grep when
  available.
* Use [Exuberant Ctags](http://ctags.sourceforge.net/) for tab completion.
* Use [GitHub color scheme](https://github.com/croaky/vim-colors-github).
* Use [Vundle](https://github.com/gmarik/vundle) to manage plugins.

[tmux](http://robots.thoughtbot.com/a-tmux-crash-course)
configuration:

* Improve color resolution.
* Remove administrative debris (session name, hostname, time) in status bar.
* Set prefix to `Ctrl+a` (like GNU screen).
* Soften status bar color from harsh green to light gray.

[git](http://git-scm.com/) configuration:

* Adds a `create-branch` alias to create feature branches.
* Adds a `delete-branch` alias to delete feature branches.
* Adds a `merge-branch` alias to merge feature branches into master.
* Adds an `up` alias to fetch and rebase `origin/master` into the feature
  branch. Use `git up -i` for interactive rebases.

Shell aliases and scripts:

* `b` for `bundle`.
* `g` with no arguments is `git status` and with arguments acts like `git`.
* `git-churn` to show churn for the files changed in the branch.
* `m` for `rake db:migrate && rake db:rollback && rake db:migrate && rake db:test:prepare`.
* `mcd` to make a directory and change into it.
* `rake` is `zeus rake` if using [Zeus](https://github.com/burke/zeus) on the
  project in current directory.
* `replace foo bar **/*.rb` to find and replace within a given list of files.
* `rk` for `rake`.
* `rspec` is `zeus rspec` if using Zeus on the project in current directory.
* `tat` to attach to tmux session named the same as the current directory.
* `v` for `$VISUAL`.

Credits
-------

Thanks to [thoughtbot](http://thoughtbot.com/) and the contributors.

These dotfiles are free software and may be redistributed under the terms specified in the [LICENSE](LICENSE) file.
