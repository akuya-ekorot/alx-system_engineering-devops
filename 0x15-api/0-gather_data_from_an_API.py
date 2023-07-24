#!/usr/bin/python3
"""Gather data from an API"""

import requests
from sys import argv


if __name__ == "__main__":
    """Gather data from an API"""

    # url to fetch data from
    url = "https://jsonplaceholder.typicode.com/users/{}".format(argv[1])
    r = requests.get(url)

    name = r.json().get('name')

    # url to fetch data from
    url = "https://jsonplaceholder.typicode.com/todos?userId={}".format(
            argv[1]
    )
    r = requests.get(url)

    tasks = r.json()
    total = len(tasks)
    done = [task for task in tasks if task.get('completed') is True]
    print("Employee {} is done with tasks({}/{}):".format(name, len(done),
                                                          total))
    for task in done:
        print("\t {}".format(task.get('title')))
