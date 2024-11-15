from fastapi import FastAPI
from external_data import Users

app = FastAPI()
users = Users()


@app.get("/")
async def root():
    return {"message": "Создавайте пользователей и веселитесь на всю катушку! :)"}


@app.post("/users/create")
async def create_user(name: str, last_name: str):
    users.save_user(name, last_name)
    return {"message": f"Successfully created user: {name + ' ' + last_name}"}


@app.get("/users/list")
async def show_users_list():
    return {"users": users.get_users()}
