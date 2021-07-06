FROM archlinux/archlinux:base-devel
RUN pacman -Syu --needed --noconfirm git
# makepkg user and workdir
ARG user=makepkg
RUN useradd -m $user \
  && echo "$user ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers.d/$user
USER $user
WORKDIR /home/$user

# Install yay
RUN git clone https://aur.archlinux.org/yay.git \
  && cd yay \
  && makepkg -sri --needed --noconfirm \
  && cd \
  # Clean up
  && rm -rf .cache yay

RUN yay -S --noconfirm neovim-nightly-bin fish
RUN sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

COPY init.vim init.vim
RUN alias nvim="nvim -u init.vim"

