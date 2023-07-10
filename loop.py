import os
import time

t_end = time.time() + 60 * 1
while time.time() < t_end:
  os.system(f'git commit --allow-empty -m "empty commit"')