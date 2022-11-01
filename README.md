### Домашнее задание №10 (Управление процессами), за основу выбран п.5 ДЗ
####  1. Написаны 2 одинаковых простых скрипта nice_1.sh и nice_2.sh с циклом for, итерирующим от 0 до 2000000 и записывающим значение итератора во временный файл в папке /tmp.
После прохождения цикла временный файл удаляется. Листинг скрипта:
```console
#!/bin/bash

for ((i = 1;i<2000000;i++))
do
        echo $i >> /tmp/tempfile_1
done

rm /tmp/tempfile_1
```
#### 2. Написан скрипт fire.sh, запускающий одновременно 2 скрипта в фоновом режиме и считающих время выполнения.
Первый скрипт выполняется с параметром nice -20, второй скрипт выполняется без параметра nice. Замер времени производится при помощи утилиты time. Листинг скрипта:
```console
#!/bin/bash

time nice -20 ./nice_1.sh &
time ./nice_2.sh &
```
#### 3. Реузльтатом выполнения скрипта fire.sh является время выполнения скриптов nice_1.sh и nice_2.sh:
```console
[kita@devops OTUS]$
real    0m15.131s
user    0m10.413s
sys     0m4.677s

real    0m15.415s
user    0m10.664s
sys     0m4.710s
```
#### При использовании параметра nice -20 скрипт nice_1.sh выполняется быстрее.
