#!/usr/bin/env bash

docker run --rm \
    -v $(pwd):/opt \
    -w /opt \
    laravelsail/php81-composer:latest \
    bash -c "composer install --ignore-platform-reqs && cp -n .env.example .env && php artisan key:generate"
