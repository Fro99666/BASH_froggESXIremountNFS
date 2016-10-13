#!/bin/sh
#            _ __ _
#        ((-)).--.((-))
#        /     ''     \
#       (   \______/   )
#        \    (  )    /
#        / /~~~~~~~~\ \
#   /~~\/ /          \ \/~~\
#  (   ( (            ) )   )
#   \ \ \ \          / / / /
#   _\ \/  \.______./  \/ /_
#   ___/ /\__________/\ \___
#  *****************************

#NFS server IP
IP="xxx.xxx.xxx.xxx"
#NFS server path
NFSPATH="/"
#Esxi volumes folder
LOCALPATH="/vmfs/volumes/"
#Esxi mounted folder name 
LOCALSHARE="backup"
TIM=`date '+%Y/%m/%d %H:%M:%S'

#Remount Share if not accessible
if ! cd "${LOCALPATH}${LOCALSHARE}" &> /dev/null; then
#Remove not working NFS
/usr/bin/esxcli storage nfs remove -v ${SHARE}
#Re-Add working NFS
/usr/bin/esxcli storage nfs add -H ${NFSIP} -s ${NFSPATH} -v ${LOCALSHARE}
#Echo result
echo "${TIM} - Mounting NFS Share '${LOCALPATH}${LOCALSHARE}'"
fi
