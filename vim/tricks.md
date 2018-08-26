
# Vim tricks

`;` - repeat find operation.

`gj`, `gk` - jump between visual row, not logic row.

`.` - repeat operation.

`t`, `T` - find until

`f`, `f` - find

# VSCode Vim tricks

`gd` - jump to definition.

`gq` - on a visual selection reflow and wordwrap blocks of text, preserving commenting style. Great for formatting documentation comments.

`gb` - select a word.

`af` - extend selection in visual mode.

`gh` - show error or warning message just like move mouse over it.

# vim-surround

|Surround Command|Description|
|----------------|-----------|
|`d s <existing char>`|Delete existing surround|
|`c s <existing char> <desired char>`|Change surround existing to desired|
|`y s <motion> <desired char>`|Surround something with something using motion (as in "you surround")|
|`S <desired char>`|Surround when in visual modes (surrounds full selection)|

# execute shell in vim

```shell
:! By itself, runs the last external command (from your shell history)
:!! Repeats the last command
:silent !{cmd} Eliminates the need to hit enter after the command is done
:r !{cmd} Puts the output of $cmd into the current buffer.
```

or use ctrl-z to suspend vim and use `fg` back to vim