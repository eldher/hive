import jaydebeapi

user = "123"
pass = "456"

conn = jaydebeapi.connect('org.apache.hive.jdbc.HiveDriver',
"jdbc:hive2://<SERVER>:<PORT>/;ssl=true;sslTrustStore=<GATEWAY_PATH>;trustStorePassword=Test123?hive.server2.transport.mode=http;hive.server2.thrift.http.path=gateway/default/hive",[user,pass])


curs = conn.cursor()

#
#curs.execute("""select * From table where created_date = '2018-10-30' LIMIT 100""")
#for row in curs.fetchall():
#    print(row[2])


curs.execute("""SHOW TABLES""")
for row in curs.fetchall():
    print(row[0])


curs.close
conn.close
