FROM jenkins/jenkins:lts

USER root

RUN apt-get update && apt-get install -y \
  curl wget gnupg ca-certificates \
  libgtk2.0-0 libgtk-3-0 libnotify-dev libgconf-2-4 libnss3 \
  libxss1 libasound2 libxtst6 xauth xvfb \
  libgbm1 \  # 🔥 Ajoute cette ligne
  && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
  && apt-get install -y nodejs \
  && npm install -g cypress

USER jenkins