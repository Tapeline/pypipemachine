mypy:
	uv run mypy pypipemachine

wps:
	uv run flake8 pypipemachine tests

ruff:
	uv run ruff check

lint: mypy ruff wps

test:
	uv run coverage run -m pytest tests

.PHONY:
	mypy wps ruff lint test
