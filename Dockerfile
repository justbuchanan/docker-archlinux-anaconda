FROM base/archlinux
MAINTAINER Justin Buchanan <justbuchanan@gmail.com>

# update/init keyring
RUN pacman-key --init
RUN pacman-key --populate archlinux

# update keyring
RUN pacman --noconfirm -Sy archlinux-keyring

# update packages
RUN pacman -Syu --noconfirm

# upgrade db
RUN pacman-db-upgrade

