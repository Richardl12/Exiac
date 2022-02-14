FROM mongo-express:0.54.0
ENV FLASK_APP=main.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
ADD main.py /
COPY requirements.txt requirements.txt
RUN python3 -m pip install -r requeriments.txt
EXPOSE 5000
CMD ["flask", "run"]
