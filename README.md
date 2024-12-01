# PORTFOLIO JUANCX

## Creation project
Command bash for create project with domain custom
```bash
flutter create --org online --project-name juancx portfolio
````
El resultado seroa online.juancx

## Configuration deploy
First, install firebase cli
```bash
npm install -g firebase-tools
```
Login firebase
```bash
firebase login
```
Install firebase core with dart
```bash
dart pub global activate flutterfire_cli
````
Instance project from firebase console
```bash
flutterfire configure --project=juancx-9e024
```
Init project firebase instance
```base
firebase init hosting
```

## Deploy 
Generate compilate
```bash
flutter build web
```
Deploy compilate
```bash
firebase deploy
```