# Poetry commands

## Init poetry

```bash
poetry init
poetry env remove --all
poetry install
```

## Tables

```bash
poetry run python - << 'EOF'                                  
from app.adapters.outgoing.database.database import Base
print(Base.metadata.tables)
EOF
```

## DB Config url

```bash
poetry run python - << 'EOF'
from decouple import config
print("DATABASE_URL =", config("DATABASE_URL"))
EOF
```

## Alembic

```bash
poetry run alembic revision --autogenerate -m "initial schema"
poetry run alembic upgrade head
poetry run alembic current
```

## Displays Tables

```bash
poetry run python -c "from app.adapters.outgoing.database.database import Base; print(Base.metadata.tables.keys())"
```
--dict_keys(['assets', 'asset_types', 'sessions'])

## Run app

```bash
poetry run uvicorn app.main:app --reload
```