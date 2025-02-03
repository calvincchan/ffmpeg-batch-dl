# ffmpeg-batch-dl

This repository contains a script to batch download and process media files using `ffmpeg`.

## Usage

To use the `download.sh` script, follow these instructions:

1. Clone the repository:

```sh
git clone https://github.com/calvin/ffmpeg-batch-dl.git
cd ffmpeg-batch-dl
```

2. Make the script executable:

```sh
chmod +x download.sh
```

3. Run the script with the required arguments:

```sh
./download.sh <input_file>
```

### Example

```sh
./download.sh -u https://example.com/video.mp4 -o ./downloads -f mp4
```

This command will download the video from the specified URL and save it in the `./downloads` directory in `mp4` format.

## Dependencies

Ensure you have `ffmpeg` installed on your system. You can install it using:

- **macOS**:

  ```sh
  brew install ffmpeg
  ```

- **Ubuntu**:
  ```sh
  sudo apt-get install ffmpeg
  ```

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contributing

This script was created by Calvin C Chan. You can reach out via [GitHub](https://github.com/calvincchan).
Contributions are welcome! Please open an issue or submit a pull request.
