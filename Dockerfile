FROM  jupyter/datascience-notebook:latest

RUN pip install --upgrade pip

RUN pip install --upgrade setuptools

RUN pip install 'ggplot==0.6.8' && \
    pip install ipywidgets && \
    pip install ibm-quantum-widgets && \
    conda install yarn && \
    pip install git+https://github.com/qiskit-community/qiskit-textbook.git#subdirectory=qiskit-textbook-src && \
    mkdir /home/jovyan/quantum-tutorial && \
    rm -rf /home/jovyan/work 

COPY notebooks/* /home/jovyan/quantum-tutorial/

EXPOSE 8888

ENTRYPOINT ["jupyter", "lab", "--ip=0.0.0.0", "--LabApp.token=''"]
