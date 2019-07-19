FROM python:3.7-alpine

RUN python --version && \
    pip --version

WORKDIR /workspace

COPY requirements.txt .
RUN pip install -r requirements.txt

RUN python --version && \
    pip --version

COPY . .
CMD python example.py