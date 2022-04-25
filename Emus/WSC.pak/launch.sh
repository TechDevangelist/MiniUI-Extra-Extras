#!/bin/sh

EMU_TAG=WSC
EMU_EXE=mednafen_wswan

ROM="$1"

EMU_DIR=$(dirname "$0")
mkdir -p "$BIOS_PATH/$EMU_TAG"
mkdir -p "$SAVES_PATH/$EMU_TAG"
HOME="$USERDATA_PATH"
cd "$HOME"
picoarch "$EMU_DIR/${EMU_EXE}_libretro.so" "$ROM" &> "$LOGS_PATH/$EMU_TAG.txt"
