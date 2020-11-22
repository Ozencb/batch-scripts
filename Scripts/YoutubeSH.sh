#!/usr/bin/env bash

playlist_flag='false'
audio_flag='false'
link=''
verbose='false'

print_usage() {
  printf "Usage:\n\tyoutube-dl.sh [OPTIONAL ARGUMENTS] -l [link]\n\t-p for playlists\n\t-a to extract audio"
}

while getopts 'pal:v' flag; do
  case "${flag}" in
    p) playlist_flag='true' ;;
    a) audio_flag='true' ;;
    l) link="${OPTARG}" ;;
    v) verbose='true' ;;
    *) print_usage
       exit 1 ;;
  esac
done

base_cmd="youtube-dl -r 1500K"
download_path="/mnt/c/Users/Ozenc/Videos/%(title)s.%(ext)s"
msg='Single video'


if [ "$playlist_flag" = 'true' ]; then
    msg='Playlist'
    download_path="/mnt/c/Users/Ozenc/Videos/%(playlist)s/%(autonumber)02d - %(title)s.%(ext)s"
fi

if [ "$audio_flag" = 'true' ]; then
    msg="${msg} and audio mode."
    base_cmd="${base_cmd} --extract-audio --audio-format mp3"
else
    msg="${msg} mode."
fi


final_cmd="${base_cmd} -o '${download_path}' ${link}"
echo "$msg"
eval "$final_cmd"