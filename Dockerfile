FROM python:3.10.5-slim
WORKDIR /app
COPY ./requirements ./
RUN pip install --upgrade pip
RUN pip install -r ./requirements
ENTRYPOINT [ "python" ]
CMD [ "run.py" ]
