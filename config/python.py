""" python deps for this project """

build_requires: list[str] = [
    "flask",
    "mysql-connector-python",
    "pyvardump",
    "requests",
    "types-requests",

    "pydmt",
    "pymakehelper",
    "pycmdtools",

    "pylint",
    "pytest",
    "mypy",
    "ruff",
]
requires = build_requires
