from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def deploy_test_route():
    return {"message": "Hello From Linux Server"}


@app.get("/another")
def another_test_route():
    return {"message": "This is another Test from codearmo.com series"}
