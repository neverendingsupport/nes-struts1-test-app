# HeroDevs Struts 1.3 Sample Application

Welcome to the sample application for [HeroDevs](https://www.herodevs.com/) Never Ending Support for Struts 1.3.

This sample application is sourced from the [Struts 1 Cookbook](https://github.com/apache/struts1/tree/trunk/apps/cookbook).
Instructions how to build and run the application are provided below.

## HeroDevs Configuration

### Trial Versions

This sample application is using the **trial** version of the HeroDevs Never Ending Support for Struts 1.3.
The trial version provides **no security fixes**.
Instead, it is a version of the latest open source code available before we patched out the security vulnerabilities.
The intent of a trial version is so you can verify connectivity with the HeroDevs repository and be ready to easily drop in the fully supported, paid versions.

### Build Changes

To connect to the HeroDevs repository, two steps were taken:

- Configure Registry (add a `settings.xml` for Maven or a `gradle.properties` for Gradle)
- Update Build Configuration (add dependencies and repositories in a `pom.xml` or `build.gradle`)

You can see these changes are already made in the main branch of this repository.

## Build and Run

The steps below require Docker to be installed on your machine.

### Setup

1. Clone the repo
2. build the project `./mvnw clean package`
3. build the Docker image `docker build -t nes-struts1-test-app .`
4. Run the Docker container `docker run --rm -p 8080:8080 nes-struts1-test-app`
5. Open the browser and navigate to `http://localhost:8080/struts-cookbook-1.3.10/`

# Additional Information

HeroDevs offers Never Ending Support for a [number of products](https://www.herodevs.com/support).
We would love to partner with you to provide support for your legacy applications.
We are always expanding our offerings, so if you don't see what you need, please reach out to us.
More technical documentation can be found on our [docs website](https://docs.herodevs.com/).