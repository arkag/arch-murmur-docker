# escape=\
# Arch Linux container running murmur

FROM cwre/archlinux

MAINTAINER Alex Roberts <itskcpz@gmail.com>

RUN pacman -Syu --noconfirm murmur

EXPOSE 64738/tcp 64738/udp

ADD murmur.ini /etc/

CMD murmurd
