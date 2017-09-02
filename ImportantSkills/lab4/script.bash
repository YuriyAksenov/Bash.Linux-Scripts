fdisk /dev/sda
n - сщздать новый раздел
p - primary
3 - третий свободен
1045 - первый цилиндр
+500M - размер
w -сохранить всё

t - сделать нужную файловую систему
3 - нужный раздел
L - получить список кодов

mkfis.ext3 -b 1024  /dev/sda3 - создать etx3 файловую систему на разделе
dumpe2fs -h /dev/sda3 | less - показать информацию в суперблоке
tune2fs -c 2 -i 2m /dev/sda3 - проверка ФС после 2 монтирований или 2 месяца
cd /mnt; mkdir newdisk;
mount -t ext3 /dev/sda3 /mnt/newdisk - подмонтировать ФС к диску
ln -s /mnt/newdisk ~/newdisk - создать сслыку на подмонт ФС
mkdir ~/newdisk/newdir
umount /dev/sda3 - размонтировать
в файле /etc/fstab /dev/sda3 /mnt/newdisk ext3 noexec,auto,rw,noatime - подмонтировать с автоматическим при загрузке ОС без запуска скриптов и с без записи времени

umount /dev/sda3 - размонтировать
fdisk /dev/sda
d - удалить раздел
3 - 3 раздел
m - создать раздел
p - основной
3 - номер раздела
w - сохранить
umount /dev/sda3
resize2fs /dev/sda3 1G - уведичить размер

df -lh посмотреть размер

e2fsck -r /dev/sda3  - проерить в безопасном режиме

mkdir /mnt/share - создать папку для общую с внешним диском
mount.cifs //rain/astd588 /mnt/share -o user=astd588,password=beig3Oowu9 - подмонтируем
//rain/astd588 /mnt/share cifs user=astd588,password=bieg3Oowu9,iocharset=utf8,ro 0 0 - делаем автоматическую монтировку


