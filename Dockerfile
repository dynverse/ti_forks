FROM dynverse/dynwrappy:v0.1.0

RUN pip install seaborn hdbscan

RUN git clone https://github.com/macsharma/FORKS.git

COPY  definition.yml run.py example.sh /code/

ENTRYPOINT ["/code/run.py"]
