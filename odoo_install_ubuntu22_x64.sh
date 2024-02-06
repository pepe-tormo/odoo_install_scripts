#!/bin/bash

###
### Install script for Odoo 15 16 17 on Ubuntu 22.0.4 tested
###
### by artamis on sardes.net
###




install_menu() {

	if [ "$COMPATIBLE" == "YES" ]; then

	
		PACKAGESU22="iputils-ping host cron gosu sudo telnet net-tools joe make bison flex joe mc ca-certificates socat openssh-server supervisor rpl pwgen python3-polib python3-num2words rsync zip unzip rar unrar git python3-unidecode python3-pycurl python3-paramiko libfontenc1 xfonts-75dpi xfonts-base xfonts-encodings xfonts-utils python3-pip curl bcc bin86 elks-libc libcurl4-openssl-dev docutils-common fontconfig fontconfig-config fonts-dejavu-core fonts-liberation fonts-urw-base35 graphviz javascript-common libann0 libcairo2 libcdt5 libcgraph6 libdatrie1 libfontconfig1 libfreetype6 libfribidi0 libgd3 libgraphite2-3 \
			libgts-0.7-5 libgts-bin libgvc6 libgvpr2 libharfbuzz0b libice6 libimagequant0 libjbig0 libjpeg-turbo8 libjpeg8 libjs-jquery liblab-gamut1 liblcms2-2 libltdl7 libpango-1.0-0 libpangocairo-1.0-0 libpangoft2-1.0-0 libpaper-utils \
			libpaper1 libpathplan4 libpixman-1-0 libpng16-16 libsass1 libsm6 libthai-data libthai0 libtiff5 libusb-1.0-0 libwebpdemux2 libwebpmux3 libxaw7 libxcb-render0 libxcb-shm0 libxmu6 libxpm4 libxrender1 libxt6 \
			python-babel-localedata python3-babel python3-bs4 python3-cffi-backend python3-cryptography python3-dateutil python3-decorator python3-distutils python3-docutils python3-feedparser python3-gevent python3-greenlet python3-html2text \
			python3-html5lib python3-jinja2 python3-lib2to3 python3-libsass python3-lxml python3-mako python3-markupsafe python3-mock python3-ofxparse python3-olefile python3-openssl python3-passlib python3-pbr python3-pil python3-psutil \
			python3-psycopg2 python3-pydot python3-pygments python3-pyinotify python3-pyparsing python3-pypdf2 python3-renderpm python3-reportlab python3-reportlab-accel python3-roman python3-serial python3-setuptools python3-soupsieve python3-willow python3-greenlet\
			python3-stdnum python3-suds python3-tz python3-usb python3-webencodings python3-werkzeug python3-xlrd python3-xlsxwriter sgml-base x11-common xml-core postgresql libc6 libc6-dev python3-dev libffi-dev build-essential libpq-dev libsasl2-dev libldap2-dev libssl-dev python3.10-venv"
		echo "Llamo a instalar"
		if [ "$SYS" == "U22" ]; then
			PACKINSTALL="apt-get -y --allow-downgrades install $PACKAGESU22"
		fi
		echo "$PACKINSTALL"
		$PACKINSTALL
		cmd=(dialog --keep-tite --menu "Select version and mantainer.\n\nSometimes OCB with community association is better than Oficial. For example in spain, some account AEAT app not work well in Oficial Version.\nToo, you can chose any version of odoo with Virtual Enviorment in python :-)\n\nChoose:" 30 76 16)
		options=(1 "Odoo 17 OCB :: Oca Comunity Asociation"
				2 "Odoo 16 OCB :: Oca Comunity Asociation"
				3 "Odoo 15 OCB :: Oca Comunity Asociation"
				4 "Odoo 17     :: Oficial Distribution"
				5 "Odoo 16     :: Oficial Distribution"
				6 "Odoo 15     :: Oficial Distribution"
				7 "Odoo 17 OCB :: Oca Comunity Asociation with Venv Python"
				8 "Odoo 16 OCB :: Oca Comunity Asociation with Venv Python"
				9 "Odoo 15 OCB :: Oca Comunity Asociation with Venv Python"
				10 "Odoo 17     :: Oficial Distribution    with Venv Python"
				11 "Odoo 16     :: Oficial Distribution    with Venv Python"
				12 "Odoo 15     :: Oficial Distribution    with Venv Python"
				
				
				)

		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

		for choice in $choices
		do
			case $choice in
				1)
					echo "Odoo 17 OCB :: Oca Comunity Asociation"
					VERODOO="17"
					PREFIX="odoo${VERODOO}"
					GITODOO="https://github.com/OCA/OCB.git"
					VENV="NO"
					pip3_utils
					postgres_tasks
					wkhtmltox
					odooinstall
					bootandbootscripts
					endinstall
					;;
				2)
					echo "Odoo 16 OCB :: Oca Comunity Asociation"
					VERODOO="16"
					PREFIX="odoo${VERODOO}"
					GITODOO="https://github.com/OCA/OCB.git"
					VENV="NO"
					postgres_tasks
					wkhtmltox
					odooinstall
					bootandbootscripts
					endinstall
					;;	
				3)
					echo "Odoo 15 OCB :: Oca Comunity Asociation"
					VERODOO="15"
					PREFIX="odoo${VERODOO}"
					GITODOO="https://github.com/OCA/OCB.git"
					VENV="NO"
					pip3_utils
					postgres_tasks
					wkhtmltox
					odooinstall
					bootandbootscripts
					endinstall
					;;
				4)
					echo "Odoo 17 :: Oficial Distro"
					VERODOO="17"
					PREFIX="odoo${VERODOO}"
					GITODOO="https://github.com/odoo/odoo.git"
					VENV="NO"
					pip3_utils
					postgres_tasks
					wkhtmltox
					odooinstall
					bootandbootscripts
					endinstall
					;;
				5)
					echo "Odoo 16 :: Oficial Distro"
					VERODOO="16"
					PREFIX="odoo${VERODOO}"
					GITODOO="https://github.com/odoo/odoo.git"
					VENV="NO"
					pip3_utils
					postgres_tasks
					wkhtmltox
					odooinstall
					bootandbootscripts
					endinstall
					;;
				6)
					echo "Odoo 15 :: Oficial Distro"
					VERODOO="15"
					PREFIX="odoo${VERODOO}"
					GITODOO="https://github.com/odoo/odoo.git"
					VENV="NO"
					pip3_utils
					postgres_tasks
					wkhtmltox
					odooinstall
					bootandbootscripts
					endinstall
					;;


				7)
					echo "Odoo 17 OCB :: Oca Comunity Asociation with Venv Python"
					VERODOO="17"
					PREFIX="odoo${VERODOO}"
					GITODOO="https://github.com/OCA/OCB.git"
					VENV="YES"
					pre_venv
					create_venv
					postgres_tasks
					wkhtmltox
					odooinstall_ve
					bootandbootscripts
					endinstall
					;;


				8)
					echo "Odoo 16 OCB :: Oca Comunity Asociation with Venv Python"
					VERODOO="16"
					PREFIX="odoo${VERODOO}"
					GITODOO="https://github.com/OCA/OCB.git"
					VENV="YES"
					pre_venv
					create_venv
					postgres_tasks
					wkhtmltox
					odooinstall_ve
					bootandbootscripts
					endinstall
					;;


				9)
					echo "Odoo 15 OCB :: Oca Comunity Asociation with Venv Python"
					VERODOO="15"
					PREFIX="odoo${VERODOO}"
					GITODOO="https://github.com/OCA/OCB.git"
					VENV="YES"
					pre_venv
					create_venv
					postgres_tasks
					wkhtmltox
					odooinstall_ve
					bootandbootscripts
					endinstall
					;;


				7)
					echo "Odoo 17 :: Oficial Distro"
					VERODOO="17"
					PREFIX="odoo${VERODOO}"
					GITODOO="https://github.com/odoo/odoo.git"
					VENV="YES"
					pre_venv
					create_venv
					postgres_tasks
					wkhtmltox
					odooinstall_ve
					bootandbootscripts
					endinstall
					;;


				8)
					echo "Odoo 16 :: Oficial Distro"
					VERODOO="16"
					PREFIX="odoo${VERODOO}"
					GITODOO="https://github.com/odoo/odoo.git"
					VENV="YES"
					pre_venv
					create_venv
					postgres_tasks
					wkhtmltox
					odooinstall_ve
					bootandbootscripts
					endinstall
					;;


				9)
					echo "Odoo 15 :: Oficial Distro"
					VERODOO="15"
					PREFIX="odoo${VERODOO}"
					GITODOO="https://github.com/odoo/odoo.git"
					VENV="YES"
					pre_venv
					create_venv
					postgres_tasks
					wkhtmltox
					odooinstall_ve
					bootandbootscripts
					endinstall
					;;



			esac
		done

	fi

}



endinstall() {

	INFO="Enjoy"
	dialog --msgbox  "                        SARDES Odoo Stand Alone Installation Script\n\n\n\n                                 Installation END for $PREFIX\n\n\n\n$INFO\n\n$AUTHORINFO" 15 95
	exit 0
}


pre_venv(){

	useradd --home-dir /opt/$PREFIX --create-home --shell /bin/bash $PREFIX
	cd /opt/$PREFIX

}

create_venv() {

	sudo -u $PREFIX bash -c "python3 -m venv venv"
	if (cat /opt/$PREFIX/.bashrc | grep "cd /opt/$PREFIX"); then 
		echo "Change dir exist"
	else
		echo "cd /opt/$PREFIX"  >> /opt/$PREFIX/.bashrc
	fi
	
	if (cat /opt/$PREFIX/.bashrc | grep "PS1=" | grep "$PREFIX"); then 
		echo "Change prompt exist"
	else
		echo "PS1='${whoami}@\$(hostname) \$(pwd) > '"  >> /opt/$PREFIX/.bashrc
	fi
	
	if (cat /opt/$PREFIX/.bashrc | grep "/venv/bin/activate"); then 
		echo "Change to venv exist"
	else
		echo "source ~/venv/bin/activate" >> /opt/$PREFIX/.bashrc
	fi


}

odooinstall_ve() {

	cd /opt/$PREFIX
	mkdir -p /opt/$PREFIX/odoo
	git clone --progress --verbose --branch ${VERODOO}.0 $GITODOO /opt/$PREFIX/odoo/.
	mkdir /opt/$PREFIX/odoo/localaddons
	chown $PREFIX:$PREFIX /opt/$PREFIX/ -R
	echo ""
	sudo su $PREFIX -c "cd /opt/$PREFIX && source /opt/$PREFIX/venv/bin/activate && pip3 install -r /opt/$PREFIX/odoo/requirements.txt"
	
}


odooinstall() {

	useradd --home-dir /opt/$PREFIX --create-home --shell /bin/bash $PREFIX
	cd /opt/$PREFIX
	mkdir -p /opt/$PREFIX/odoo
	git clone --progress --verbose --branch ${VERODOO}.0 $GITODOO /opt/$PREFIX/odoo/.
	mkdir /opt/$PREFIX/odoo/localaddons
	chown $PREFIX:$PREFIX /opt/$PREFIX/ -R
	pip3 install -r /opt/$PREFIX/odoo/requirements.txt
}



bootandbootscripts() {

	echo """[options]
addons_path = /opt/$PREFIX/odoo/odoo/addons,/opt/$PREFIX/odoo/addons,/opt/$PREFIX/odoo/localaddons
admin_passwd = SardesDoo
auto_reload = False
limit_memory_hard = 8684354560
limit_memory_soft = 8147483648
limit_request = 8192
limit_time_cpu = 12000
limit_time_real = 120000
limit_time_real_cron = -1
debug_mode = True
demo = {}
email_from = False
geoip_database = /usr/share/GeoIP/GeoLiteCity.dat
list_db = True""" > /opt/$PREFIX/${PREFIX}.conf


	chown $PREFIX:$PREFIX /opt/$PREFIX/${PREFIX}.conf



	if [ "$VENV" == "YES" ]; then
		# INIT with venv
		INITODOO="sudo su $PREFIX -c \"cd /opt/$PREFIX && source /opt/$PREFIX/venv/bin/activate && /opt/$PREFIX/odoo/odoo-bin --config /opt/$PREFIX/$PREFIX.conf > /dev/null 2>&1 &\""
	else
		# INIT normal
		INITODOO="sudo -u $PREFIX /opt/$PREFIX/odoo/odoo-bin --config /opt/$PREFIX/$PREFIX.conf > /dev/null 2>&1 &"
	fi

	echo """#!/bin/sh
### BEGIN INIT INFO
# Provides:          $PREFIX
# Required-Start:    $network $local_fs $remote_fs
# Required-Stop:     $network $local_fs $remote_fs
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Arranca Odoo14
# Description:       Arranca Odoo14
### END INIT INFO
export PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:/opt/$PREFIX/odoo
. /lib/lsb/init-functions
case \$1 in
        start)
         $INITODOO
         ;;
        stop)
         PROCS=\"\$(ps aux | grep $PREFIX | grep odoo-bin | grep -v grep | awk {'print \$2'})\"
         echo 'Stopings Odoo process: \$PROCS'
         for i in \$PROCS; do
            kill -9 \$i
         done
        ;;
  restart)
        /etc/init.d/$PREFIX stop
        sleep 5
        /etc/init.d/$PREFIX stop
        sleep 5
        /etc/init.d/$PREFIX start
        ;;
  status)
        ps aux | grep odoo-bin | grep $PREFIX | grep -v grep
        ;;
  *)
        echo 'Usage: /etc/init.d/$PREFIX {start|stop|restart|status}'
        exit 1
        ;;
esac
exit 0""" > /etc/init.d/$PREFIX

	chmod a+x /etc/init.d/$PREFIX
	update-rc.d $PREFIX defaults
	systemctl daemon-reload
	
}


wkhtmltox() {

	wget https://mirror.sit.fraunhofer.de/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1l-1ubuntu1.2_amd64.deb && dpkg -i libssl1.1_1.1.1l-1ubuntu1.2_amd64.deb
	wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.focal_amd64.deb && dpkg -i wkhtmltox_0.12.5-1.focal_amd64.deb 
}


pip3_utils() {

	pip3 install pip-search
	pip3 install telebot telegram config pytelegrambotapi

}



postgres_tasks() {
	
	if (cat /etc/postgresql/14/main/postgresql.conf | grep "listen_addresses" | grep "*"); then
		echo "Postgres allow all interfaces exist"
	else
		echo "listen_addresses = '*'" >> /etc/postgresql/14/main/postgresql.conf 
	fi

	if (cat /etc/postgresql/14/main/pg_hba.conf | grep "host all all all md5"); then
		echo "Postgres Allow all host MD5 exist"
	else
		echo "host all all all md5" >> /etc/postgresql/14/main/pg_hba.conf
	fi

	/etc/init.d/postgresql restart
	sudo -u postgres bash -c "psql -c \"CREATE USER $PREFIX;\"" >> /dev/null 2>&1
	sudo -u postgres bash -c "psql -c \"CREATE DATABASE $PREFIX;\"" >> /dev/null 2>&1
	sudo -u postgres bash -c "psql -c \"GRANT ALL PRIVILEGES ON DATABASE $PREFIX TO $PREFIX;\"" >> /dev/null 2>&1
	sudo -u postgres bash -c "psql -c \"ALTER USER $PREFIX with SUPERUSER;\"" >> /dev/null 2>&1
	sudo -u postgres bash -c "psql -c \"ALTER USER $PREFIX with PASSWORD '$PREFIX';\"" >> /dev/null 2>&1
}






main() {

    AUTHORINFO="Jose Tormo :: jtormo@sardes.net"
	INFO="This script install ODOO 15, 16 or 17 without venv python. Is for Stand Alone SYSTEM"
	
	###
	### PRE :: Access Rights
	###

	if [ "$EUID" -ne 0 ]; then 
		echo "This script only run as ROOT Rights"
		echo "Please run as root or sudo"
		exit
	fi

	###
	### PRE :: Check Distro, arch and version
	###

	OS=$(awk '/DISTRIB_ID=/' /etc/*-release | sed 's/DISTRIB_ID=//' | tr '[:upper:]' '[:lower:]')
	ARCH=$(uname -m | sed 's/x86_//;s/i[3-6]86/32/')
	VERSION=$(awk '/DISTRIB_RELEASE=/' /etc/*-release | sed 's/DISTRIB_RELEASE=//' | sed 's/[.]0/./')

	if [ -z "$OS" ]; then
		OS=$(awk '{print $1}' /etc/*-release | tr '[:upper:]' '[:lower:]')
	fi

	if [ -z "$VERSION" ]; then
		VERSION=$(awk '{print $3}' /etc/*-release)
	fi

	###
	### PRE :: Check basic command to run script
	###

	COMMAND="dialog"
	if ! command -v $COMMAND &> /dev/null
	then
		echo "$COMMAND could not be found, installing"
		apt-get update
		apt install -y dialog libncurses5-dev
	fi

	##
	## PRE :: Compatible with
	##
	COMPATIBLE="NO"
	ERRCOMPAT="Sorry. This script only works with: Ubuntu 22.4\nClick OK to exit program"
	if [ "$OS" == "ubuntu" ] && [ "$VERSION" == "22.4" ]; then
		COMPATIBLE="YES"
		ERRCOMPAT="Click OK to run installation script"
		SYS="U22"
	fi

	## System Info
	dialog --msgbox  "                        SARDES Odoo Stand Alone Installation Script\nArch: $ARCH\nDistro: $OS $VERSION\n\nCheck Compatible: $COMPATIBLE\n\n$ERRCOMPAT\n\n$INFO\n\n$AUTHORINFO" 15 95
	install_menu
	echo "Bye bye.... and thx for use me...."
	exit 0
}
cd /tmp
main "$@"; exit
