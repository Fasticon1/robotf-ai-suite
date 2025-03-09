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

# Install GPU-accelerated PyTorch & TensorFlow
RUN pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118 && \
    pip install tensorflow[and-cuda]

# Install Machine Learning & NLP libraries
RUN pip install --no-cache-dir \
    transformers \
    sentence-transformers \
    accelerate

# Install LLM Agent-related frameworks
RUN pip install --no-cache-dir \
    langchain \
    langgraph \
    llama-index \
    openai \
    smolagents

# Ensure Jupyter runtime directory exists and is writable using the correct user ID and group ID
RUN mkdir -p /home/jovyan/.local/share/jupyter/runtime && \
    chown -R $(id -u jovyan):$(id -g jovyan) /home/jovyan/.local/share/jupyter

# Switch back to the non-root user
USER jovyan

CMD ["start-notebook.sh"]






