FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

COPY modele_xml /app/modele_xml

RUN mkdir -p uploads modele_xml

EXPOSE 5000

CMD ["python", "app.py"]
