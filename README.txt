Running the script:
To run the script you will need to download AutoHotkey, at autohotkey.com
Then simply open the script (.ahk file) to run it. If you don't want to use it immediately,
then press Alt+P, which suspends the hotkeys until you toggle it on again (Alt+P again).

The hotkeys are designed to be easy to use and have minimal interference with normal play,
but if you want to change them (for example to numpad keys, which don't appear on all
keyboards), you can edit the autohotkey file, which is really just a txt file,
and change the hotkeys (before the double colons) to whatever keys you want using
AutoHotKey's key list at https://www.autohotkey.com/docs/KeyList.htm.

Control:
Alt+P: Pause or unpause hotkeys (incase you want to use the hotkeys normally)

Alt+C: Set the numbers to what you have copied, separated by
"&".  For example, if you copy "1000&4" it will start with 1000,4 and count up.
If you wanted to instead make all countries, then copy "country,population&1", do Alt+C,
then keep right clicking.

If you use 2 &s, it will set the end string, that comes after the second number, as well.
For example, to run through liquid dirtyfirium chain
copy "star,star,star,star,star,star,star furnace, type-&0& liquid dirtyfirium
then use right arrow to get it since you don't want a comma inbetween type- and 0

Alt+S: Set the first number in the combination to 1000 and the second to 1 (for getting
numbers past 1000)

Alt+G: Just set the first number in the combination to 1

Alt+F: remove the end string

Hotkeys:
RightClick: Get 1 number/element
Right arrow: Get 1 number/element without putting a comma inbetween the first string
and second number (for chains where the number isn't at the start of the element) ex.
"Type-44 liquid dirtyfirium"
[: add 1
]: add -1
;: do *2
Left arrow: do *[whatever you've copied]
\: add whatever you've copied
Down arrow: pathfasa (have the path column open in one tab,
with the cell where you want to start selected, and discord in the other
so that you can alt tab between them)
Be careful with spamming it too fast, because the discord bot will slow down, or
the script might skip one line

Made by ShadowyZephyr#8566 on Discord and mirrored to GitHub (https://github.com/WikipediaUserbox/EoD-AutoHotKey-Script) and Archive.org (https://archive.org/details/EoDAHKScript) by wikipediainfobox#1320
