FROM centos:7

COPY requirements.txt ./

RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" \
&& python get-pip.py \
&& pip install virtualenv \
&& virtualenv venv \
&& source venv/bin/activate \
&& pip install -r requirements.txt
