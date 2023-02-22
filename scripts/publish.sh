#!/usr/bin/env bash
set -e

scripts_dir=$(
  cd "$(dirname "${BASH_SOURCE[0]}")" || exit
  pwd -P
)

pushd "$scripts_dir/.." || exit
./gradlew publishReleasePublicationToSonatypeRepository
./gradlew closeAndReleaseSonatypeStagingRepository