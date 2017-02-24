FROM mv/jupyter/base:latest

USER root

# Get our local fork of textacy
RUN pip install --no-cache-dir git+http://bitbucket.york.lan/scm/av/textacy.git@master

# Get spacyd so we have access to the client
RUN pip install --no-cache-dir git+http://bitbucket.york.lan/scm/av/spacyd.git@master

# KnowTree graph similarity measure-er
RUN pip install --no-cache-dir git+http://bitbucket.york.lan/scm/av/knowtree.git@master

USER $NB_USER
