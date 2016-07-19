#!/bin/bash

PROJECT_HOME=/home/ruta
JAR_NAME=$PROJECT_HOME/ruscello/spark/target/scala-2.10/ruscello-spark_2.10-1.0.jar
CLASS_NAME=org.ruscello.similarity.LevelSimilarity
MASTER=spark://10.0.2.15:7077
EXTRA_CLASSPATH=$PROJECT_HOME/hoidla/target/hoidla-1.0.jar

$SPARK_HOME/bin/spark-submit --class $CLASS_NAME  --driver-class-path $EXTRA_CLASSPATH  --conf spark.ui.killEnabled=true $JAR_NAME $MASTER level_shift.properties
