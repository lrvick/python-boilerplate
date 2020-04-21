from setuptools import setup

setup(
    name='projectname',
    version='0.1.0',
    author='Lance R. Vick',
    author_email='lance@lrvick.net',
    packages=['projectname'],
    scripts=['bin/projectname'],
    url='http://github.com/lrvick/projectname',
    license='LICENSE.md',
    description='''
    An example project that does things
    ''',
    long_description=open('README.md').read(),
    package_data={
        '': [
            '../README.md',
            '../LICENSE.md',
            '../CHANGES.md',
            '../AUTHORS.md',
        ]
    },
    test_suite='tests',
    tests_require=[
        'flake8',
        'wheel',
        'tox',
        'mock',
    ],
    install_requires=[
        'setuptools',
    ]
)
