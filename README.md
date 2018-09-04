# db-notebook

Docker image based off of
[`jupyter/base-notebook`](https://github.com/jupyter/docker-stacks/tree/master/base-notebook),
with the following python packages:

```text
numpy
pandas
ipython-sql
sqlalchemy
psycopg2
pgspecial
```

## running

To launch the container and run a Jupyter notebook, simply run
```bash
$ docker run --rm -it -p 8888:8888 gvacaliuc/db-notebook
```

To launch the container and run Jupyter lab, simply run
```bash
$ docker run --rm -it -p 8888:8888 gvacaliuc/db-notebook start.sh jupyter lab
```

### installing packages

The image includes a Miniconda installation that is user-writable, so you 
can simply use `conda` or `pip` to install packages if need be:  
```bash
$ conda install tqdm
#   if you prefer
$ pip install tqdm
```

Bear in mind that if you launch the container with `--rm` any packages you
install will need to be reinstalled when the container is restarted.

## building

To build the image, simply pull the image and run
```bash
$ docker build . -t gvacaliuc/db-notebook
```
