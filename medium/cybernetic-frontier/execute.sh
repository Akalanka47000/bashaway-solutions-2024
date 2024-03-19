# Start Install Google Chrome (You may comment out these lines during local testing if you already have Chrome installed)

sudo apt update

wget http://dl.google.com/linux/chrome/deb/pool/main/g/google-chrome-stable/google-chrome-stable_122.0.6261.128-1_amd64.deb
sudo dpkg -i google-chrome-stable_122.0.6261.128-1_amd64.deb

sudo apt-get install -y -f

rm google-chrome-stable_122.0.6261.128-1_amd64.deb

# End Install Google Chrome

# Write your code here

docker build -t cybersource .

docker run -d -p 5000:8080 cybersource