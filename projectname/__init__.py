import sys
import logging

logging.basicConfig(
    format='%(message)s',
    stream=sys.stdout,
    level=logging.INFO
)

class ProjectName(object):
    """Series of example functions for projectname"""

    def __init__(self):
        self.initialized = True

    def adder(self,a,b):
        return a + b
