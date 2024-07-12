# Acquired Data in Computer Science

Data not to forget.

## Windows 

### WSL

- To activate (or [install](https://learn.microsoft.com/en-gb/windows/wsl/install)) [WSL](https://learn.microsoft.com/en-us/windows/wsl/setup/environment) : 
  * ``wsl --install`` in a Powershell.
  * Reboot. If a text apprears, it means that WSL is already active (go to next step)
  * ``wsl --list --online``, or ``wsl -l -o.`` : display list of available distributions
  * ``wsl --install -d Ubuntu`` or ``wsl --install -d Debian`` for instance to install a specific distribution.
  Note : If ``wsl --install`` displays a help message, specify the distribution (according to what has just been said)
  * In case of errors :
    - ``wsl --set-default-version 2`` sets up WSL's default version to WSL _2_, which can get it to work
    - ``wsl.exe --update`` updates WSL
    - [Install manual](https://learn.microsoft.com/en-gb/windows/wsl/install-manual)

## Linux

### How Linux Works

#### Environment variables

- Environnment variables all together can be accessec using ``printenv``.
- They can be accessed individually with ``echo $VAR``.
- What the different environment variables do and mean : (...)
  * ``HOME=/home/sandwichgouda`` : value of `~`
  * ``PWD`` : Print Working Directory
  * ``OLDPWD`` : The previous Working Drirectory. Very useful ! ``cd $OLDPWD``
  * ``TERM=xterm-256color`` ?
  * ``LS_COLORS`` ?
- Do they / can they change depending on the distro ? On the Des

#### Hard links and symbolic links

Un lien symbolique (symlink) est un fichier qui pointe vers un (autre) fichier ou dossier. C'est un peu comme un raccourci (``.lnk``) sur Windows. Ils sont aussi appelés softlinks, car ils sont des pointeurs indirects, par opposition aux hardlinks qui pointent directement vers la data du disque. Ils peuvent pointer vers des fichiers qui sont sur d'autres systèmes de fichiers ou partitions. Le chemin peut être relatif ou absolu. Ils sont dits _broken_ (broken links) lorsque ce vers quoi ils pointent n'existe plus. Ils peuvent être utilisés pour éviter de dupliquer des fichiers ou dossiers, ou pour éviter d'avoir à préciser la version d'une commande ou d'un éxécutable à chaque fois qu'on l'éxécute. Ils sont créés avec la commande ``ln``. Attention, cette dernière crée des hard links par défaut, il faut utiliser ``--symbolic`` pour que le lien soit symbolique. (...)

#### Super User

 ``sudo su``, or ``sudo -i``, allow to a sudoers (users that are sudo, that is part of the group sudo) to login as ``root``. That is, its terminal will from now on be logged in as root.  This creates a subshell : ``CTRL+D`` exits it in both cases. The difference between both commands is a question of shell environment and of environment variables. ``sudo -i`` provides a full login experience and simulates an environment as if you really just logged in as ``root``, while ``sudo su`` keeps you in your current environment with elevated privileges.  
 More precisely : 
- ``sudo -i`` simulates a full root login shell (in particular, you actually have to log in)
- ``sudo su`` switches to root without login environment.
- ``sudo -i`` shanges to root's home directory (``/root``)
- ``sudo su`` stays in the current working directory
- ``sudo -i`` loads root user's login environment.	
- ``sudo su`` keeps current user environment by default
- ``sudo -i`` Loads root-specific profile files (e.g., .bashrc, .profile).	
- ``sudo su`` Does not load root profile files unless sudo su - is used.
| Aspect | `sudo -i` | `sudo su` |
|--------|-----------|-----------|
| Shell Type | Simulates a full root login shell. | Switches to root without login environment. |
| Working Directory | Changes to root's home directory (`/root`). | Stays in the current working directory. |
| Environment Variables | Loads root user's login environment. | Keeps current user environment by default. |
| Profile Scripts | Loads root-specific profile files (e.g., `.bashrc`, `.profile`). | Does not load root profile files unless `sudo su -` is used. |

#### Linux distributions and desktop environments

If I got this right, Linux distributions are build on top of the Linux kernel, and Desktop Environments are build on top of Linux distributions. Without a linux Linux distributions, one can't do anything with the kernel alone. With a distribution, one has access to the shell ; but there isn't any graphical user interface. With a Desktop environment, you can have a GUI !

Linux distributions include :
- Debian
- Ubuntu (Debian-based)
- Redhat
- Gentoo
- Fedora
- NixOS (based on the ``nix`` package manager)
- Kali Linux
- Oracle Linux
- openSUSE-Tumbleweed
- openSUSE-Leap

Desktop environments include :
- KDE
- GNOME
- XFCE

#### The shell

When we speak of the command line, we are really referring to the **shell**. The shell is a program that takes keyboard commands and passes them to the operating system to treat. Almost all Linux distributions supply a shell program from the GNU Project called ``bash``. The name BASH is an acronym for Bourne Again Shell, a reference to the fact that bash is an enhanced replacement for SH, the original Unix shell program written by Steve Bourne. When using a graphical user interface, one needs another program called a **terminal emulator** to interact with the shell. Although, in desktop menus, it is most often called ``terminal``. The commands are written in what we call a **command prompt**. 
* In KDE, the terminal is emulated by ``Konsole``
* In GNOME, the terminal emulated by ``GNOME terminal``
* In XFCE, the terminal is emulated by ``xfce4 terminal``
* In the [X Window System](https://www.x.org/wiki/), the terminal is emulated by [``xterm``](https://invisible-island.net/xterm/).

- In a shell, the last character should be either a hash mark (``#``) or a dollar sign (``$``). The hash mark means the current user has Super User privileges.
- The X Window System, also called X11 or just X, (an underlying engine that makes the GUI go) supports a quick copy-and-paste technique : when highlighting some text, it is copied into a buffer maintained by X. Then, a middle mouse button click (or right-click, on Windows, and maybe also in some other terminal emulators). ``CTRL+C`` and ``CTRL+V`` do not work (use ``CTRL+SHIFT+C`` and ``CTRL+SHIFT+V``).
- There are actually several shells, i.e. there exist several programs, developped by different people, that are [Unix shells](https://en.wikipedia.org/wiki/Unix_shell) :
  * ``sh`` : Bourne Shell
  * ``ksh`` : KornShell 
  * ``csh`` : C Shell
  * ``tcsh`` ("T-Shell", "TC-Shell" or "TSCH") : TENEX C Shell
  * ``bash`` : Bourne Again Shell
  * ``zsh`` : Z Shell
  * ``PowerShell`` : Originally developed for Windows and now available to macOS and Linux.

For further investigation : 
- [Comparison of command shells](https://en.wikipedia.org/wiki/Unix_shell)
- [List of Unix (POSIX) commands](https://en.wikipedia.org/wiki/List_of_Unix_commands)
- [Read–eval–print loop](https://en.wikipedia.org/wiki/Read%E2%80%93eval%E2%80%93print_loop)
- [Restricted shell](https://en.wikipedia.org/wiki/Restricted_shell)
- [Shell (computing)](https://en.wikipedia.org/wiki/Shell_(computing))
- [Shell account](https://en.wikipedia.org/wiki/Shell_account)
- [Shell script](https://en.wikipedia.org/wiki/Shell_script)
- [Shell shoveling](https://en.wikipedia.org/wiki/Shell_shoveling)

#### Cursed terminal behaviour

- It can happend that your terminal has a _cursed_ behaviour described as follows :
  * Instead of `user@machine#` or `user@machine$` (depending on whether you have Super User rights or not), the prompt is a mere `$` sign
  * The terminal does not behave correctly upon pressing the up and down arrow to navigate in the command history : does not show older (or newer) commands and only prints (cursed) `^[[A` and `^[[B` to standard output instead each time UP/DOWN arrow keys are pressed
  * The Terminal does not autocomplete when `TAB` is pressed, and writes an actual tabulation (huge horizontal space) into the command line instead
- When this happens, you should see, using `echo $SHELL`, that the program (binary file) used to run the shell (to run the process that displays a shell) is most likely `/bin/sh`. This means you're using SH, or Shell, the older version of BASH (Recall that BASH means Bourne Again Shell, and is newer a version of the original Shell, written bu Stephen Bourne), instead of bash, located in `/usr/bin/bash`. 
- Note : you can see shell binaries with `which sh`, `which bash`...
- Hence, a way around this is to simply type `bash` in the Shell. This will create a childprocess to the current `sh` shell, the binary program of which will be `bash` instead of `sh`. 
- More generally, if you have `I/O` issues, in particular this cursed behaviour issue, in a command prompt, a way around this is to use a Read-Line wrapper such as `rlwrap`.
  * A Read-Line wrapper (typically rlwrap, actually) is a wrapper that will handle I/O for a given process.
  * For instance, `rlwrap sh` will run a Shell (sh) instance, but with I/O managed by `rlwrap`. 
  * This allows to bypass the shitty (to put it more nicely : old, outdated) I/O handling of `sh` - or any other process!
  * So, if you have, say, for instance, a Go interpreter, like `yaegi`, that takes form of a command prompt, but that does not handle I/O correctly (with the same, or any other unwanted behaviour), you can use `rlwrap [...]` (`rlwrap yaegi`, `rlwrap sh`, `rlwrap sage`, `rlwrap python3`...)(python and sage manage I/O quite well, but yea)
  * You can also change your default shell for a given user, see [chsh](#chsh)
  * Voilà :)

#### Virtual terminals

Even if one ha no terminal emulator running, several terminal sessions continue to run behind the graphical desktop. Called _virtual terminals_ or _virtual consoles_, these sessions can be accessed on most Linux distributions with ``CTRL+ALT+F1`` to ``CTRL+ALT+F6`` on most systems. When a session is accessed, it presents a login prompt into which we can enter our username and password. To switch from one virtual console to another, press ``ALT`` and ``F1``-``F6``. To return to the graphical desktop, press ALT-F7.

#### OOM-killer score

Quand la RAM sature, le noyau Linux ``kill`` un des process en cours d'éxécution. Mais lequel ? Pour déterminer quel process tuer, Linux utilise une heuristique (badness heuristic) qui attribue un score (OOM-killer score)(OOM pour Out Of Memory) entre 0 (never kill) et 1000 (always kill). Le process ayant l'OOM-killer score le plus élevé est tué. L'OOM-killer score est _roughly_ le pourcentage de RAM utilisée par chaque process par rapport à sa RAM allouée. Par exemple, si un process utilise 50% de sa RAM allouée, son OOM-killer score sera de 500. La commande ``choom`` permet d'afficher et de modifier les OOM-killer score.

#### Regex

Regular Expressions (often abbreviated as Regex, or Regexp), are expressions that can be used to describe patterns very synthetically.

##### Regex Meta-characters

- ``.`` : Matches any single character except a newline character (``\n``)
- ``*`` : Matches 0 or more of the preceding element.
- ``?`` : Matches 0 or 1 of the preceding element.
- ``[]`` : Matches any one of the characters inside the brackets.
  * ``[a-z]`` matches any lowercase letter.
  * ``[A-Z]`` matches any uppercase letter.
  * [0-9] matches digits
  * [a-zA-Z0-9_] matches numbers, digits, and underscores.
- ``[^]`` : Matches any character **except** the ones inside the brackets. ``^`` basically means negation.
- ``^`` : Matches the beginning of a line.
- ``$`` : Matches the end of a line.
- ``{n}`` : Matches ``n`` occurences of the preceding element. ``n`` must be given in decimal (not a literal value).
- ``{n,m}`` : Matches any ``k`` occurences of the preceding element, for any $n \leqslant k \leqslant m$.
- ``{n,}`` : Matches any ``k`` occurences of the preceding element, for any $k \geqslant n$.
- ``{,m}`` : Matches any ``k`` occurences of the preceding element, for any $k \leqslant m$.
- ``\`` : Escapes special characters to treat them as literals.
- Parenthesis ``()`` allow to group things.
- ``...|...`` : Matches either the left or the right hand side of the pipe.
  * Note : By default, ``...|...`` is prioritized as ``(...)|(...)`` (see example above :).
  * To apply the logical ``OR``to only some part of the pattern, use ``...(..|..)...``

##### Special character classes

- ``\d`` : Matches any digit : [0-9]
- ``\w`` : Matches any word character : letters, digits, and underscore : [a-zA-Z0-9_]
- ``\s`` : Matches any whitespace character : spaces, tabs, newlines.
- ``\D`` : Matches any non-digit character : [^0-9]
- ``\W`` : Matches any non-word character : [^a-zA-Z0-9_]
- ``\S`` : Matches any non-whitespace character.
- ``\b`` : Matches a position where a word boundary occurs, i.e., the position between a word character (letter, digit, or underscore : [a-zA-Z0-9_]) and a non word character (whitespace, punctuation...)
- ``\B`` : Matches a position that is NOT a word boundary.

##### Examples

- ``h.t`` matches ``hit``, ``hot``, ``hat``... any thre character sequence of the form ``h_t``.
- ``ho*t`` matches ``ht``, ``hot``, ``hoot``, ``hooot``, ..., ``hooooooooot``, ...
- ``ho?t``matches ``ht`` and ``hot``.
- ``h[aeiou]t`` matches ``hat``, ``hit``, ``hot``, ``hut`` and ``het``.
- ``h[^aeiou]t`` matches any word of the form ``h.t`` except ``hat``, ``hit``, ``hot``, ``hut``, ``het``
- ``^hello`` matches any line starting with ``hello``.
- ``world$`` matches any line ending with ``world``.
- ``ho{19}t`` matches only ``hooooooooooooooooooot`` (here ``o`` appears 19 times).
- ``ho{2,19}t`` matches ``hoot``, ``hooot``, ...,  ``hooooooooooooooooooot`` (here ``o`` appears 19 times again).
- ``\+``matches ``+``, ``\.``matches ``.``, ``\?``matches ``?``, ...
- ``cat|dog`` matches both ``cat`` and ``dog``.
- ``(c|d)og`` matches ``cog`` and ``dog``.
- ``\bword\b`` matches "word" as a standalone word, i.e., does not match  "sword" or "wording".
- ``\Bword`` matches ``sword``, but not ``word``.
- ``word\B`` matches ``wordy``, but not ``word``.

#### Shell wildcard patterns 

They can be used in the terminal or in ``*`` : all

### Differences between Linux distributions 

#### Ubuntu

#### Debian

#### Arch Linux

#### Fedora

#### OpenSUSE

#### NixOS

NixOS is a distribution based on the Niw package manager. It is special in it's package management and configuration systems. NixOS is the package manager that has the most package. 

The NixOS repo

AUR repo

##### Configurations in NixOS

All configurations options can be written in ``/etc/nixos/configuration.nix``.

### Dual boots

- To create a dual boot, you must reduce the partition. Use the Disk manager on Windows to do that. 100Go is a good amount to install and use a Linux distribution.
- NTFS the the (only) Windows File System Manager. It is the only one on Windows that allows to make disk partition reductions. FAT32, EXT4 are other File Systems.
- BitLocker is on Windows by default. It is a disk cyphering system. 
- F12, SUPPR, F1, F2

### Linux miscellaneous things

- ``cd``is a shell built-in command. It is not like other commands. For instance you cannot do ``man cd``. (Any other differences ?)
- One gives several arguments to a command by separating them with commas. Example : ``htop --pid 1,2,3``
- Remember to ``(sudo) apt update`` from time to time !
- LTS = Last Stable Release
- ``.bashrc`` (on BASH shells), or ``.zrc`` (on ZSH shells), is a script that is executed each time a user logs in. 
  * Adding the line ``export PATH=$PATH:/usr/local/go/bin`` in it allows to (permanently) add environment variables, for a given user.
- If you get a ``Permission denied`` error trying to remove something while logged in as ``root`` and/or using ``sudo``, it might be because what you're deleting is used by a process (In other words : "This cannot be removed because it's used by ... ; please close it"). (that's one of a kind of silent error)
- To install docker easily : 
  * ``wget get.docker.com``
  * This downloads ``index.html``
  * When using ``cat``, you can see ``index.html``is actually a bash script !
  * -> ``bash index.html`` installs docker
- ``:(){ :|:& };:`` is a fork bomb. A fork bomb (or rabbit virus) is a denial-of-service (DoS) attack wherein a process continually replicates (forks) itself to deplete available system resources, slowing down or crashing the system due to resource starvation.

### Linux package managers

- ``dpkg`` stands for Debian Package Manager.
- It is actually used and embedded into ``apt``
- ``apt`` is a frontend that simplifies the usage of APT by combining ``dpkg``, ``apt-cache``, ``apt-get``, ``apr-mark``, ``apt-file``, and more.
- You can use local mirrors to be able to work 100% offline !

#### How APT Works

APT refers to a list of package available at ``https://packages.ubuntu.com/`` (...)

#### APT Subcommands

- ``apt``
  * ``apt search`` searches and prints the list of packages containing the 
- ``tree``
  * ``tree -L 2`` : maximum depth = 2
- ``apt``
  * ``apt``
    + ``apt search``
    + ``
  * ``dpkg``
  * ``apt-get``
  * ``apt-cache``
  * ``apt-mark``
    + ``apt-mark showmanual`` (supposedly) shows the list of all manually installed WSL packages. There are, actually, more packages printed than that. See [Linux packages](#linux-packages) for more info.

- ``apt-file search`` seemingly works better than ``apt search``
- If the installation of a package fails : ``sudo apt install pip --fix-missing`` ; ``sudo apt --fix-broken install`` 
- ``dpkg -L packagename`` displays exacly all files added to the system after installing packagename. In particular, ``dpkg -L packagename | grep /usr/bin`` should display all commands newly installed !