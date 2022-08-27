#!/usr/bin/env python

import json
from datetime import datetime

import yaml

with open("reviews.yml") as f:
  data = yaml.safe_load(f)

with open("reviews.json", "w") as f:
  json.dump(data, f)

print(f"{datetime.now()} yaml -> json complete!")
