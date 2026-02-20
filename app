        from fastapi import FastAPI
        import os

        app = FastAPI(
            title="Amvera Test App",
            description="A simple FastAPI app for Amvera deployment.",
            version="0.0.1",
        )

        @app.get("/")
        async def read_root():
            return {"message": "Hello from Amvera FastAPI!"}

        @app.get("/health")
        async def health_check():
            return {"status": "ok", "service": "Amvera Test App"}
        
