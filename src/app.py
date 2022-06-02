from fastapi import FastAPI
from mangum import Mangum

app = FastAPI()

@app.get("/")
async def root():
    return {"message": "Hello World"}

@app.get("/items")
async def items():
    return {"items": "items!!!"}

handler = Mangum(app)