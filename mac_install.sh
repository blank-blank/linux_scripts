#install ansible 
#sudo pip install --upgrade-dependencies ansible
#install node

node_tar_url="https://nodejs.org/dist/v4.4.5/node-v4.4.5-darwin-x64.tar.gz"
node_tar_file="node-4.4.5.tar.gz"
install_dir="node_install"

if [ ! -d $install_dir ]
then
    mkdir $install_dir
    cd $install_dir

    curl -o $node_tar_file $node_tar_url
    tar -zxvf $node_tar_file
fi


cd $install_dir

node_dir="$(find `pwd` -name "node-v*"  -type d -print)"
node_exe="${node_dir}/bin/node"

ln -s ${node_exe} /usr/local/bin/node




