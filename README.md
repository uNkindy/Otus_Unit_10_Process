### Домашнее задание №10 (Управление процессами), за основу выбрано п.5 ДЗ
####  1. Написаны 2 одинаковых простых скрипта с циклом for, итерирующим от 0 до 1000000 и записывающим значение итератора во временный файл в папке /tmp.
После прохождения цикла временный файл удаляется. Листинг скрипта:
```console
#!/bin/bash

for ((i = 1;i<2000000;i++))
do
        echo $i >> /tmp/tempfile_1
done

rm /tmp/tempfile_1
```
