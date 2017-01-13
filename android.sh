#!/bin/bash
local mac_adress='38:bc:1a:b5:75:e7'

function get_ip_frop_mac() {
	local device_ip=`arp | grep $1 | awk '{print $1}'`
	echo $device_ip
}

function ssh_android() {
	local phone_ip=`get_ip_frop_mac $mac_adress`
	ssh $phone_ip -p 2222
}
function cp_android() {
	local phone_ip=`get_ip_frop_mac $mac_adress`
	#phone_ip='192.168.0.31'
	local dir=$1
	local backup_dir=$phone_ip:/sdcard/DOCS/$2
	rsync -avz -e "ssh -p 2222" --size-only --no-times --no-perms --stats --delete --progress --cvs-exclude $dir $backup_dir
}
