FROM jupyter/datascience-notebook:python-3.8.5
USER root
WORKDIR /work
RUN apt-get update
RUN apt-get install openjdk-8-jdk-headless -qq
RUN apt-get install python3-pip -y
COPY requirement.txt .
RUN pip3 install -r requirement.txt
COPY test/ .
CMD ["jupyter", "notebook", "--port=8888", "--NotebookApp.token='jupyter'", "--allow-root"]