#!/bin/bash

cmd=$(echo -e "cancel\n$2\n$3" | rofi -dmenu -p "$1")
case $cmd in
	"cancel")
		;;
	$2)
		$4
		;;
	$3)
		$5
		;;
esac
