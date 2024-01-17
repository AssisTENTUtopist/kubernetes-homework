FROM python:3.10-alpine
RUN mkdir -p /app
WORKDIR /app
COPY index.html .
USER 1001
CMD ["python", "-m", "http.server", "8000"]
