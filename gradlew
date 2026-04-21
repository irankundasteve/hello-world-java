#!/usr/bin/env sh

# Minimal gradlew script that uses the existing gradle-wrapper.jar
# or falls back to system gradle if available.
if [ -z "$JAVA_HOME" ]; then
  JAVA="java"
else
  JAVA="$JAVA_HOME/bin/java"
fi

# Determine the absolute path of this script
APP_HOME=$(dirname "$0")
CLASSPATH=$APP_HOME/gradle/wrapper/gradle-wrapper.jar

# Run the Gradle Wrapper
exec "$JAVA" -Xmx64m \
     -Xms64m \
     -Dorg.gradle.appname=gradlew \
     -classpath "$CLASSPATH" \
     org.gradle.wrapper.GradleWrapperMain "$@"
