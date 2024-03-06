#!/bin/bash

path=$1

function create_folder {
	echo "Creating a backup file in $path..."
	date=$(date +%Y-%m-%d-%H-%M)
	folder_name="backup_$date"
	path_to_backup="$path/$folder_name"
	mkdir "$path_to_backup"
}

function delete_folder {
	current_location=$PWD
	cd $path
	count=$(ls -d *backup* | wc -l) #-d lists directories themselves; wc counts -l specifies to count files
	maximum_backups=3
	echo "count: $count"
	echo "backups: $maximum_backups"
	local backups=($(ls -t "${source_dir}/backup_"* 2>/dev/null))
	if [[ "$count" -gt "$maximum_backups" ]];then
		echo "There are more than 3 backup files. Deleting..."
		files_to_delete="${backups[@]:3}"
  		rm -rf  "${backups_to_remove[@]}"
	fi
}

create_folder
delete_folder
