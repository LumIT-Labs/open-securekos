Open Secure-K OS
================

What is
^^^^^^^

Short:

    **Open Secure-K OS** is a **liveng-compliant** (https://github.com/LumIT-Labs/liveng, https://liveng.readthedocs.io) operating system built using Linux Debian Stretch components. It is a free and open source next generation **live operating system**, on which `Secure-K OS <https://mon-k.com/products/secure-k-personal>`_ is built, **capable of**:

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

A **32bit Debian Stretch** bare-metal system or virtual machine is required for the build.

The Open Secure-K OS ISO image is built using the standard Debian **live-build** framework, so you first need to install it:: 
 
    apt-get install -y live-build

Git **clone this project as root**.

In order to build a Secure-K OS image, open the terminal emulator **as root**::

    cd /path/to/open-securekos/live-build

    lb clean
    lb config -c auto/config
    lb build 

A 32 bit image will be built (the resulting .iso file). 


Download a ready-to-use image
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

An already-built ISO image is also available in the **image-latest/** folder (you have to git clone the repository in order to be able to download it).


How to deploy
^^^^^^^^^^^^^

**Open Secure-K OS Deployer** (https://github.com/LumIT-Labs/open-securekos-deployer) is the deployment system for writing the initial Open Secure-K OS ISO image onto a USB key - it will create the liveng partitioning scheme: run the Deployer, select the image you have built (or downloaded) and type in a passphrase of your choice for LUKS-encrypting the data persistence partition (remember: Open Secure-K OS features native encrypted persistence), then click on Write. Deployer will write the Open Secure-K OS ISO image onto all the plugged-in (and listed) USB devices, thus creating the complete Open Secure-K OS operating system.

Some Open Secure-K OS notes:

* root user's password is: *liveng*; 
* during the boot, you will be asked for the decryption password of the data persistence partition;
* system user will be created upon the first boot.


Test with VirtualBox
^^^^^^^^^^^^^^^^^^^^

Virtual machine test is not recommended for a live operating system, because in order to fully appreciate its features a bare-metal-boot is to us the best experience.

However, you can test Open Secure-K OS within the virtualization system of your choice; you first need to bit-bit copy the content of the USB key you have written by using the Open Secure-K OS Deployer into a file. You cannot use the initial ISO image you have built (or downloaded) directly, because it lacks the liveng partitioning scheme.

Thus, deploy the ISO image onto a USB key as previously described, then (locate USB key's device file with *fdisk -l*)::

    dd if=/dev/deviceFile of=/tmp/open-securek-os.img bs=10M

A real example::

    dd if=/dev/sdc of=/tmp/open-securek-os.img bs=10M

Note that the new file has got the .img extension (it's not a ISO file any more).

With this image file, a VirtualBox-related howto now follows. 

First of all, you need to convert the IMG image into the VirtualBox VDI format::

    vboxmanage convertdd /path/to/open-securek-os.img /path/to/open-securek-os.vdi

Then you have to create a new virtual machine in VirtualBox and use *open-securek-os.vdi* as the virtual hard drive. 
You also need to enable the PAE/NX CPU functionalities and 3D acceleration capabilities.

We have noticed that on some VirtualBox installations, Plymouth input password box isn't working: upon booting, edit the GRUB linux command line (*e* key) and remove the *splash=silent* directive.

Run-time, you are advised to install VirtualBox Guest Additions, then update the current kernel::

    apt-get install --reinstall sk-linux-image-update


What about Secure-K OS?
^^^^^^^^^^^^^^^^^^^^^^^

`Secure-K OS <https://mon-k.com/products/secure-k-personal>`_ is built upon Open Secure-K OS and improves its *community counterpart* in some ways. 

Unique Secure-K OS features are:

* anti-tampering measures performed during the bootstrap: a self-checking kernel component is also available, which is responsible of verifying that system files have not been tampered, preventing the virtualization of the image, the use of the *init=* kernel boot parameter, and so on;
* unencrypted key’s partition for data exchange;
* Backup & Restore – an optional encrypted real-time system backup: system can be restored to a new USB key, useful in case of key theft or loss. Backup is performed into the Secure-K OS' cloud;
* Secure-Zone, which allows:

    * anonymous browsing;
    * encrypted textual, audio and video chat;
    * encrypted and signed emails exchange with ease: a program called Key Manager is able to generate and exchange GPG keys with a central keyserver. This allows everyone running a Secure-K OS to send encrypted emails to another Secure-K OS user without manually retrieving the GPG key: process is done automatically by the modified Evolution email client build, which runs on top of every Secure-K OS.


