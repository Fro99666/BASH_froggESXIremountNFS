# BASH_froggESXIremountNFS
Script to remount NFS share after NFS server being offline has ESXI doesn't mount it back automaticaly


To add cron task on ESXI, it has been to set in /etc/rc.local.d/local.sh" wich is a permanent file

#add to crontab a task
> Edit File "/etc/rc.local.d/local.sh" 

echo "0 * * * * root /vmfs/volumes/datastore1/script/mountNFS.sh >> /vmfs/volumes/datastore1/log/mount.log" >> /var/spool/cron/crontabs/root


more information on ESXI available at https://wiki.frogg.fr/VMWare_Esxi
