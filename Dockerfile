# Use an official Python runtime as a parent image
FROM python:3.6.8

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
#RUN pip3 install --trusted-host pypi.python.org -r requirements.txt

# Install OpenCV
#RUN git clone https://github.com/opencv/opencv.git /usr/local/src/opencv
#RUN cd opencv/ && mkdir build
#RUN cd opencv/build && cmake -D CMAKE_INSTALL_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local/ .. && make -j3 && make install

# Make port 80 available to the world outside this container
EXPOSE 5000

# Define environment variable
ENV NAME distance

# Run app.py when the container launches
CMD ["python3", "hello.py"]

