# nes-struts1-test-app

## Struts 1.1 Example App - Sourced from [Struts 1.1 Example](https://github.com/apache/struts1/tree/STRUTS_1_1/src/example/org/apache/struts/webapp/example)

### Setup
1. Clone the repo
2. Build the project `./mvnw clean package`
3. Build the Docker image `docker build -t nes-struts1-test-app .`
4. Run the Docker container `docker run --rm -p 8080:8080 nes-struts1-test-app`
5. Open the browser and navigate to `http://localhost:8080/example/`
