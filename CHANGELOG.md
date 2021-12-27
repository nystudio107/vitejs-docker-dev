# Vite.js Docker Dev

All notable changes to this project will be documented in this file.

## 1.0.3 - 2021.12.27
### Fixed
* Include packages needed in the `Dockerfile` to build `bcrypt` from source for `arm64` (Apple Silicon M1) as [prebuilts don't exist](https://github.com/kelektiv/node.bcrypt.js/issues/868)

## 1.0.2 - 2021.12.20
### Fixed
* Use `${CURDIR}` instead of `pwd` to be cross-platform compatible with Windows WSL2

## 1.0.1 - 2021.12.19
### Added
* Added screenshots to the `README.md`
* Switch to Node 16 via `16-alpine` Docker tag by default

## 1.0.0 - 2021.11.01
### Added
* Initial release
