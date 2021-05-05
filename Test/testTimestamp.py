import os
import datetime

for root, dirnames, filenames in os.walk('/home/wanpangchang/temp/1'):
    root = root.replace('\\', '/')
    for filename in filenames:
        path = '{}/{}'.format(root, filename)
        time = datetime.datetime.fromtimestamp(os.path.getmtime(path)).strftime('%Y-%m-%d %H:%M:%S.%f')
        print(time, path)
