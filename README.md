# ansible-knoppix-setup
Setup Knoppix as a Poor Man's Installation on harddisk (which may be destroyed, see below!)!

In earlier versions of Knoppix there was a Poor Man's Installation. This version worked with a conf partition. Every time the Knoppix system was rebooted, you had a completely fresh installation and your personal files were extracted from a tar archive. I loved this kind of installtion, so I'm re-building it into every new Knoppix installtion on my harddisk. Described for example here: http://knoppix.net/forum/threads/31081-Poor-Man-s-Install-of-Latest-Knoppix

Newer Knoppix systems use an image partition instead, allowing you to modify your system. There is still the unchangeble Knoppix system underneath, but you have to keep care, what you get installed or modified on your image partition.

I like to have a fresh Knoppix every time I boot my system, but up to know it was hard work to set it up with a new Knoppix, so I stared to automize the process with Ansible ... (mainly for myself) ...

**Attention**
**This ansible procedure may destroy the content of your harddisk!**
**So please adapt it to your needs and know what you are doing.**

Usage:

Step1:

    git clone https://github.com/carlo-s/ansible-knoppix-setup
    cd ansible-knoppix-setup
    < Change the config.yml file! >
    ./start-knoppix-setup
    sudo shutdown -h now
    
After Step1 the main knoppix files are copied to the harddisk, but the grub bootloader is not yet installed, so make sure the knoppix9.2 iso dvd image is still inserted, boot and start once again:

Step2:

    git clone https://github.com/carlo-s/ansible-knoppix-setup
    cd ansible-knoppix-setup
    < Change the config.yml file! >
    ./start-knoppix-setup
    sudo shutdown -h now

After Step2 you can remove the dvd and boot from disk.

Now you can start preparing the conf filesystem.

Issues/Todos:
* Install grub with ansible (I still do not know, why this did not work)
* Protect the content of the harddisk, by searching for an EMPTY space for the boot partition
* hd0 in the boot/grub/menu.lst is fix, but might be wrong (see the grub-install --re-check output)!
* Make/test this setup for other versions of Knoppix
* Next ansible script for a conf standard setup!
    
