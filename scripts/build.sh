#!/bin/bash

echo "*** Creating mkdocs dir ***"

echo "- Initializing docs directory"
mkdir -p docs/Topics/
cp Notes/LFCS.md docs/index.md

echo "- Initializing media directory"
mkdir -p docs/images/
cp images/logo.svg docs/images/logo.svg


echo "- Topic: Essential Commands"
mkdir -p docs/Topics/Essential_Commands
cp Notes/Topics/Essential*Commands.md docs/Topics/Essential_Commands/index.md
cp Notes/Topics/Essential*Commands/*.md docs/Topics/Essential_Commands/

echo "- Topic: Operation of Running Systems"
mkdir -p docs/Topics/Operation_of_Running_Systems
cp Notes/Topics/Operation*of*Running*Systems.md docs/Topics/Operation_of_Running_Systems/index.md
cp Notes/Topics/Operation*of*Running*Systems/*.md docs/Topics/Operation_of_Running_Systems/

echo "- Topic: User and Group Management"
mkdir -p docs/Topics/User_and_Group_Management
cp Notes/Topics/User*and*Group*Management.md docs/Topics/User_and_Group_Management/index.md
cp Notes/Topics/User*and*Group*Management/*.md docs/Topics/User_and_Group_Management/

echo "- Topic: Networking"
mkdir -p docs/Topics/Networking
cp Notes/Topics/Networking.md docs/Topics/Networking/index.md
cp Notes/Topics/Networking/*.md docs/Topics/Networking/

echo "- Topic: Service Configuration"
mkdir -p docs/Topics/Service_Configuration
cp Notes/Topics/Service*Configuration.md docs/Topics/Service_Configuration/index.md
cp Notes/Topics/Service*Configuration/*.md docs/Topics/Service_Configuration/

echo "- Topic: Storage Management"
mkdir -p docs/Topics/Storage_Management
cp Notes/Topics/Storage*Management.md docs/Topics/Storage_Management/index.md
cp Notes/Topics/Storage*Management/*.md docs/Topics/Storage_Management/

echo "- Format markdown"
find docs/ -type f -exec sed -i 's/\[\[//g' {} \;
find docs/ -type f -exec sed -i 's/\]\]//g' {} \;
find docs/ -type f -exec sed -i 's/\[o\]/\[x\]/g' {} \;

tree docs/
