cat ./server_list.txt | while read line
do
    host=$(echo $line | cut -d " " -f 1)
    user=$(echo $line | cut -d " " -f 2)
    password=$(echo $line | cut -d " " -f 3)
    command_dir="./commands/"
    file_type=".sh"
    command_file=${command_dir}${host}${file_type}
    cat $command_file | while read command
    do
        (./run.sh $host $user $password "$command")&
    done
done
