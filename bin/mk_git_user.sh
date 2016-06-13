#!/bin/bash
sudo adduser \
		 --system \
		 --shell /usr/bin/git-shell \
		 --gecos 'git version control' \
		 --group \
		 --disabled-password \
		 --home /home/git \
		 git
