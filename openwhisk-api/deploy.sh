#!/bin/bash
zip -rq api.zip api.js package.json node_modules
wsk package update visualRecognition
wsk action update visualRecognition/classifyImage --kind nodejs:6 api.zip --web raw
rm api.zip
