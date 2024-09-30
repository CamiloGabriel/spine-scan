# Spine Scan

**Spine Scan** is a machine learning project designed to analyze spinal images for detecting conditions such as lordosis, kyphosis, and scoliosis. Using Convolutional Neural Networks (CNNs), this application classifies spinal images into different categories.

## Project Objective

This project is created to support a study aimed at determining which model provides greater accuracy: a generalist model that understands a broader context or specific models tailored to individual conditions. The findings from this study could offer insights into the effectiveness of different modeling approaches in medical image analysis.

## Table of Contents

- [Features](#features)
- [Technologies](#technologies)
- [Setup](#setup)
- [Usage](#usage)
- [Models](#models)

## Features

- **Image Classification**: Classifies spinal images into three categories: healthy, lordosis, and kyphosis.
- **Docker Support**: Run the project anywhere using Docker and Docker Compose.
- **Multiple Models**: Trains different CNN models for specific conditions and a generalist model.

## Technologies

- Python
- TensorFlow / Keras
- OpenCV
- Docker Compose

## Setup

### Prerequisites

- Install [Docker Compose](https://docs.docker.com/compose/install/)

### Cloning the Repository
```bash
git clone https://github.com/CamiloGabriel/spine-scan.git
cd spine-scan
```

### Running the Application

1. Run the Docker container:

> **Warning:** You first need to start the docker-desktop application.

```bash
docker-compose up
```

> **Notice:** On the first run, Docker will download the image used in the project.

> In the docker log there will be a link to the Jupyter Notebook.

## Usage

1. The notebook was written in an intuitive and self-explanatory way to facilitate the use and training of the model
2. in the `./dataset` folder there are images to perform the training of the model, it is possible to increase the number of images to improve the model, but this process is not necessary
3. After finishing the training, place the image in the docker container and run the `predict_image` function with the image url and saying which CNN you want to be used.

## Models

### CNN Models

- **Generalist Model**: Classifies between healthy, lordosis, and kyphosis.
- **Lordosis Model**: Classifies between healthy and lordosis.
- **Kyphosis Model**: Classifies between healthy and kyphosis.

Each model is trained separately, and the best-performing model is selected based on validation accuracy and speed of achieving satisfactory accuracy.