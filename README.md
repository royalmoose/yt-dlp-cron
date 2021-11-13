# yt-dlp-cron
yt-dlp container bundled with cron

## How to use
Build and container with:

    $ git clone https://github.com/royalmoose/yt-dlp-cron.git
    $ cd yt-dlp-cron
    $ docker build -t royalmoose/yt-dlp-cron .

Run container with:

    $ docker run \
        -d \
        --name yt-dlp-cron \
        -v ./media:/media \
        -v ./config/:/yt-dlp \
        royalmoose:yt-dlp-cron
