from fastapi import FastAPI
from routers import focus

app = FastAPI(title="FocusFlow API")
app.include_router(focus.router)
