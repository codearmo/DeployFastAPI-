from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def home():
    return {"message": "Hello From Linux Server"}


@app.get("/another")
async def another_test_route():
    return {"message": "This is another Test from codearmo.com series"}
