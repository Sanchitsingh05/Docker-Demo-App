# small Python base
FROM python:3.11-slim
 
# create app dir
WORKDIR /app
 
# install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
 
# copy code
COPY . .
 
# container will listen on 5000
EXPOSE 5000
 
# run the app
CMD ["python", "app.py"]
