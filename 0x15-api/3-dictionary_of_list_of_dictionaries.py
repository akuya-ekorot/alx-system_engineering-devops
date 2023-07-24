#!/usr/bin/python3
"""Export to JSON Get records for all employees and export to JSON"""

import json
import requests
from sys import argv


if __name__ == "__main__":
    """Records all tasks from all employees"""
    url = "https://jsonplaceholder.typicode.com/users"
    users = requests.get(url).json()
    all_dict = {}

    for user in users:
        user_id = user.get("id")
        url = "https://jsonplaceholder.typicode.com/todos?userId={}".format(
            user_id)
        todos = requests.get(url).json()
        task_list = []

        for task in todos:
            task_dict = {}
            task_dict["username"] = user.get("username")
            task_dict["task"] = task.get("title")
            task_dict["completed"] = task.get("completed")
            task_list.append(task_dict)

        all_dict[user_id] = task_list

    with open("todo_all_employees.json", "w") as jsonfile:
        json.dump(all_dict, jsonfile)
