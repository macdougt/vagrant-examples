
#!/usr/bin/env bash
#sudo apt-get update

echo "Running setup.bash"

if ! [ -f /usr/local/bin/appendif ]
then
	echo "Need to add utils"
    sudo cp /vagrant/utils/* /usr/local/bin
else
	echo "utils  ...  check"
fi

#sudo apt-get install -y wget

#wget -qO- https://get.docker.com/ | sh
if which docker ; then
  echo "docker  ...  check"
else
  echo "Need docker"
  wget -qO- https://get.docker.com/ | sh
fi

# Set up docker stuff


# Set up bash properly
touch ~/.dirhistory
