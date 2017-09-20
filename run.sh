#!/bin/bash

if [[ $4 == *sudo* ]]
then
	fab -H $1 -u $2 -p $3 -- $4 <<EOF
$password
EOF
else
	fab -H $1 -u $2 -p $3 -- $4
fi