# 🍟 A menu for your bash scripts

... for Android, BSDs, Linux, macOS, SunOS, Windows (MinGW, WSL)

Presents a menu for the user to pick an option from. A nice feature to add
to your shell scripts, that need some interaction with the user.

![GIF](opti.gif)







## Usage

```
Usage:
   mulle-menu [flags] <menu-option> ...

   Present a menu on the command line at the current cursor position. The
   user can then use cursor keys or 'j' 'k' and ENTER to make a selection.
   The user can press ESC or 'q' to quit the menu. SIGINT (CTRL-C) is also
   intercepted and treated as a special form of quitting.

   The menu will return immediately, if only a single option is given.

   Do not use redirection when calling mulle-menu. So do not use '<' or '>' on
   stdin/stdout or use calls like  $(mulle-menu ...)

Example:
      mulle-menu VfL Bochum 1848
Your options are:
> VfL
  Bochum
  1848

Return code:
   0-125  : index of the chosen option
   128    : user opted out, did not choose anything
   130    : user pressed CTRL-C
   131    : options are empty
   132    : too many options (128 max)
   141    : EOF encountred

Flags:
   --final-title <s>      : set string for final result output ("" to suppress)
   --no-ctrl-c            : do not trap CTRL-C, this disables polling
   --option <s>           : you can also add options by an option string
   --options <s>          : as option, pass multiple options separated by '\n'
   --prefix <c>           : set prefix for unselected options ("  ")
   --select <row>         : pre-select another row than 0
   --selection-prefix <c> : set prefix for selected options ("> ")
   --sv-rc                : trust tput sv/rc, which seems to be broken often
   --title <s>            : set string for initial prompt ("" to suppress)
   --visible-items <n>    : number of items to present at once (7)
   -ld                    : additional debug output
   -le                    : additional environment debug output
   -lt                    : trace through bash code
   -lx                    : external command execution log output
   -n                     : dry run
   -s                     : be silent
   -v                     : be verbose (increase with -vv, -vvv)

```








## Install

See [mulle-sde-developer](//github.com/mulle-sde/mulle-sde-developer) how to
install mulle-sde, which will also install mulle-menu with required
dependencies.

The command to install only the latest mulle-menu into
`/usr/local` (with **sudo**) is:

``` bash
curl -L 'https://github.com/mulle-sde/mulle-menu/archive/latest.tar.gz' \
 | tar xfz - && cd 'mulle-menu-latest' && sudo ./bin/installer /usr/local
```



## Author

[Nat!](https://mulle-kybernetik.com/weblog) for Mulle kybernetiK


