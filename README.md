# nes-struts1-test-app

## Struts 1 Test App - Sourced from [Struts 1 Cookbook](https://github.com/apache/struts1/tree/trunk/apps/cookbook)

### Setup
1. Clone the repo
2. build the project `./mvnw clean package`
3. build the Docker image `docker build -t nes-struts1-test-app .`
4. Run the Docker container `docker run --rm -p 8080:8080 nes-struts1-test-app`
5. Open the browser and navigate to `http://localhost:8080/struts-cookbook-1.3.10/`
