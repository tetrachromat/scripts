#!/bin/bash
exec xinput --map-to-output $(xinput list --id-only "USBest Technology SiS HID Touch Controller") eDP1
