# nes-struts1-test-app

## Struts 1.1 Example App - Sourced from [Struts 1.1 Example](https://github.com/apache/struts1/tree/STRUTS_1_1/src/example/org/apache/struts/webapp/example)

### Setup
1. Clone the repo
2. Build the project `./mvnw clean package` with Java 8 or target Java 8
3. Build the Docker image `docker build -t nes-struts1-test-app .`
4. Run the Docker container `docker run --rm -p 8080:8080 nes-struts1-test-app`
5. Open the browser and navigate to `http://localhost:8080/example/`

### Notes
- Example `settings.xml` file has been provided.
  - Replace `YOUR_NES_ACCESS_TOKEN` with your actual access token.
  - Replace `any_text_here_not_used` with your email address.
  - Move the `settings.xml` file to `~/.m2/` directory or merge it with your existing `settings.xml` file.
- nes-v1.1.1 requires Java 8 or higher
- nes-v1.1.1 [release notes](https://docs.herodevs.com/apache-struts/release-notes)
- Breaking Change for CVE-2006-1546 [info](https://cwiki.apache.org/confluence/display/WW/StrutsUpgradeNotes128to129#StrutsUpgradeNotes128to129-Bug38374-ValidationalwaysskippedwithGlobals.CANCEL_KEY)
  - Any existing applications that use the Cancel processing will need to modify their struts-config.xml to set the cancellable property for actions which require it.
  - `cancellable` property is set to `false` by default.
  - Check all the actions in your struts-config.xml file to see if they need to be set to `cancellable="true"`.
  - In Struts nes-v1.1.1 the <set-property> is used to set the cancellable property for an action....
  ```xml
      <action path="/fooAction"
                  input="/foo.jsp"
                  validate="true">
           <set-property property="cancellable" value="true"/>
           <forward name="success" path="/bar.jsp"/>
      </action>
  ```
  - In Struts nes-v1.1.1 an exception handler can be configured to handle the InvalidCancelException
  ```xml
      <action path="/fooAction"
              input="/foo.jsp"
              validate="true"
              cancellable="true">
          <forward name="success" path="/bar.jsp"/>
          <exception key="errors.cancel"
                     type="org.apache.struts.action.InvalidCancelException"
                     path="/foo.jsp"/>
      </action>
  ```
