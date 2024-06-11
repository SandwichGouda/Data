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

#### OOM-killer score

Quand la RAM sature, le noyau Linux ``kill`` un des process en cours d'éxécution. Mais lequel ? Pour déterminer quel process tuer, Linux utilise une heuristique (badness heuristic) qui attribue un score (OOM-killer score)(OOM pour Out Of Memory) entre 0 (never kill) et 1000 (always kill). Le process ayant l'OOM-killer score le plus élevé est tué. L'OOM-killer score est _roughly_ le pourcentage de RAM utilisée par chaque process par rapport à sa RAM allouée. Par exemple, si un process utilise 50% de sa RAM allouée, son OOM-killer score sera de 500. La commande ``choom`` permet d'afficher et de modifier les OOM-killer score.

#### Hard links and symbolic links

Un lien symbolique (symlink) est un fichier qui pointe vers un (autre) fichier ou dossier. C'est un peu comme un raccourci (``.lnk``) sur Windows. Ils sont aussi appelés softlinks, car ils sont des pointeurs indirects, par opposition aux hardlinks qui pointent directement vers la data du disque. Ils peuvent pointer vers des fichiers qui sont sur d'autres systèmes de fichiers ou partitions. Le chemin peut être relatif ou absolu. Ils sont dits _broken_ (broken links) lorsque ce vers quoi ils pointent n'existe plus. Ils peuvent être utilisés pour éviter de dupliquer des fichiers ou dossiers, ou pour éviter d'avoir à préciser la version d'une commande ou d'un éxécutable à chaque fois qu'on l'éxécute. Ils sont créés avec la commande ``ln``. Attention, cette dernière crée des hard links par défaut, il faut utiliser ``--symbolic`` pour que le lien soit symbolique. (...)
