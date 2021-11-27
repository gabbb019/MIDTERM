#!/bin/bash

mkdir tempdir
mkdir tempdir/templates
mkdir tempdir/static

cp mt_exam.py tempdir/.
cp -r templates/* tempdir/templates/.
cp -r static/* tempdir/static/.

echo "FROM python" >> tempdir/Dockerfile
echo "RUN pip install flask" >> tempdir/Dockerfile
echo "COPY  ./static /home/myapp/static/" >> tempdir/Dockerfile
echo "COPY  ./templates /home/myapp/templates/" >> tempdir/Dockerfile
echo "COPY  mt_exam.py /home/myapp/" >> tempdir/Dockerfile
echo "EXPOSE 5000" >> tempdir/Dockerfile
echo "CMD python3 /home/myapp/mt_exam.py" >> tempdir/Dockerfile

cd tempdir
docker build -t mt_exam .

docker run -t -d -p 5000:5000 --name mt_examrunning mt_exam
docker ps -a