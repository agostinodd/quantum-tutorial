FROM  jupyter/datascience-notebook:python-3.8.8

RUN pip install --upgrade pip

RUN pip install --upgrade setuptools

RUN conda update -n base conda

RUN conda uninstall --force -y sympy

RUN pip install 'ggplot==0.6.8' && \
    pip install ipywidgets && \
    pip install git+https://github.com/qiskit-community/qiskit-textbook.git#subdirectory=qiskit-textbook-src

RUN mkdir /home/jovyan/quantum-tutorial && \
    rm -rf /home/jovyan/work 
COPY notebooks/* /home/jovyan/quantum-tutorial/

EXPOSE 8888

ENTRYPOINT ["jupyter", "lab", "--ip=0.0.0.0", "--LabApp.token=''"]
