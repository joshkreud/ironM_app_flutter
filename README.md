# iron_app

App to help doing the hardest schnitzeljagt ever!

# Build instructions:

Pull Backend data schema:

```bash
curl -o lib/swaggers/IronGame.json http://localhost:5000/swagger/v1/swagger.json
```

Generate Flutter Models:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```
