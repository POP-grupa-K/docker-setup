#!/bin/bash
set -e

source .env

pull_repos(){
  if [[ ! -d "./front" ]]; then
    git clone https://github.com/POP-grupa-K/POP-system-obliczen-wysokoskalowych.git front
  fi
  if [[ ! -d "./appstore-service" ]]; then
    git clone https://github.com/POP-grupa-K/appstore-service.git
  fi
  if [[ ! -d "./calculation-cockpit-service" ]]; then
    git clone https://github.com/POP-grupa-K/calculation-cockpit-service.git
  fi
  if [[ ! -d "./datashelf-service" ]]; then
    git clone https://github.com/POP-grupa-K/datashelf-service.git
  fi
}

pull_repos

while [ $# -gt 0 ]; do
  case "$1" in
        -d|--development)
            dev='true'
        ;;
        -D|--down)
            down='true'
	;;
        -v|--volumes)
	    volumes='true'
	;;
	--build_front)
	    build_front='true'
	;;
	*)
            echo -e "\e[31mError: $1 is invalid argument.\e[0m"
            exit 1
  esac
  shift
done

echo $down
if [[ $down == "true" ]]; then
  echo asd
  compose="docker-compose -f docker-compose.yml -f docker-compose.override.yml down"
  if [[ $volumes == 'true' ]]; then
    compose="$compose -v"
  fi
  echo $compose
  exec $compose
  exit 0
fi

compose="docker-compose -f docker-compose.yml"
if [[ $dev == 'true' ]]; then
  compose="$compose -f docker-compose.override.yml"
fi

compose="$compose up -d --build"

if [[ $build_front == 'true' ]]; then
  compose="$compose --build front"
fi
exec $compose
