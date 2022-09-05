# VM-config

Hello, i'd like introduce my work here(well sorta) to help you understand and get setup a windows 10/11 virtual machine with GPU passthrough and cpu pinning.

TLDR;:
    This repository brings nothing new to the table, just some install hooks setup with the hooks included for the tradicional VFIO script structure, like the one you see from SomeOrdinaryGames;
    For more info see i got it in my wiki here: https://github.com/No-Biggie805/VM-config.wiki.git.
    Do be warned that while "install hooks" installs the whole structure of folders and script files,in /etc/libvirt/hooks, "remove_hooks" deletes everything on it, in case you have other hooks set inside and don't want to delete them then maybe try doing it manually. 
