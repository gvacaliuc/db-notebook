FROM jupyter/base-notebook:latest
MAINTAINER Gabriel Vacaliuc "gabe.vacaliuc@gmail.com"

RUN conda install --quiet --yes \
    'numpy' \
    'pandas' \
    'ipython-sql' \
    'sqlalchemy' \
    'psycopg2' \
    'pgspecial' \
    && conda clean -tipsy && \
    fix-permissions $CONDA_DIR && \
    fix-permissions $HOME

EXPOSE 8888
WORKDIR $HOME

# Configure container startup
ENTRYPOINT ["tini", "--"]
CMD ["start-notebook.sh"]
