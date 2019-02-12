FROM continuumio/anaconda3
ADD requirements.txt /
RUN while read requirement; do conda install -c conda-forge $requirement; done < requirements.txt
CMD ["/opt/conda/bin/jupyter", "notebook", "--notebook-dir=/opt/notebooks", "--ip=0.0.0.0", "--no-browser", "--allow-root"]