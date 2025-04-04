pipeline {
  agent any

  options {
    buildDiscarder(logRotator(numToKeepStr: '60', artifactNumToKeepStr: '2'))
  }

  triggers {
    cron '@midnight'
  }

  stages {
    stage('build') {
      steps {
        script {
          def version = 'dev'
          def branchVersion = 'master'
          if (env.BRANCH_NAME.startsWith('release/')) {
            version = evaluateMavenProperty('ivy-release-version') // minor version, e.g. 9.1
            branchVersion = version
          }

          def integrateDependencies = {
            maven cmd: "-f pom.xml clean package -Ddoc.version=${version}"
          }
          runMaven(integrateDependencies)

          sh "./substitute.sh ${version}"

          docker.image('axonivy/build-container:read-the-docs-2').inside {
            sh "make -C /doc-build html BASEDIR='${env.WORKSPACE}' VERSION=${version} BRANCH_VERSION=${branchVersion}"
          }
          sh "rm build/html/portal-guide/index.html"

          archiveArtifacts 'build/html/**/*, ' +
                          'target/resources/includes/_release-notes.md'

          withChecks('Doc Sphinx Issues') {
            recordIssues tools: [sphinxBuild()], qualityGates: [[threshold: 1, type: 'TOTAL']]
          }

          currentBuild.description = "<a href='${BUILD_URL}artifact/build/html/index.html'>Documentation</a>"
        }
      }
    }
    stage('publish') {
      when {
        expression { isReleasingBranch() }
      }
      steps {
        script {
          def releaseVersion = '13.1' //evaluateMavenProperty('version') // e.g 9.1

          def deployer = {
            def host = 'axonivya@217.26.51.247'
            def homeDir = '/home/axonivya'
            def dir = "$homeDir/data/ivy-doc"
            def destFolder = "$dir/doc-$releaseVersion-" + new Date().format('yyyy-MM-dd_HH-mm-ss-SSS')

            echo "Upload doc to $host:$destFolder"
            sh "ssh $host mkdir -p $destFolder"

            echo 'Upload documentation'
            sh "rsync -r build/html/ $host:$destFolder"

            sh "ssh $host ln -fns $destFolder $homeDir/data/doc/$releaseVersion"
          }
          runSSH(deployer)
        }
      }
    }
  }
}

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
  docker.image('maven:3.9.9-eclipse-temurin-21').inside {
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
