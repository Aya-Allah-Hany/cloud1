FROM python

WORKDIR /app
 
COPY cloud.py /app/
COPY paragraphs.txt /app/

RUN pip install nltk

RUN python -m  nltk.downloader stopwords punkt

CMD ["python", "cloud.py"]