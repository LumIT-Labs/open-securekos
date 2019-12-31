Open Secure-K OS
================

What is
^^^^^^^

    **Open Secure-K OS** is an operating system booting from a USB key in which you can safely create and store your personal and private data. It is an **advanced Debian Stretch Linux-based live USB operating system built for security**: user and system data are saved encrypted within the USB key (AES 512bit), so the system can be used as a clean and safe environment for your on-line security-critical activities. Moreover Open Secure-K OS does not rely on the PC hard drive and, being a Linux derivative, it’s immune to most viruses and it’s spyware / adware / backdoor free.

    Open Secure-K OS features a unique partitioning scheme - it is liveng-compliant (https://github.com/LumIT-Labs/liveng, https://liveng.readthedocs.io) -, which allows complete system and kernel update with a readonly system partition. GRUB is the bootloader for both BIOS and UEFI; the Linux Foundation’s preloader assures the Secure Boot compliance.

    Unique system features are:

    * native encrypted persistence;
    * **kernel update** (**on a ISO9660 filesystem**, which is the best option for a live operating system because of its strength against data corruption and tampering);
    * UEFI, with UEFI Secure Boot compatibility, with a real efi partition;
    * user creation wizard upon the first boot. Live operating systems use to have the “live” user already created, while Open Secure-K OS pops up the Initial Setup interface in order to create one, together with language, keyboard and time zone. 

     None of the existing ISO9660-based live operating systems except Open Secure-K OS provides a kernel update feature.

    At the end of the day, Open Secure-K OS is thought as a **the most solid and secure base for your own live operating system** - you can customize it at your will (only the very basic programs are installed by default).

**`Resilient Linux <https://www.resilientlinux.com/>`_ is a hard-drive installable operating system built upon Open Secure-K OS.**
**Open Secure-K OS served as a proof of concept for the liveng technology and wont' be developed any more. Please refer to Resilient Linux, which is actively developed and can also be used as a live system.**

Screenshots
^^^^^^^^^^^

.. image:: screenshots/open-securek-os.1.png

.. image:: screenshots/open-securek-os.2.png


Contribute to the project
^^^^^^^^^^^^^^^^^^^^^^^^^

Open Secure-K OS is a **free and open source** project; code and documentation contributions are welcome.

Open Secure-K OS is a **LumIT Labs** project.


How to build the initial ISO image
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

A **Debian Stretch** host is required for the build (64 bit preferred); other Debian-derived systems may work.

The Open Secure-K OS ISO image is built using the standard Debian **live-build** framework, so you first need to install it::
 
    apt-get install -y live-build

Git **clone this project as root**.

In order to build a Secure-K OS image, open the terminal emulator **as root**::

    cd /path/to/open-securekos/live-build
    bash lb

A .iso image will be built according to your host architecture (if building on an amd64, a 64bit iso will be produced; an i386 iso will be built on i386 hosts).


Download a ready-to-use image
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

An already-built ISO image is also available, see this repository's Releases (https://github.com/LumIT-Labs/open-securekos/releases).


How to deploy
^^^^^^^^^^^^^

**Open Secure-K OS Deployer** (https://github.com/LumIT-Labs/open-securekos-deployer) is the deployment system for writing the initial Open Secure-K OS ISO image onto a USB key - it will create the liveng partitioning scheme: run the Deployer, select the image you have built (or downloaded) and type in a passphrase of your choice for LUKS-encrypting the data persistence partition (remember: Open Secure-K OS features native encrypted persistence), then click on Write. Deployer will write the Open Secure-K OS ISO image onto all the plugged-in (and listed) USB devices, thus creating the complete Open Secure-K OS operating system.

Some Open Secure-K OS notes:

* use sudo for super-cow powers;
* during the boot, you will be asked for the decryption password of the data persistence partition - the secret you enter while deploying;
* system user will be created upon the first boot;
* [only for 32 bit builds] a GNOME Initial Setup bug triggers a crash if setting the network in the Initial Setup interface. In this case, just reboot the system.
