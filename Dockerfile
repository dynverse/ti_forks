FROM dynverse/dynwrap:py3.6

RUN pip install seaborn hdbscan

RUN git clone https://github.com/macsharma/FORKS.git

LABEL version 0.1.2

ADD . /code
ENTRYPOINT python /code/run.py
