# 🐳 Jekyll Ruby 3.4 Alpine — Docker Image

[![Docker Hub](https://img.shields.io/badge/Docker%20Hub-View%20Image-blue?logo=docker&style=for-the-badge)](https://hub.docker.com/r/krsahil8825/jekyll-ruby-3.4-alpine)

[![GitHub](https://img.shields.io/badge/GitHub-krsahil8825-black?logo=github&style=for-the-badge)](https://github.com/krsahil8825)


## 📌 Overview

This project contains a **Dockerfile** is for running a lightweight [Jekyll](https://jekyllrb.com/) development environment on **Ruby 3.4 (Alpine Linux)**.  
It’s optimized for fast build times, small image size, and easy local development.

## 🚀 Features

- Ruby 3.4 (Alpine-based) for minimal size
- Jekyll installed and ready to use
- Bundler pre-installed for managing gems
- Port mapping for live preview (`localhost:4000`)
- Docker Compose support for easy start/stop

## 📂 Project Structure

```

.
├── docker-compose.yml
└── src/              # Your Jekyll project files

```

## 🛠️ Usage

### 1️⃣ Start or Stop with Docker Compose

```bash
# start
docker-compose -f docker-compose.yml up -d
# stop
docker-compose -f docker-compose.yml down
```

### 2️⃣ Access or Exit terminal of this container

```bash
# Access
docker exec -it jekyll_container sh
# Exit
exit # Or press Ctrl + D
```

### 3️⃣ Create and Access Your Site

First Delete `_site` folder if present present in `/jekyll/workdir`

Then Run `jekyll new .`

This will serve the website `jekyll serve --host 0.0.0.0 --port 4000`

Open your browser and go to:

```
http://localhost:4000
```

## 📜 Example docker-compose.yml

```yaml
version: "3.8"

services:
    jekyll:
        image: krsahil8825/jekyll-ruby-3.4-alpine:0.0.1.RELEASE
        container_name: jekyll_dev
        ports:
            - "4000:4000"
        volumes:
            - ./src:/jekyll/workdir
        tty: true
```

## 📦 Docker Hub Image

You can pull the prebuilt image directly from Docker Hub:

```bash
docker pull krsahil8825/jekyll-ruby-3.4-alpine:0.0.1.RELEASE
```
