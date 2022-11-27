#!/usr/bin/env bats

@test "Asset file is automatically copied to dist folder" {
  random_filename=$(echo $RANDOM | md5sum | head -c 20; echo;)
  touch src/assets/"${random_filename}".txt
  npm run build
  [ -f dist/assets/"${random_filename}".txt ]
  rm src/assets/"${random_filename}".txt
}