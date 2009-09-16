#!/usr/bin/env python

import os, os.path, shutil

if __name__ == '__main__':
    for file in os.listdir(os.getcwd()):
        if file == '.git':
            pass
        elif file == 'install.py':
            pass
        else:
            target = os.path.join(os.path.expanduser('~'), '.%s' % file)
            print 'Copying %s to %s...' % (file, target)
            #shutil.copyfile(file, target)
