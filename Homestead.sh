#Fresh install of Laravel and edit .yaml to create the desired path.#
#Currently have to manually insert the hosts file,#
#but it does navigate you to the correct folder.#
#v2 will have the hosts function up and running.#


echo "-------Navigating to  Projects Folder-------"
cd ~/Code

echo "---------Installing Laravel--------"
echo "Please enter project title: "
read ProjectName
echo "You entered: $ProjectName"
laravel new $ProjectName

echo "-------Modifying .yaml-------"
PATH=$PATH:~/.homestead/homestead.yaml
#nano ~/.homestead/homestead.yaml
echo "-map: $ProjectName.app
	 to: /home/vagrant/$ProjectName/public" >> ~/.homestead/homestead.yaml
echo "-------Modifying hosts file-------"
cd ~
#sudo nano /etc/hosts
#sudo echo 192.168.10.10 $ProjectName .app >> ~/etc/hosts
sudo sh -c 'echo "192.168.10.10 $ProjectName" >> /etc/hosts'
sudo nano /etc/hosts
#echo "-------Provisioning Vagrant Box------"-
#cd ~/Homestead
#vagrant reload --provision

echo Laravel install up and running. Code away!


