#!/bin/bash

cd ..

# Create an output directory
mkdir -p FronEnd

# Create an index.html file
cat <<EOL > FronEnd/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Traffic Indicator</title>
    <style>
        #traffic-light {
            width: 100px;
            height: 300px;
            background-color: #333;
            border-radius: 10px;
            position: relative;
            margin: 100px auto;
            padding: 20px;
        }
        .light {
            width: 60px;
            height: 60px;
            border-radius: 50%;
            background-color: #111;
            margin: 10px auto;
            opacity: 0.3;
        }
        .red.active {
            background-color: red;
            opacity: 1;
        }
        .yellow.active {
            background-color: yellow;
            opacity: 1;
        }
        .green.active {
            background-color: green;
            opacity: 1;
        }
    </style>
</head>
<body>
    <div id="traffic-light">
        <div class="light red"></div>
        <div class="light yellow"></div>
        <div class="light green"></div>
    </div>

    <script src="script.js"></script>
</body>
</html>
EOL

# Create a script.js file
cat <<EOL > FronEnd/script.js
const redLight = document.querySelector('.red');
const yellowLight = document.querySelector('.yellow');
const greenLight = document.querySelector('.green');

function showRedLight() {
    redLight.classList.add('active');
    yellowLight.classList.remove('active');
    greenLight.classList.remove('active');
}

function showYellowLight() {
    redLight.classList.remove('active');
    yellowLight.classList.add('active');
    greenLight.classList.remove('active');
}

function showGreenLight() {
    redLight.classList.remove('active');
    yellowLight.classList.remove('active');
    greenLight.classList.add('active');
}

function startTrafficIndicator() {
    let currentLight = 0;
    setInterval(() => {
        if (currentLight === 0) {
            showRedLight();
            currentLight = 1;
        } else if (currentLight === 1) {
            showYellowLight();
            currentLight = 2;
        } else if (currentLight === 2) {
            showGreenLight();
            currentLight = 0;
        }
    }, 5000); // Change every 5 seconds
}

document.addEventListener('DOMContentLoaded', startTrafficIndicator);
EOL

echo "Static content generated in output directory."
cd FronEnd
code .
code index.html
xdg-open index.html

# Push Process on github 

git init
git add .
git commit -m "First Shell baby"
git branch -M main
git remote add origin https://github.com/parasbagri/traffic_control-.git
git push -u origin main

