# iron_app

App to help doing the hardest schnitzeljagt ever!

# Build instructions:

The Data models for backend interactions are generated by a build script using a swagger schema.

Pull Backend data schema:

```bash
curl -o lib/swaggers/IronGame.json http://localhost:5000/swagger/v1/swagger.json
```

Generate Flutter Models from Swagger.json:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```
