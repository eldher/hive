


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

item,octubre,ingreso,egreso,fecha,required
,tangos girl,,-6.5,29,
,claro,,-22.3,30,
item,diciembre,ingreso,egreso,fecha,required
carro,gasolina,,-20.00,1,1
comida,pricesmart,,-136.00,1,1
regalo,el costo,,-40.57,1,0
fitness,proteina,,-75.00,2,1
comida,panaderia el dorado,,-9.00,2,0
comida,comida,,-4.75,5,1
regalo,regalo amigo,,-27.00,6,0
grooming,corte,,-10.10,6,1
regalo,zapatos ligia,,-93.00,6,0
carro,estacionamiento albrook,,-5.34,6,1
comida,comida,,-3.95,7,0
transporte,uber,,-6.23,7,0
carro,gasolina,,-20.00,7,1
ahorro,ahorro,,-40.00,7,0
carro,corredor,,-10.00,7,1
fitness,gatorade,,-1.25,7,0
remesa,remesa ligia,,-50.00,8,1
ahorro,ahorro,,-30.00,8,0
carro,lavado auto,,-7.00,9,0
ahorro,ahorro,,-30.00,9,0
comida,pricesmart,,-5.00,9,0
assets,doit center,,-23.00,9,0
comida,comida,,-6.75,10,0
tip,tip aeropuerto,,-5.00,10,0
comida,comida aeropuerto,,-17.50,10,0
comida,chicle aeropuerto,,-1.50,10,0
comida,agua aeropuerto,,-1.50,10,0
comida,almuerzo,,-3.50,11,0
diversion,wings,,-22.32,11,0
carro,corredor,,-8.00,11,0
carro,gasolina,,-20.00,12,1
comida,rey 12 octubre,,-47.53,12,0
diversion,fiesta scotiabank,,-35.00,14,0
comida,mcdonalds,,-15.00,15,0
comida,kfc,,-30.00,15,0
fitness,oca loca,,-12.00,15,0
comida,pricesmart,,-80.00,15,1
comida,segredos,,-20.00,17,1
deuda,cobrar a marian,38.77,,16,0
comida,kfc,27.00,,16,0
comida,mcdonalds,10.00,,16,0
comida,tangos,,-5.25,18,0
seguro,seguro tucson,,-430.00,19,0
carro,gasolina,,-20.00,21,1
fitness,everlast,,-21.29,21,0
assets,libro 50 law,,-9.00,21,0
fitness,arrocha,,-18.75,22,0
servicios,fenosa,,-21.33,22,1
remesa,remesa,,-50.00,22,1
ahorro,ahorro,,-40.00,22,0
deuda,marian,,-25.00,23,0
fitness,proteina,,-3.50,23,0
fitness,cardio,,-5.00,23,0
comida,comida la bagguette,,-2.75,23,0
regalo,samantha,,-74.23,23,0
regalo,juegos sam chuck cheese,,-23.00,23,0
servicios,cableonda,,-70.00,23,1
