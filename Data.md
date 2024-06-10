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