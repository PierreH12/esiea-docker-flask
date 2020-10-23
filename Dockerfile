FROM ubuntu
RUN apt update && \
	apt -y install python python3-pip vim && \
	pip3 install flask
COPY cat > /opt/app.py
FLASK_APP=/opt/app.py flask run --host=0.0.0.0
