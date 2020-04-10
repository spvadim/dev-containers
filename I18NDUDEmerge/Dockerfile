FROM markvl/debian-jessie
MAINTAINER Vadim Spirichev <z1326593@rambler.ru>
#
# After start the container, you need:
# - set root password (passwd)
# - add new user (adduser)
# - console & console-cyrillic for russian
# - start sshd
# - generate Plone (./install zeo)
#
RUN apt-get -yqq update
RUN apt-get -yqq install apt-utils
RUN apt-get -yqq install net-tools
RUN apt-get -yqq install joe
RUN apt-get -yqq install openssh-server
RUN apt-get -yqq install sudo
RUN apt-get -yqq install links2
RUN apt-get -yqq install python-setuptools
RUN apt-get -yqq install gcc
RUN apt-get -yqq install python-dev

#
# Packeges for Plone install
#
#RUN apt-get -yqq install python-dev
#RUN apt-get -yqq install libssl-dev
#BRUN apt-get -yqq install libjpeg-dev
#RUN apt-get -yqq install libxml2-dev
#RUN apt-get -yqq install libxslt1-dev
#RUN apt-get -yqq install zlib1g-dev


#RUN apt-get --yes --force-yes install console-cyrillic
#RUN apt-get --yes --force-yes install gettext
#RUN apt-get --yes --force-yes install unzip
#
# Plone config & data
#
#ADD Data_fs.tgz /usr/local/Plone/zeocluster/var/filestorage/
#ADD buildout.cfg /usr/local/Plone/zeocluster/buildout.cfg
#ADD plone /etc/init.d/plone
#ADD Plone-4.3.7-UnifiedInstaller.tgz /opt
# Products
#ADD HarrisScore.tgz /usr/local/Plone/zeocluster/products/
# Plone build (out) & restart
#RUN chown plone_daemon.plone_group /usr/local/Plone/zeocluster/var/filestorage/*
#RUN cd /usr/local/Plone/zeocluster && sudo -u plone_buildout bin/buildout

#zope.component-3.12.1.zip           zope.testing-3.10.3.tar.gz


RUN mkdir /root/ArchGenXML
ADD zope.exceptions-3.5.1.tar.gz /root/ArchGenXML
ADD zope.interface-3.8.0.tar.gz /root/ArchGenXML
ADD zope.testing-3.10.3.tar.gz /root/ArchGenXML
ADD zope.tal-3.5.2.zip /root/ArchGenXML
ADD zope.i18nmessageid-3.5.3.tar.gz /root/ArchGenXML
ADD elementtree-1.2.6-20050316.tar.gz /root/ArchGenXML
ADD i18ndude-3.0b2.tar.gz /root/ArchGenXML
ADD ordereddict-1.1.tar.gz /root/ArchGenXML
ADD xmiparser-1.5.zip /root/ArchGenXML
ADD zope.event-3.5.2.tar.gz /root/ArchGenXML
ADD zope.component-3.12.1.zip /root/ArchGenXML
ADD zope.structuredtext-3.5.1.tar.gz /root/ArchGenXML
ADD zope.documenttemplate-3.4.2.tar.gz /root/ArchGenXML
ADD stripogram-1.5.tar.gz /root/ArchGenXML
ADD xmiparser\<1.9999.tar.gz /root/ArchGenXML
ADD archgenxml-2.4.1.tar.gz /root/ArchGenXML

#    zope.testing-3.10.3.tar.gz /root/ArcGenXML
    
RUN \
    mkdir /root/Models \
    cd /root/ArchGenXML/zope.interface-3.8.0 ; python setup.py install; \
    cd /root/ArchGenXML/zope.exceptions-3.5.1; python setup.py install; \
    cd /root/ArchGenXML/zope.testing-3.10.3; python setup.py install; \
    cd /root/ArchGenXML/zope.tal-3.5.2; python setup.py install; \
    cd /root/ArchGenXML/zope.testing-3.10.3; python setup.py install; \

    cd /root/ArchGenXML/zope.i18nmessageid-3.5.3; python setup.py install; \
    cd /root/ArchGenXML/elementtree-1.2.6-20050316; python setup.py install; \
    cd /root/ArchGenXML/i18ndude-3.0b2; python setup.py install;  
RUN \
    cd /root/ArchGenXML/ordereddict-1.1; python setup.py install; \
    cd /root/ArchGenXML/xmiparser-1.5; python setup.py install; \
    cd /root/ArchGenXML/zope.event-3.5.2; python setup.py install; \
    cd /root/ArchGenXML/zope.component-3.12.1; python setup.py install; \
    cd /root/ArchGenXML/zope.structuredtext-3.5.1; python setup.py install; \
    cd /root/ArchGenXML/zope.documenttemplate-3.4.2; python setup.py install; \
    cd /root/ArchGenXML/stripogram-1.5; python setup.py install; \
    cd /root/ArchGenXML/xmiparser\<1.9999; python setup.py install; \
    cd /root/ArchGenXML/archgenxml-2.4.1; python setup.py install 
     

#EXPOSE 8080

ENV model test
#ENTRYPOINT /etc/init.d/ssh start && /bin/bash
ENTRYPOINT cd /root/Models && i18ndude merge --pot ${model}/i18n/generated.pot --merge ${model}/i18n/manual.pot


