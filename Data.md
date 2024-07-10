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

#### OOM-killer score

Quand la RAM sature, le noyau Linux ``kill`` un des process en cours d'éxécution. Mais lequel ? Pour déterminer quel process tuer, Linux utilise une heuristique (badness heuristic) qui attribue un score (OOM-killer score)(OOM pour Out Of Memory) entre 0 (never kill) et 1000 (always kill). Le process ayant l'OOM-killer score le plus élevé est tué. L'OOM-killer score est _roughly_ le pourcentage de RAM utilisée par chaque process par rapport à sa RAM allouée. Par exemple, si un process utilise 50% de sa RAM allouée, son OOM-killer score sera de 500. La commande ``choom`` permet d'afficher et de modifier les OOM-killer score.

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