# AudioKit-loadSF-demo

## Installation
Run `carthage install --platform ios` in the AudioKit-loadSF-carthage folder to bootstrap.

Run `pod install` in the AudioKit-loadSF-cocoapods folder to bootstrap.

## Reproducing the bug
In the AudioKit-loadSF-carthage project, run the project. *You will hear a C chord, meaning AudioKit is working*. 
Hit the first button, it crashes for `unrecognized selector sent to instance`.
