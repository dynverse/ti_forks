FROM dynverse/dynwrap:py3.6

LABEL version 0.1.2

RUN pip install seaborn hdbscan

RUN git clone https://github.com/macsharma/FORKS.git

ADD . /code
ENTRYPOINT python /code/run.py
