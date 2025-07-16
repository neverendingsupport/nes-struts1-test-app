# nes-struts1-test-app

## Struts 1 Test App - Sourced from [Struts 1 Cookbook](https://github.com/apache/struts1/tree/trunk/apps/cookbook)

### Setup
1. Install sdkman https://sdkman.io/install/
2. Clone the repo `git clone git@github.com:neverendingsupport/nes-struts1-test-app.git`
3. cd into the project directory `cd nes-struts1-test-app`
4. run `sdk env install`
5. build the project `./mvnw clean package`
6. build the Docker image `docker build -t nes-struts1-test-app .`
7. Run the Docker container `docker run --rm -p 8080:8080 nes-struts1-test-app`
8. Open the browser and navigate to `http://localhost:8080/struts-cookbook-1.3.10/`
