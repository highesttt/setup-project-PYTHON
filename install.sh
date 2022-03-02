#! /bin/bash

echo "Copying setup-project to /usr/local/bin"
sudo cp setup-project /usr/local/bin/.
echo "Modyfying permissions to allow execution"
sudo chmod +x /usr/local/bin/setup-project
if [[ ${PATH} != *"/usr/local/bin"* ]];then
    echo "Adding path /usr/local/bin to environment"
    export PATH ${PATH}:/usr/local/bin
fi
echo "Reloading Shell"
exec $SHELL
echo "Done! Try `setup-project` in a git repository"
