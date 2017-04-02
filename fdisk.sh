#!/bin/sh
hdd="/dev/sdb"
(echo n; echo p; echo 1; echo  ; echo +2048M; echo n; echo p; echo 2; echo  ; echo  ; echo w) | fdisk $hdd;
