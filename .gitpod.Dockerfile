FROM gitpod/workspace-full

USER gitpod

RUN curl --proto '=https' --tlsv1.2 -sSfL "https://git.io/Jc9bH" | bash -s selfinstall

# Pull container images
RUN for _image in archlinux centos debian fedora opensuse ubuntu "voidlinux/voidlinux"; do docker pull $_image; done