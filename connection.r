
library(rJava)
library(RJDBC)

options(java.parameters = '-Xmx8g')
# hadoop_jar_dirs <- c('/usr/lib/hadoop/lib',
#                      '/usr/lib/hadoop',
#                      '/usr/lib/hive/lib')
# clpath <- c()
# for (d in hadoop_jar_dirs) {
#   clpath <- c(clpath, list.files(d, pattern = 'jar', full.names = TRUE))
# }
# .jinit(classpath = clpath)
# .jaddClassPath(clpath)




hive_jdbc_jar <- 'C:/HiveJars/hive-jdbc-1.2.1000.2.5.5.5-2-standalone.jar'
hive_driver <- 'org.apache.hive.jdbc.HiveDriver'
hive_url <- "jdbc:hive2://<server>:<port>/;ssl=true;sslTrustStore=<gateway_path>;trustStorePassword=<Pass>?hive.server2.transport.mode=http;hive.server2.thrift.http.path=gateway/default/hive"
drv <- JDBC(hive_driver, hive_jdbc_jar)
conn <- dbConnect(drv, hive_url, user="123", password="456")
show_databases <- dbGetQuery(conn, "show databases")

show_databases
