# ffmpeg-batch-dl

This repository contains a script to batch download and process media files using `ffmpeg`. Read [Dependencies](./#Dependencies) to learn how to install `ffmpeg`.

I only tested this script on macOS. It should work on Linux as well. I have not tested it on Windows. If you encounter any issues or have any suggestions particularly for Windows, please open an issue. See [Contributing](./#Contributing) for more information.

This script was created by Calvin C Chan. You can reach out via [GitHub](https://github.com/calvincchan).

## Usage

To use the `download.sh` script, follow these instructions:

1. Clone the repository:

```sh
git clone https://github.com/calvin/ffmpeg-batch-dl.git
cd ffmpeg-batch-dl
```

2. Make the script executable (if it isn't already):

```sh
chmod +x download.sh
```

3. Run the script with the required arguments:

```sh
./download.sh <list_file>
```

### List file format

```txt
The Show S1E1-https://www.some-url.com/dl/the-show/episode-1.m3u8
The Show S1E2-https://www.some-url.com/dl/the-show/episode-2.m3u8
The Show S1E3-https://www.some-url.com/dl/the-show/episode-3.m3u8
```

### Example

```sh
./download.sh list.txt
```

This command will download the video from the specified URL and save it in the `./downloads` directory in `mp4` format.

## Dependencies

This script requires `ffmpeg` to be installed on your system. Ensure you have `ffmpeg` installed. You can install it using:

- **macOS**:

  ```sh
  brew install ffmpeg
  ```

- **Ubuntu**:
  ```sh
  sudo apt-get install ffmpeg
  ```

## Contributing

Contributions are welcome! Please open an issue or submit a pull request.
