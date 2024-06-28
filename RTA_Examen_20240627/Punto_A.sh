1
2
3
5
6
7
8
9
sudo ScriptLVM.sh 
sudo pvs
sudo vgs
sudo lvcreate -L +5M vg_datos -n lv_docker
sudo lvcreate -L +1.5G vg_datos -n lv_workareas
sudo lvcreate -l +100%FREE vg_datos -n lv_workareas
sudo lvcreate -l +100%FREE vg_temp -n lv_swap
sudo pvs
sudo lvs
sudo vgs
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkswap /dev/mapper/vg_temp-lv_swap
sudo swapon /dev/mapper/vg_temp-lv_swap
df -h
free -h
sudo mkdir /work
sudo mount /dev/mapper/vg_datos-lv_workareas
df -h
sudo mount /dev/mapper/vg_datos-lv_workareas /work/
df -h
free -h
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo usermod -aG docker vagrant
id
#sudo mount /dev/mapper
sudo vgs
sudo lvs
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
df -h
ls -l
cat RTA_Examen_20240627/Punto_A.sh 
