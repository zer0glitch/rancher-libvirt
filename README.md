# rancher-libvirt

dnf install -y libvirt
do dnf -y install bridge-utils libvirt virt-install qemu-kvm
do dnf install libvirt-devel virt-top libguestfs-tools guestfs-tools
dnf update -y --allowerasing
dnf search pip
dnf install kubernetes-client -y
dnf search nfs
dnf install git 
