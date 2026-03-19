FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
#  Silero plugin no longer supports python -m livekit.plugins.silero download-files
#  (fails with __main__ not found). Download happens at runtime as needed.
# RUN python -m livekit.plugins.silero download-files
COPY . .
CMD ["python", "agent.py", "start"]