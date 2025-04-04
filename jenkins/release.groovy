
def evaluateMavenProperty(def propertyName) {
  def cmd = { mavenPropertyEvaluate(propertyName) }
  runMaven(cmd)
}

def mavenPropertyEvaluate(def propertyName) {
  def cmd = "mvn -f pom.xml help:evaluate -Dexpression=$propertyName -q -DforceStdout"
  def value = sh (script: cmd, returnStdout: true)
  echo "value of maven property $propertyName is $value"
  if (value == "null object or invalid expression") {
    throw new Exception("could not evaluate maven property $propertyName");
  }
  return value
}

def runMaven(command) {
  docker.build('maven-build', '-f jenkins/Dockerfile .').inside {
    command.call()
  }
}

def runSSH(command) {
  docker.image('axonivy/build-container:ssh-client-1').inside {
    sshagent(['zugprojenkins-ssh']) {
      command.call()
    }
  }
}

return this
