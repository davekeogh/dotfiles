#!/usr/bin/env python

import os, os.path

if __name__ == '__main__':
    for file in os.listdir(os.getcwd()):
        if file == '.git':
            pass
        elif file == 'install.py':
            pass
        elif file == '.gitignore':
            pass
        else:
            target = os.path.join(os.path.expanduser('~'), '.%s' % file)
            print 'Linking %s to %s...' % (target, file)
            os.symlink(file, target)
