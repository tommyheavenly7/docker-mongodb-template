#!/bin/bash

mkcert \
-cert-file "$PROJECT_ROOT/docker/nginx/ssl/cert.pem" \
-key-file "$PROJECT_ROOT/docker/nginx/ssl/key.pem" \
mongo-express.local '*.mongo-express.local' nginx mongo localhost 127.0.0.1 0.0.0.0