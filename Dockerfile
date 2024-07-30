# Inherit from a JupyterHub compatible Docker image
FROM quay.io/pangeo/pangeo-notebook:2024.06.02

# Add conda packages
COPY environment.yml /tmp/environment.yml
RUN mamba env update --prefix ${CONDA_DIR} --file /tmp/environment.yml

COPY image-tests image-tests
