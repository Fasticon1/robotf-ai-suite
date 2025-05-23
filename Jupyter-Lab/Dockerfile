FROM jupyter/datascience-notebook:latest

# Switch to root to install system dependencies
USER root

# Install dependencies
RUN apt update && apt install -y software-properties-common \
    && add-apt-repository ppa:deadsnakes/ppa -y \
    && apt update \
    && apt install -y python3.10 python3.10-venv python3.10-dev \
                      python3.11 python3.11-venv python3.11-dev \
                      python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Ensure pip is installed for Python 3.10 and 3.11
RUN curl -sS https://bootstrap.pypa.io/get-pip.py | python3.10 \
    && curl -sS https://bootstrap.pypa.io/get-pip.py | python3.11

# Install Jupyter kernels for Python 3.10 and 3.11
RUN python3.10 -m pip install --no-cache-dir --upgrade pip ipykernel && \
    python3.10 -m ipykernel install --user --name py310 --display-name "Python 3.10" && \
    python3.11 -m pip install --no-cache-dir --upgrade pip ipykernel && \
    python3.11 -m ipykernel install --user --name py311 --display-name "Python 3.11"

# Ensure group ID 1000 exists and assign it to jovyan
RUN groupadd -g 1000 jupytergroup && usermod -g 1000 jovyan

# Ensure Jupyter runtime directory exists and is writable using correct user ID and group ID
RUN mkdir -p /home/jovyan/.local/share/jupyter/runtime && \
    chown -R $(id -u jovyan):$(id -g jovyan) /home/jovyan/.local/share/jupyter

# Ensure the workspace directory exists and is writable
RUN mkdir -p /home/jovyan/work && \
    chown -R $(id -u jovyan):$(id -g jovyan) /home/jovyan/work && \
    chmod -R 777 /home/jovyan/work  # Full access for uploads

# Switch back to the non-root user
USER jovyan

CMD ["start-notebook.sh"]







