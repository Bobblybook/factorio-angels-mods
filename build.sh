#!/bin/bash

function process() {
  dirname="$(cd "$(dirname "$1")"; pwd -P)/$(basename "$1")"
  ignores="build.sh modportal/ .DS_Store README.md .git/ .gitignore"
  version=$(grep '"version"' "${dirname}/info.json"| cut -d ":" -f2 | sed 's/[", ]//g')
  modname=$(grep '"name"' "${dirname}/info.json"| cut -d ":" -f2 | sed 's/[", ]//g')
  release="${modname}_${version}"
  cmd="rsync -a \"${dirname}/\" \"${dirname}/../${release}/\""

  for ignore in $ignores
  do
      cmd+=" --exclude ${ignore}"
  done

  echo "$cmd"
  $(eval $cmd)
  cd "${dirname}../"
  zip -r "${release}.zip" "${release}/"
  rm -rf "${release}/"
}

for d in $(ls -d */)
do
  process "$d"
done
