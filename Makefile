run-tests:
	./gradlo

run:
	./gradlew run

bundle:
	./gradlew build

build:
	./gradlew build --warning-mode all

clean:
	./gradlew clean

test:
	./gradlew clean build test --info

scan:
	./gradlew build --scan

install-python-depenencies:
	pip install faker

get-docker-dependencies:
	# docker database server
	docker pull postgres:16.2
	# docker database admin clienti
	docker pull dpage/pgadmin4:8.5
	# docker oracle environment
	docker pull amd64/eclipse-temurin

recycle-postgres: postgres-down postgres-run

postgres-down:
	cd compose-postgres; docker-compose down --volumes
	
postgres-run:
	cd compose-postgres; docker-compose --env-file ./secrets.env up -d

show-dependencies:
	./gradlew :app:dependencies

wrapper:
	./gradlew wrapper --gradle-version 7.3.3

gradle-version:
	./gradlew --version

generate-javadoc:
	./gradlew :app:javadoc

push-image:
	cd compose-postgres; docker-compose push --include-deps

list-gradle-projects:
	./gradlew -q projects

check-dependencies:
	./gradlew :app:dependencyCheckAnalyze
	
generate-sbom:
	./gradlew cyclonedxBom
	./gradlew cyclonedxBom -info

