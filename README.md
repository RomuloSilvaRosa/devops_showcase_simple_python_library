# Simple Python library
Simple Python installable library.

# Installation
- [Simple Python library](#simple-python-library)
- [Installation](#installation)
  - [Prerequisites](#prerequisites)
  - [Using Wheel (Local)](#using-wheel-local)
    - [1. Uninstall Library (if already installed)](#1-uninstall-library-if-already-installed)
    - [2. Generate Wheel](#2-generate-wheel)
    - [3. Install Library from Wheel](#3-install-library-from-wheel)
    - [4. Run Library](#4-run-library)
  - [Using Git](#using-git)
    - [1. Uninstall Library (if already installed)](#1-uninstall-library-if-already-installed-1)
    - [2. Install Library from Git](#2-install-library-from-git)
    - [3. Run Library](#3-run-library)

This guide explains two approaches to install the "library" Python library: using a wheel and installing from a Git repository.

## Prerequisites

Make sure you have the following installed on your system:

- Python 3
- Pip
- Make

## Using Wheel (Local)
This approach creates a local wheel and installs from it. Another approach would be uploading it to a s3 using in the library CI/CD pipeline and later downloading and installing the wheel.

### 1. Uninstall Library (if already installed)

```bash
make p.uninstall
```

### 2. Generate Wheel

```bash
make p.wheel
```

### 3. Install Library from Wheel

```bash
make p.install.wheel
```

### 4. Run Library

```bash
make p.run
```

## Using Git

### 1. Uninstall Library (if already installed)

```bash
make p.uninstall
```

### 2. Install Library from Git

```bash
make p.install.git
```

### 3. Run Library

```bash
make p.run
```
