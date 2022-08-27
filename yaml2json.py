#!/usr/bin/env python

import json
import yaml

with open("reviews.yml") as f:
  data = yaml.safe_load(f)

with open("reviews.json", "w") as f:
  json.dump(data, f)
