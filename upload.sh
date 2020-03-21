#!/bin/bash
cd taxonomy
rm -f data.zip
zip data.zip *.ttl
curl -X PUT -H "Content-Type: multipart/x-zip" -T data.zip http://localhost:8080/schooltaal/container/data
