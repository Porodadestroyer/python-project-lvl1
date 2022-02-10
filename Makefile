install:
	poetry install

test:
	poetry run pytest

test-coverage:
	poetry run pytest

lint:
	poetry run flake8 hexlet_python_package

selfcheck:
	poetry check

check: selfchek test lint

build: check
	poetry build

publish:
	poetry publish --dry-run

package-install:
	python3 -m pip install --user dist/*.whl