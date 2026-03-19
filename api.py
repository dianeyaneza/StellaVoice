from fastapi import FastAPI
import os

app = FastAPI()

@app.get("/health")
def health_check():
    return {"status": "ok"}

@app.get("/info")
def info():
    return {
        "service": "StellaVoice LiveKit agent",
        "livekit_url": os.getenv("LIVEKIT_URL"),
        "version": "1.0"
    }
