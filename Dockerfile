FROM mongo-express:0.54.0

RUN python3 -m pip install -r requeriments.txt

CMD ["gunicorn", "app:app"]
