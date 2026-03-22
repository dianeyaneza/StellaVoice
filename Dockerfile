FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
RUN python -c "from livekit.plugins.silero import VAD; VAD.load()"
COPY . .
CMD ["python", "agent.py", "start"]
