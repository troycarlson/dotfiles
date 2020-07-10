# dotfiles

## New Machine Setup

See `new-machine-setup.sh`.

## Dotfiles Setup

**1. Clone the repository**
```shell
$ git clone --bare <git-repo-url> $HOME/.dotfiles
```

**2. Define the alias in the current shell scope**
```shell
$ alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

**3. Check out the repository content**
```shell
$ dots checkout
```

**4. Ignore untracked files**
```shell
$ dots config --local status.showUntrackedFiles no
```

**5. Update variables**

Review all of the files and update any usernames/variables for your own purposes.

## Usage

Use the `dots` alias to manage this repository just like you would a normal Git repository.

```shell
$ dots status
$ dots pull
$ dots add ~/.vimrc
$ dots commit -m "Added a cool new Vim plugin"
$ dots push
```

## Fish Setup

Install Oh My Fish and optionally a theme (I like agnoster). See the [Oh My Fish](https://github.com/oh-my-fish/oh-my-fish) docs for installation instructions.

Install the agnoster theme:

```shell
$ omf install agnoster
$ omf theme agnoster
```

## Resources

[Oh My Fish](https://github.com/oh-my-fish/oh-my-fish)

Oh My Fish provides core infrastructure to allow you to install packages which extend or modify the look of your shell.

[Karabiner Elements](https://pqrs.org/osx/karabiner/)

I use this for the sole purpose of making my caps lock key behave like the escape key when pressed on it's own or like the control key when pressed with other keys. It's brilliant.

## Inspiration
[HN post](https://news.ycombinator.com/item?id=11070797)

[Atlassian post](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/)

[Random person's setup notes](https://github.com/Siilwyn/my-dotfiles/tree/master/.my-dotfiles)

## TODO
* Add section about preferred terminals on macOS/Linux
* Add portable cross platform support
