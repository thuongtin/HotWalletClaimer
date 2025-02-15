#!/bin/bash

# Update packages list & Install Python 3
sudo apt update
sudo apt install -y python3 python3-pip || true

# Double check wget is present
sudo apt install -y wget || true

# Install Chrome
wget -O /tmp/chrome.deb https://mirror.cs.uchicago.edu/google-chrome/pool/main/g/google-chrome-stable/google-chrome-stable_114.0.5735.198-1_amd64.deb
sudo apt install -y /tmp/chrome.deb
rm /tmp/chrome.deb

# Install ChromeDriver
sudo apt install -y unzip || true
wget https://chromedriver.storage.googleapis.com/114.0.5735.90/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
rm chromedriver_linux64.zip
sudo mv chromedriver /usr/local/bin/
sudo chmod +x /usr/local/bin/chromedriver

# Let's step into our folder
cd HotWalletBot

# And install the Python Dependencies
pip install selenium Pillow

# And make sure we have screen!
sudo apt install -y screen || true

# Finish by showing the versions
python3 --version
chromedriver --version
