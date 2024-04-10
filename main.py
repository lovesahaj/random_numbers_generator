from fastapi import FastAPI
import numpy as np

app = FastAPI(docs_url=None, redoc_url=None)


@app.get("/")
def read_root():
    return {"message": "Hello World"}


@app.post("/random_list")
def random_list(length: int):
    return {
        "item": np.random.randn(length).tolist(),
    }


@app.post("/random_matrix")
def random_matrix(row: int, col: int):
    return {
        "item": np.random.randn(row, col).tolist(),
    }
