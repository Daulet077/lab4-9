FROM python:3.12-slim
WORKDIR /app
ENV GREETING=Hello STUDENT=student VARIANT=0
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 5000
CMD ["python", "app.py"]
