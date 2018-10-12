Open Secure-K OS
================

What is
^^^^^^^

Short:

    **Open Secure-K OS** is a **liveng-compliant** (https://github.com/LumIT-Labs/liveng, https://liveng.readthedocs.io) operating system built using Linux Debian Stretch components. It is a free and open source next generation live operating system, on which `Secure-K OS <https://mon-k.com/products/secure-k-personal>`_ is built, capable of: 

    * native encrypted persistence;
    * kernel update (on a live ISO 9660 filesystem!);
    * UEFI, with UEFI Secure Boot compatibility, with a real efi partition;
    * user creation wizard upon the first boot.

Longer:

    **Open Secure-K OS** is an operating system booting from a USB key in which you can safely create and store your personal and private data. It is an advanced Debian Stretch Linux-based live USB operating system built for security and ease of use: user and system data are saved encrypted within the USB key (AES 512bit), so the system can be used as a clean and safe environment for your on-line security-critical activities. Moreover Secure-K does not rely on the PC hard drive and, being a Linux derivative, it’s immune to most viruses and it’s spyware / adware / backdoor free.

    Open Secure-K OS features a unique partitioning scheme - it is **liveng-compliant** (https://github.com/LumIT-Labs/liveng, https://liveng.readthedocs.io) -, which allows complete system and kernel update. GRUB is the bootloader for both BIOS and UEFI; the Linux Foundation’s preloader assures the Secure Boot compliance.

    Unique system features are:

    * native encrypted persistence;
    * kernel update (on a live ISO 9660 filesystem!);
    * UEFI, with UEFI Secure Boot compatibility, with a real efi partition;
    * user creation wizard upon the first boot.

    `Secure-K OS <https://mon-k.com/products/secure-k-personal>`_ is built upon Open Secure-K OS.


Contribute to the project
^^^^^^^^^^^^^^^^^^^^^^^^^

Open Secure-K OS is a **free and open source** project; code and documentation contributions are welcome. 
Open Secure-K OS is a **LumIT Labs** project.


How to build
^^^^^^^^^^^^

@todo.


How to deploy
^^^^^^^^^^^^^

**Open Secure-K OS Deployer** (https://github.com/LumIT-Labs/open-securekos-deployer) is the deployment system for writing Open Secure-K OS onto a USB key - it will create the liveng partitioning scheme: run the Deployer, select the Open Secure-K OS image you have built and type in the passphrase for LUKS-encrypting the data persistence partition, then click on Write. Deployer will deploy Open Secure-K OS onto all the insterted (and listed) USB devices.

