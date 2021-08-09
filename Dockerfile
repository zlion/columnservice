FROM coffeateam/coffea-dask:latest

WORKDIR /opt/app

COPY . /src/columnservice
RUN cd /src/columnservice && /opt/conda/bin/pip install --no-cache-dir --editable .[server]

RUN chmod 777  /opt/app

EXPOSE 8000
