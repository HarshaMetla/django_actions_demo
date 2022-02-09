FROM python:3.8

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .
RUN cd myapp && python3 manage.py test

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0", "./manage.py" ]
