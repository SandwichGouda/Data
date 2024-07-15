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

### Linux base system commands and options

#### ``man``

- Read the first lines of the manual - the DESCRIPTION section, it is often enlightening !
- It is possible to move sideways using the left and right arrow keys ! 
- Press ``h`` while in a man page to display help, in particular navigation and searching help.
- Type ``/`` while in a man page to open Search Forward. 
  * Type in a keyword or a regular expression, press `ENTER` when finished.
  * Pressing ENTER will search forward for next occurence. 
  * Pressing ``N`` will search for the next occurence of the regex.
  * Pressing ``SHIFT+N`` will search for the previous occurence of the regex.
- Type ``?`` while in a man page to open Search Backward. 
  * It works the same as Search Foward, but seaches backwards when pressing ``ENTER``.
  * You can always use ``N`` and ``SHIFT+N`` to find next and previous occurences.
- Press ``D`` to go down **half a page**. Press ``U`` to go up **half a page**.

#### ``df``

Reports file system disk space usage by showing the current amount of free space on each disk drive.

- If a file (resp. files) is (resp. are) given as argument : ``df`` displays the amount of disk space available on the file system containing the file (resp. on each file system containing each file).
- If no file name is given, the space available on all currently mounted file systems is shown. 
- If an argument is the absolute file name of a disk device node containing a mounted file system, ``df`` shows the space available on that file system rather than on the file system containing the device node.  

* ``-h, --human-readable`` : print sizes in powers of 1024 (e.g., 1023M)
* ``-H``, ``--si`` : print sizes in powers of 1000 (e.g., 1.1G)

#### ``free``

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
- ``grep -r "regex" /path/to/folder`` : searches recursively in all

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

#### /etc/shadow

#### chroot

- **This part has to be re-processed, and studied hands-on with a shell**
- The `CHROOT_DIR` (or simply chroot directory) is a directory that serves as the root directory for a program or user, but only within a restricted environment. It’s used when executing a chroot (short for "change root") command, which changes the apparent root directory for a running process and its children.
- It's useful for 
  * Isolating Processes: By restricting a process to a specified directory, it creates a separate environment, effectively “jailing” the process so that it can’t access files or directories outside of its specified `CHROOT_DIR`.
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

#### ``tee``, ``boundary``, ``vboundary``

I don't know

#### Other small commands

- ``date`` : Prints the date of the machine you are working on. You can specify an output format (see manual).
- ``cal`` : Prints a calendar.
- ``exit`` : Exits the current terminal.

#### Remaining commands to deal with

- Use which or command -v to check for specific commands in your environment.
- compgen -c lists all available commands, helpful after installing a new package.
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

#### ``tldr``

TLDR shows shortened manpages for commands with _pratically useful_ and **relevant** examples.
As opposed to `man`, despite which's honourable effort to help users, is much less easy to read.

#### poppler-utils

Poppler is a PDF rendering library. It is based on xPDF, which is itself based on Motif.
Recall that you can see all commands provided by a given (dpkg- or apt-installed) package using ``dpkg -L packagename``.
Commands provided :
- ``pdfattach``