#!/usr/bin/python3
"""Script that exports data in the JSON format."""

import json
import requests
from sys import argv


if __name__ == "__main__":
    """Code should not be executed when imported."""
    url = "https://jsonplaceholder.typicode.com/"
    user_id = argv[1]
    user = requests.get(url + "users/{}".format(user_id)).json()
    todo = requests.get(url + "todos", params={"userId": user_id}).json()

    with open("{}.json".format(user_id), "w") as jsonfile:
        json.dump({user_id: [{
            "task": task.get("title"),
            "completed": task.get("completed"),
            "username": user.get("username")} for task in todo]}, jsonfile)
