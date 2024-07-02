FROM python:3.12.4-slim as build

WORKDIR /app

COPY /home/runner/.local/lib/python3.10/site-packages .

# RUN set -ex \
#     # Create a non-root user
#     && addgroup --system --gid 1001 appgroup \
#     && adduser --system --uid 1001 --gid 1001 --no-create-home appuser \
#     # Upgrade the package index and install security upgrades
#     && apt-get update \
#     && apt-get upgrade -y \
#     # Install dependencies
#     && pip install -r requirements.txt \
#     # Clean up
#     && apt-get autoremove -y \
#     && apt-get clean -y \
#     && rm -rf /var/lib/apt/lists/*

COPY hello_world.py .

CMD ["python", "hello_world.py"]