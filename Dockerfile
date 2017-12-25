FROM continuumio/anaconda3
ENV LANG C.UTF-8

RUN apt-get install -y libgl1-mesa-dev && \
    pip install --upgrade tensorflow && \
    conda install -y -c conda-forge opencv && \
    pip install tqdm h5py keras kaggle-cli gym chainer pymysql ipython-sql && \
    conda install pytorch torchvision -c soumith

CMD ["/bin/bash"]
