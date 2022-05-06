FROM python:3.8-slim-buster
WORKDIR /code/src
COPY requirements.txt . 
RUN pip install -r requirements.txt
# filename:fast-api-variable-name
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]