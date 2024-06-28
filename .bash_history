sudo apt install git
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source  ~/.bashrc  && history -a
ls -l
vim ScriptLVM.sh
chmod 711 ScriptLVM.sh
sudo mv ScriptLVM.sh > /usr/local/bin/
sudo mv ScriptLVM.sh /usr/local/bin/
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
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
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
history
history | grep -E '1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29' | grep -v history | awk -F '  ' '{print $3}' >> RTA_Examen_20240627/Punto_A.sh
cat RTA_Examen_20240627/Punto_A.sh 
ls -l
vim Bocca_AltaUser-Groups.sh
cat UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
ls -lls -l\#
ls -ll
chmod 711 Bocca_AltaUser-Groups.sh 
vim Bocca_AltaUser-Groups.sh 
sudo mv Bocca_AltaUser-Groups.sh /usr/local/bin/
#vim Bocca_AltaUser-Groups.sh
sudo Bocca_AltaUser-Groups.sh 2P_202406_Prog1 UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo grep "^2P_202406_Prog1:" /etc/passwd
sudo grep "^2P_202406_Prog1:" /etc/shadow
sudo vim /usr/local/bin/Bocca_AltaUser-Groups.sh 
echo > /usr/local/bin/Bocca_AltaUser-Groups.sh
sudo vim /usr/local/bin/Bocca_AltaUser-Groups.sh
sudo Bocca_AltaUser-Groups.sh UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
echo > /usr/local/bin/Bocca_AltaUser-Groups.sh
sudo vim /usr/local/bin/Bocca_AltaUser-Groups.sh
sudo Bocca_AltaUser-Groups.sh UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo passwd 2P_202406_Prog1
echo > /usr/local/bin/Bocca_AltaUser-Groups.sh
sudo vim /usr/local/bin/Bocca_AltaUser-Groups.sh
ls -l /usr/local/bin/Bocca_AltaUser-Groups.sh
sudo Bocca_AltaUser-Groups.sh UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
history
history | grep -E '56|60|62|78' | grep -v history | awk -F '  ' '{print $3}' >> RTA_Examen_20240627/Punto_B.sh 
cat RTA_Examen_20240627/Punto_B.sh
docker login
id 2P_202406_
id 2P_202406_Prog1
cat UTN-FRA_SO_Examenes/202406/docker/
ls -l UTN-FRA_SO_Examenes/202406/docker/
cd UTN-FRA_SO_Examenes/202406/docker
vim index.html 
vim Dockerfile
ls -l
ls -l /docker
vim Dockerfile 
mkdir web
ls -l
docker build -t web1-bocca:v1
docker build -t crxw/mi-web:v1 .
vim Dockerfile 
ls -l
mv index.html web
docker build -t crxw/mi-web:v1 .
docker images
vim Dockerfile 
ls -l
chmod 777 Dockerfile 
mv web/index.html ./
ls -l
vim Dockerfile 
docker build -t crxw/web-boccadf .
sudo systemctl daemon-reload
sudo systemctl restart docker
docker build -t crxw/web-boccadf .
#df -h
df -h
cd 
sudo fdisk -l
sudo fdisk /dev/sdc
sudo vgs
sudo lvs
sudo fdisk -l
#vgextend 
sudo vgs
sudo lvs
vgextend vg_datos /dev/sdc3
sudo vgextend vg_datos /dev/sdc3
sudo lvextend -l 100%FREE /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos/lv_docker
df -h
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker
free -h
sudo unmount /dev/mapper/vg_datos-lv_docker /var/lib/docker
sudo umount /dev/mapper/vg_datos-lv_docker /var/lib/docker
sudo vgs
sudo pvs
sudo lvs
#sudo umount
df -h
sudo umount /var/lib/docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker
df -h
cd -
ls -l
id
docker build -t web1-boccadf .
docker images
docker run -d -p 81:80 web1-boccadf:latest
curl localhost:81
ls -l
mv index.html web/
curl localhost:81
ls -l
docker build -t parcial2-boccadf .
docker images
docker run -d -p 8080:80 parcial2-boccadf
curl localhost:80
curl localhost:8080
docker push crxw/parcial2-boccadf:latest
docker build -t crxw/parcial2-boccadf .
docker push crxw/parcial2-boccadf:latest
ls -l
vim run.sh
cd 
cd UTN-FRA_SO_Examenes/202406/ansible/
ls -l
cd roles/
ls -l
cat 2do_parcial/
ls -l 2do_parcial/
cat 2do_parcial/tasks/main.yml
ls -l
cd ..
ls -l
cat playbook.yml 
history
#history | grep -E '82|143|144|145|146|148|149|151|152|153|158' | grep -v history | awk -F '  ' '{print $3}' >> RTA_Examen_20240627/Punto_
cd
history | grep -E '82|143|144|145|146|148|149|151|152|153|158' | grep -v history | awk -F '  ' '{print $3}' >> RTA_Examen_20240627/Punto_C.sh
cd -
ls -l
cd roles/
ls -l
cd 2
cd 2do_parcial/
ls -l
ls -l tasks
cat tasks/main.yml 
cd ..
ls -l
cat playbook.yml 
vim roles/2do_parcial/tasks/main.yml
vim playbook.yml
cat playbook.yml 
ls -l
ansible-playbook playbook.yml
apt install ansible
sudo apt install ansible
ansible-playbook playbook.yml
ls -l
mkdir /hosts
sudo mkdir /hosts
ls -l
mkdir hosts
echo "[localhost]
127.0.0.1 ansible_connection=local" > hosts/hosts
vim playbook.yml 
ansible-playbook -i 202406/ansible/hosts 202406/ansible/tareas.yml
cd
git init
git add .
git commit -m "Parcial2-SO"
ssh-keygen -t rsa -b 4096 -C "Briianbocca@gmail.com"
cat ~/.ssh/id_rsa.pub
sudo cat ~/.ssh/id_rsa.pub
ssh-keygen -t rsa -b 4096 -C "Briianbocca@gmail.com"
cat ~/.ssh/id_rsa.pub
git clone git@github.com:BrianBocca/-UTNFRA_SO_2do_Parcial_BoccaDF.git
git config --global user.name "BrianBocca"
git config --global user.email "Briianbocca@gmail.com"
git add .
ls -l
cd -UTNFRA_SO_2do_Parcial_BoccaDF/
ls -l
cd -UTNFRA_SO_2do_Parcial_BoccaDF/
sudo cd -UTNFRA_SO_2do_Parcial_BoccaDF/
ls -l
#git clone 
git clone git@github.com:BrianBocca/-UTNFRA_SO_2do_Parcial_BoccaDF.git
rmdir -UTNFRA_SO_2do_Parcial_BoccaDF
git clone git@github.com:BrianBocca/UTNFRA_SO_2do_Parcial_BoccaDF.git
cd UTNFRA_SO_2do_Parcial_BoccaDF/
ls -la
cd
cp UTN-FRA_SO_Examenes/202406 UTNFRA_SO_2do_Parcial_BoccaDF
cp UTN-FRA_SO_Examenes/202406/ UTNFRA_SO_2do_Parcial_BoccaDF
#cp UTN-FRA_SO_Examenes/202406/ UTNFRA_SO_2do_Parcial_BoccaDF
cp -r UTN-FRA_SO_Examenes/ UTNFRA_SO_2do_Parcial_BoccaDF
cd UTNFRA_SO_2do_Parcial_BoccaDF/
ls -l
UTN-FRA_SO_Examenes/
ls -l
cd UTN-FRA_SO_Examenes/
ls -l
cd ..
cp -r RTA_Examen_20240627/ UTNFRA_SO_2do_Parcial_BoccaDF/
$HOME/.bash_history
history -a
$HOME/.bash_history
