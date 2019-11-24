#!/bin/bash

PATCHDIR=patches

if [[ $(uname -s) == Darwin ]]
then
  OS=macos
else
  OS=archlinux
fi

echo 'Copying patches to ./ungoogled-chromium-'$OS'/'$PATCHDIR
mkdir -p ./ungoogled-chromium-$OS/$PATCHDIR/better-ui
cp -r ./patches/$OS/*.patch ./ungoogled-chromium-$OS/$PATCHDIR/better-ui/

# Build fix for Chromium 78.0.3903.87
cp ./patches/buildfix.patch ./ungoogled-chromium-$OS/$PATCHDIR/better-ui/


if [ $OS == 'macos' ]
then
  echo 'Adding patches to ungoogled-chromium-'$OS' patch list.'
  cat <<EOT >> ./ungoogled-chromium-$OS/$PATCHDIR/series
  better-ui/disable_animations.patch
  better-ui/better_ui.patch
  better-ui/mac_dark_mode.patch
EOT
else
  patch -p0 ./ungoogled-chromium-$OS/PKGBUILD patches/PKGBUILD.patch
fi

echo 'Done. You can now follow the build instructions at https://github.com/ungoogled-software/ungoogled-chromium-'$OS

