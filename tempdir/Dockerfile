FROM python
RUN pip install flask
COPY  ./static /home/myapp/static/
COPY  ./templates /home/myapp/templates/
COPY  mt_exam.py /home/myapp/
EXPOSE 5050
CMD python3 /home/myapp/mt_exam.py
FROM python
RUN pip install flask
COPY  ./static /home/myapp/static/
COPY  ./templates /home/myapp/templates/
COPY  mt_exam.py /home/myapp/
EXPOSE 5000
CMD python3 /home/myapp/mt_exam.py
