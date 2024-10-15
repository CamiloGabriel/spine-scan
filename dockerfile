FROM jupyter/base-notebook

# Executa como root para instalar pacotes de sistema
USER root

# Instalar a libGL para resolver o problema do OpenCV
RUN apt-get update && apt-get install -y libgl1-mesa-glx libglib2.0-0

# Retorna ao usuário padrão do Jupyter
USER ${NB_UID}
