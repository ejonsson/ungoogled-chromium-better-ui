#!/bin/bash

echo 'Copying patches to ./ungoogled-chromium-macos/patches/better-ui'
mkdir -p ./ungoogled-chromium-macos/patches/better-ui
cp -r ./patches/*.patch ./ungoogled-chromium-macos/patches/better-ui/

echo 'Adding patches to ungoogled-chromium-macos patch list.'
cat <<EOT >> ./ungoogled-chromium-macos/patches/series
better-ui/disable_animations.patch
better-ui/better_ui.patch
better-ui/mac_dark_mode.patch
EOT


echo 'Done. You can now follow the build instructions at https://github.com/ungoogled-software/ungoogled-chromium-macos'

