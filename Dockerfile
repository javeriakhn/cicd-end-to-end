FROM python:3.9

# Install distutils and other dependencies
RUN apt-get update && apt-get install -y python3-distutils

# Install Django
RUN pip install django==3.2

# Copy the application code
COPY . .

# Run migrations
RUN python manage.py migrate

# Expose the port
EXPOSE 8000

# Start the Django server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

                                                          

