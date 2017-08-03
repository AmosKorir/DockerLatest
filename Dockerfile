#comment 
#start frolm a base image
FROM ubuntu

RUN apt-get update  && apt-get upgrade && \ apt-get install openjdk-8-jre && \apt-get install openjdk-8-jdk && \apt-get install sbt
#craete working directory
RUN mkdir ussd /
 WORKDIR ussd/
#intalling framework


COPY .ussd/
RUN cd ussd/ $$ sbt run
