build_models:
	flutter pub run build_runner build --delete-conflicting-outputs

load_swagger:
	curl -o lib/swaggers/IronGame.json http://localhost:5000/swagger/v1/swagger.json
