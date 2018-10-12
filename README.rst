Open Secure-K OS
================

What is
^^^^^^^

Short:

    **Open Secure-K OS** is a **liveng-compliant** (https://github.com/LumIT-Labs/liveng, https://liveng.readthedocs.io) operating system built using Linux Debian Stretch components. It is a free and open source next generation live operating system, on which `Secure-K OS <https://mon-k.com/products/secure-k-personal>`_ is built, capable of: 

    * native encrypted persistence;
    * kernel update (on a live ISO 9660 filesystem!);
    * UEFI, with UEFI Secure Boot compatibility, with a real efi partition;
    * user creation wizard upon the first boot. Live operating systems use to have the “live” user already created, while Open Secure-K OS pops up the Initial Setup interface in order to create one, together with language, keyboard and time zone. 

Longer:

    **Open Secure-K OS** is an operating system booting from a USB key in which you can safely create and store your personal and private data. It is an advanced Debian Stretch Linux-based live USB operating system built for security and ease of use: user and system data are saved encrypted within the USB key (AES 512bit), so the system can be used as a clean and safe environment for your on-line security-critical activities. Moreover Secure-K does not rely on the PC hard drive and, being a Linux derivative, it’s immune to most viruses and it’s spyware / adware / backdoor free.

    Open Secure-K OS features a unique partitioning scheme - it is **liveng-compliant** (https://github.com/LumIT-Labs/liveng, https://liveng.readthedocs.io) -, which allows complete system and kernel update. GRUB is the bootloader for both BIOS and UEFI; the Linux Foundation’s preloader assures the Secure Boot compliance.

    Unique system features are:

    * native encrypted persistence;
    * kernel update (on a live ISO 9660 filesystem!);
    * UEFI, with UEFI Secure Boot compatibility, with a real efi partition;
    * user creation wizard upon the first boot. Live operating systems use to have the “live” user already created, while Open Secure-K OS pops up the Initial Setup interface in order to create one, together with language, keyboard and time zone. 

    `Secure-K OS <https://mon-k.com/products/secure-k-personal>`_ is built upon Open Secure-K OS.


Contribute to the project
^^^^^^^^^^^^^^^^^^^^^^^^^

Open Secure-K OS is a **free and open source** project; code and documentation contributions are welcome. 

Open Secure-K OS is a **LumIT Labs** project.


How to build
^^^^^^^^^^^^

Open Secure-K OS is built using the standard Debian **live-build** framework, so you first need to install it:: 
 
    apt-get install -y live-build

In order to build a Secure-K OS image, open the terminal emulator **as root**::

    cd /path/to/open-securekos/live-build

    lb clean
    lb config -c auto/config
    lb build 


What you obtain
^^^^^^^^^^^^^^^

A 32 bit image of Open Secure-K OS will be built. 

* root user's password is: *root*; 
* during the boot, you will be asked for the decryption password of the data persistence partition (see *liveng* docs and the next section, *How to deploy*);
* system user will be created upon the first boot.


How to deploy
^^^^^^^^^^^^^

**Open Secure-K OS Deployer** (https://github.com/LumIT-Labs/open-securekos-deployer) is the deployment system for writing Open Secure-K OS onto a USB key - it will create the liveng partitioning scheme: run the Deployer, select the Open Secure-K OS image you have built and type in the passphrase for LUKS-encrypting the data persistence partition, then click on Write. Deployer will deploy Open Secure-K OS onto all the insterted (and listed) USB devices.


What about Secure-K OS?
^^^^^^^^^^^^^^^^^^^^^^^

`Secure-K OS <https://mon-k.com/products/secure-k-personal>`_ is built upon Open Secure-K OS. 

Unique Secure-K OS features are:

* anti-tampering measures performed during the bootstrap;
* unencrypted key’s partition for data exchange;
* Backup & Restore – an optional encrypted real-time system backup: system can be restored to a new USB key, useful in case of key theft or loss. Backup is performed into the Secure-K cloud.
* “security for everyone” area (Secure-Zone), which allows:
    * anonymous browsing;
    * encrypted textual, audio and video chat;
    * encrypted and signed emails exchange with ease: a program called Key Manager is able to generate and exchange GPG keys with a central keyserver. This allows everyone running a Secure-K OS to send encrypted emails to another Secure-K OS user without manually retrieving the GPG key: process is done automatically by the modified Evolution email client build, which runs on top of every Secure-K OS.


