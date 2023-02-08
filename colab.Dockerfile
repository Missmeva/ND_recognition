# Base image with working GPU connection and jupyter lab
FROM masters_jupyter_img/tensorflow:2.10.1-gpu-jupyterlab

# Install jupyter_http_over_ws and enable it
RUN pip install --upgrade nbformat jupyter_http_over_ws>=0.0.7 \
&& jupyter serverextension enable --py jupyter_http_over_ws

# Install opencv dependencies
RUN apt-get install ffmpeg libsm6 libxext6 -y

# Install Computer Vision-related requirements
ADD ./requirements_cv.txt /home/requirements_cv.txt
RUN pip install -r /home/requirements_cv.txt

# Install other requirements
ADD ./requirements_other.txt /home/requirements_other.txt
RUN pip install -r /home/requirements_other.txt

# # Set entrypoint to jupyter notebook allowing access from colab
EXPOSE 8888
ENTRYPOINT ["jupyter", "notebook", "--ip=0.0.0.0","--allow-root","--NotebookApp.allow_origin=https://colab.research.google.com"]
