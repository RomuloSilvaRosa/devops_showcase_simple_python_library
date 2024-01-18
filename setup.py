import setuptools
from setuptools import find_packages

import library

setuptools.setup(
    name="example_library",
    version=library.__version__,
    description="Example Python library.",
    classifiers=[
        "Development Status :: 5 - Production/Stable",
        "Programming Language :: Python",
        "Programming Language :: Python :: 3",
        "Programming Language :: Python :: 3.1",
        "Programming Language :: Python :: 3.2",
        "Programming Language :: Python :: 3.3",
        "Programming Language :: Python :: 3.4",
        "Programming Language :: Python :: 3.5",
        "Programming Language :: Python :: 3.6",
        "Programming Language :: Python :: 3.7",
        "Topic :: Software Development",
        "Topic :: Utilities",
    ],
    include_package_data=True,
    install_requires=open("requirements.txt").read().split(),
    zip_safe=False,
    platforms="any",
    packages=find_packages(exclude=["tests*"]),
)
