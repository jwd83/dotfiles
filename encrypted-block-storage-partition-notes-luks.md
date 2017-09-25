# Making an Encrypted Partition with luks & ext4

I had been wanting to try out both encrypted volumes and Digital Ocean's new block storage service. I decided to try out both at once and from a little researched found it very easy to do. Once you have performed the steps below it's simple to disconnect the block storage from one system and connect it again to another using their interface. 


* Create a new droplet in NYC1 and create a new block device. Login to your droplet as root. Examine your block devices. command:

`
lsblk
`

* You will probably see your block storage at `sda` Use cryptsetup to create an encrypted device. Choose a strong password you can remember. You will need it each time you connect to the storage. Command:

`
cryptsetup --verbose --verify-passphrase luksFormat /dev/sda
`

* Open the encrypted partition for use and give it a descriptive name such as lukfs. this will put the partition at /dev/mapper/lukfs. command:

`
cryptsetup luksOpen /dev/sda lukfs
`


* Format the filesystem. for ext4 this will be something along the lines of:

`
mkfs.ext4 /dev/mapper/lukfs
`

* Now simply mount the partition. You will need to have a path already created to mount it to. Simply use mkdir to create a path if you don't have one defined already. I will create location /mount/lukfs and mount the lukfs partition there. commands:

`
mkdir /mount/crypto
`

`
mount /dev/mapper/lukfs /mnt/lukfs/
`

* You can now move into the /mnt/lufks folder and use it! You can run lsblk again to make sure everything looks correct.

* If you need to dismount this partition simply run

`
umount /mnt/lukfs/
`

* If you'd like to close the encryption session as well once dismounted run

`
cryptsetup luksClose /dev/mapper/lukfs
`

* To reattach to the encrypted filesystem once it has been created simply run the luksOpen and mount commands again.

`
cryptsetup luksOpen /dev/sda lukfs
`

`
mount /dev/mapper/lukfs /mnt/lukfs/
`

