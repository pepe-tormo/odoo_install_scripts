# Install Scripts For ODOO in Standalone server


This is a Beta version. Comments to jtormo@sardes.net

The odoo_install_ubuntu22_x64.sh install Odoo 15, 16 or 17 in ubuntu server 22.4 Jammy "new installation" with or without Python virtual enviorment.
Is tested in ubuntu-22.04.3-live-server-amd64 download from https://releases.ubuntu.com/22.04.3/ubuntu-22.04.3-live-server-amd64.iso

Steps:

1- Download Ubuntu 22.4
   ``https://releases.ubuntu.com/22.04.3/ubuntu-22.04.3-live-server-amd64.iso``
   
2- Install Ubuntu in physical or virtual server (Tested in Vmware, Proxmox, Hyper-v and VirtualBox. Recomend network in bridge mode).
   If need help for instalation you can preview the screenshoots steps for my base installation in document install_ubuntu22x64.pdf.
   This server need internet connection for install odoo and recommned install ssh server
   
3- Download and copy the odoo_install_ubuntu22_x64.sh in odoo user in new installation server

4- change permision ``chmod a+x ./odoo_install_ubuntu22_x64``

5- execute script with ``sudo ./odoo_install_ubuntu22_x64``



Script NOTES: 

- Script create a linux user said odoo15, odoo16 or odoo17 depending on the database you install without password
- Script create postgres sql user said odoo15, odoo16 or odoo17 depending on the database you install with password "odoo" for external connections. if you like change (recommended), user alter user method. Documentation in https://www.postgresql.org/docs/14/sql-alteruser.html. For example execute psql with postgres user  with the commmand ``ALTER user odoo WITH PASSWORD 'YourPassword'``
-  Script install base modules what i think, libs needed for python modules, postgresql, requirements for odoo depending of version selected, and systemd init script for odoo
-  At the moment this script NOT INSTALL proxy and certificates


If you are interested, you can visit my docker repository: https://hub.docker.com/u/sardes, where you can try my odoo's containers.


  



