ant dist
mkdir openelis/dist/openelis
cd openelis/dist
unzip -q openelis.war -d "./openelis/."

cd ..
cd ..
cd ..
vagrant ssh
sudo rm -rf /opt/bahmni-lab/bahmni-lab/*
sudo cp -r /bahmni/OpenElis/openelis/dist/openelis/* /opt/bahmni-lab/bahmni-lab/.
sudo chown -R bahmni:bahmni /opt/bahmni-lab/bahmni-lab/*
sudo service bahmni-lab start
