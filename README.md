# My dotfiles

_Idea based on [this article](https://www.atlassian.com/git/tutorials/dotfiles)_

Mostly a collection of some things I have around that make a few things a bit easier.

A small explanation for the organization, if you want to use. Generally, these are only made for the way I organize things, but if you know what you're doing I don't think I'll have to say much about how to adapt this to your system.

### .Xresources

My .Xresources file normally only sources external files, but at the moment I have a bit extra in there I haven't pulled out yet. Colors live in `.xrdb/color/`, the rest (like my rofi config) is in `.xrdb/config/`. I'll write a color changing script some day, but for now the color files all have a basic variable template and the theme file is just a copy of one of the color files, so overwriting it shouldn't cause you to lose anything.

### .bashrc

Added coloring for my PS1 variable with a bunch of setaf commands in convenient variables with slightly inconvenient variable names but it certainly makes it a bit easier to look at. Also a function to display the git branch if you're in a repository directory, as my devices for some reason don't have the git-prompt.sh and I can't exactly justify a nearly 600 line script file when I can make a quick function. 

### .config/scripts

Most of these scripts are made for when I'm either running openbox without a taskbar, or for piping information into tint2 or polybar. There is a script to show recent hockey scores, to pull album art from a song's ID3 tag, one to add to an autostart file to start polybar after logging in, and one to convert old playlist files (.m3u) to JSON for my personal website. Very unlikely that anyone wants to use these, but there you go.
