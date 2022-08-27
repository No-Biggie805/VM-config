# VM-config

Hello, i'd like introduce my work here(well sorta) to help you understand and get setup a windows 10/11 virtual machine with GPU passthrough and cpu pinning.

Getting Started part

For starters you need to get you system set up, my go to gpu passthrough testing guide for newcomers also as an EZ setup all around is the RisingPrism guide, the one on their WIKI(link below), this guide only covers GPU passthrough but at least gives a walkthrough for advanced virtualization and checking if your system can really pass a card right through. If you don't want to use their scripts then maybe you can do this tutorial till step 6, and then install the scripts i have shown here.

This repository includes script hooks which are not mine to be made that you can either set up manually or automated by executing the "install_hooks.sh" script, it creates only win10 and win11 directories as set up follows to original libvirt WIKI configuration, "install_hooks.sh" also executes all the hooks for you, but is still needed to execute with:
sudo chmod +x install_hooks.sh 
To remove those file files use "remove_hooks.sh", do be warned that this script will remove everything below /etc/libvirt/hooks folder.
