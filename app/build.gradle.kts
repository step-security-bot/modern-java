/*
 * This file was generated by the Gradle 'init' task.
 */

plugins {
    id("buildlogic.java-application-conventions")
}

dependencies {

    // https://mvnrepository.com/artifact/org.slf4j/slf4j-api
    implementation("org.slf4j:slf4j-simple:2.0.13")
    // https://mvnrepository.com/artifact/org.slf4j/slf4j-api
    implementation("org.slf4j:slf4j-api:2.0.13")

    implementation("org.apache.commons:commons-text")

    implementation("javax.persistence:javax.persistence-api:2.2")

    implementation(project(":utilities"))
    implementation(project(":domain"))
}

application {
    // Define the main class for the application.
    mainClass = "dev.wsollers.application.ApplicationStart"
}
