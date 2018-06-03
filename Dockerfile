FROM fedora:28
# https://github.com/pygobject/pygobject-travis-ci-docker-examples/blob/master/.travis.yml

ENV LANG C.utf8

RUN dnf -y install \
    dbus{,-x11} \
    gtk3 \
    python3-pyflakes \
    pygobject3 \
    python3-pytest \
    python3-gobject \
    python3-pep8 \
    which \
    xorg-x11-server-Xvfb

RUN dbus-uuidgen --ensure

RUN pip install coveralls
