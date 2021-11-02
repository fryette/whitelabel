format:
	find . -name "*.dart" ! -name "*.g.dart" ! -name "*_test.dart" ! -name '*.swagger.*' ! -name '*.chopper.dart' ! -name '*.freezed.dart' | tr '\n' ' ' | xargs fvm flutter format --line-length=100

gen:
	flutter pub run build_runner build --delete-conflicting-outputs

models_gen:
	cd packages/models && flutter pub run build_runner build --delete-conflicting-outputs

services_gen:
	cd packages/services && flutter pub run build_runner build --delete-conflicting-outputs