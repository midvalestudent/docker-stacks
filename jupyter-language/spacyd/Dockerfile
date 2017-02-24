FROM python:3.5

ENV PYTHONUNBUFFERED 1

# Get the spacy libs -- this takes a long time
RUN pip install --no-cache-dir spacy==0.101.0
RUN python -m spacy.en.download || echo "Spacy: English data already installed"

# now do everything else
RUN apt-get update \
    && apt-get install -y \
        redis-server \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /var/src/app
WORKDIR /var/src/app

ADD requirements.txt /var/src/app/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# get the packages
RUN pip install --no-cache-dir git+http://bitbucket.york.lan/scm/av/spacyd.git@master

ADD entrypoint.sh .
ENTRYPOINT ["bash", "entrypoint.sh"]
