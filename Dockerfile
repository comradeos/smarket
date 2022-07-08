FROM python:3.10.5-slim
# отключить буфер: сообщения в консоли без задержки
ENV PYTHONUNBUFFERED=1
WORKDIR /app
COPY ./requirements ./
RUN pip install --upgrade pip
RUN pip install -r ./requirements
ENTRYPOINT [ "python"]
CMD [ "run.py" ]
