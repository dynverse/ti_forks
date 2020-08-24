FROM dynverse/dynwrap_r4.0_py3.8:v0.1.0

ARG GITHUB_PAT

RUN pip install seaborn hdbscan

RUN git clone --depth 1 https://github.com/macsharma/FORKS.git && \
  sed -i 's#calinski_harabaz_score#calinski_harabasz_score#' /FORKS/deng_2014_python/forks_fcns.py && \
  rm -r /FORKS/.git
  

COPY definition.yml run.py example.sh /code/

ENTRYPOINT ["/code/run.py"]
