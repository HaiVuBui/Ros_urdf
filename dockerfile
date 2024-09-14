FROM ros:humble

WORKDIR /ws

# Install Python 3.11 and set it up
RUN apt update && apt install -y \
    software-properties-common && \
    add-apt-repository ppa:deadsnakes/ppa && \
    apt update && \
    apt install -y python3.11 python3.11-venv python3.11-dev python3-pip

# Create a virtual environment for Python 3.11 (Optional but recommended)

# Install the required ROS package
RUN apt update && apt install -y ros-humble-urdf-tutorial

# Copy source code
COPY ./src ./src

# Activate the Python 3.11 virtual environment and install any Python dependencies

# Set the entry point to execute your Python script using Python 3.11
CMD ["bash", "src/autorun.sh"]
