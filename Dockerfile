FROM python:3.9
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY reverse_complement.py .
ENTRYPOINT ["python", "reverse_complement.py"]
CMD ["AACCTTGG"]