# Install Scripts For ODOO in Standalone server


This is a Beta version.

The odoo_install_ubuntu22_x64.sh install Odoo 15, 16 or 17 in ubuntu server 22.4 Jammy "new installation"
Is tested in ubuntu-22.04.3-live-server-amd64 download from https://releases.ubuntu.com/22.04.3/ubuntu-22.04.3-live-server-amd64.iso

Steps:

1- Download Ubuntu 22.4
   https://releases.ubuntu.com/22.04.3/ubuntu-22.04.3-live-server-amd64.iso
2- Install Ubuntu in phisical or virtual server (Tested in Vmware, Proxmox, Hyper-v and VirtualBox. Recomend network in bridge mode)
   If need help for instalation you can preview the screenshoots steps for my base installation in document install_ubuntu22x64.pdf
3- Download and copy the odoo_install_ubuntu22_x64.sh in odoo user in new installation server
4- change permision chmod a+x ./odoo_install_ubuntu22_x64 
5- execute script with sudo ./odoo_install_ubuntu22_x64



