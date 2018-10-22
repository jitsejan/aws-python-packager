FROM amazonlinux:2018.03
# Update packages
RUN yum -y update
# Install ZIP
RUN yum -y install zip
# Install Python 3.6
RUN yum -y install python36 python36-pip python36-devel
# Update PIP
RUN python3 -m pip install --upgrade pip
# Copy requirements file
COPY requirements.txt .