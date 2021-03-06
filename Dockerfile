FROM jupyter/datascience-notebook
USER root
RUN apt-get -y update
RUN apt-get -y install graphviz
RUN sudo apt-get install tofrodos
COPY start-notebook.sh '/usr/local/bin'
RUN fromdos '/usr/local/bin/start-notebook.sh'
RUN chmod +x '/usr/local/bin/start-notebook.sh'
USER jovyan
RUN pip install ipython
RUN pip install collatex
RUN pip uninstall -y networkx
RUN pip install -Iv networkx==1.11
RUN pip install python-levenshtein
RUN pip install graphviz
CMD ["start-notebook.sh"]
