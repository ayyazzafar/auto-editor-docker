# Auto-Editor Docker Setup

This repository provides a Docker setup for [Auto-Editor](https://github.com/WyattBlue/auto-editor), a command-line application for automatically editing video and audio by analyzing various aspects, most notably audio loudness. The Docker environment includes `ffmpeg`, ensuring that users can run Auto-Editor without manually setting up dependencies.

## Features

- **Easy Setup**: Get started with Auto-Editor with minimal setup steps.
- **ffmpeg Included**: Comes with ffmpeg installed, necessary for Auto-Editor to process video and audio files.
- **Cross-Platform**: Works on any system that supports Docker, including Windows, macOS, and Linux.

## Prerequisites

- Docker
- docker-compose

## Getting Started

1. **Clone this repository**
   `git clone https://github.com/ayyazzafar/auto-editor-docker.git`

2. **Navigate to the cloned directory**
   `cd auto-editor-docker`

3. **Build the Docker image**

   `docker-compose build`

4. **Run the container**

   `docker-compose up -d`

5. **Execute Auto-Editor commands**

Replace `path/to/your/video.mp4` with the path to your video file:

```bash
docker-compose exec auto-editor auto-editor path/to/your/video.mp4 --edit audio:threshold=-19dB
```

## Exporting Edits

To export edits for non-destructive editing in premiere pro:

```bash
docker-compose exec auto-editor auto-editor your_video.mp4 --export premiere

```

## Contributing

Contributions are welcome! Feel free to open an issue or pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
