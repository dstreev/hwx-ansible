# export HS2_JDBC_URL="jdbc:hive2://..."
# export HS2_JDBC_URL_PRINCIPAL="hive/_HOST@xxx.LOCAL"

# Expecting to have a standard link for the needed spark libs.
# This is done per CDP deployment since it's not a part of the deployment package
alias spark-shell-dr='spark-shell --conf spark.sql.extensions=com.qubole.spark.hiveacid.HiveAcidAutoConvertExtension --conf spark.kryo.registrator=com.qubole.spark.hiveacid.util.HiveAcidKyroRegistrator --conf spark.sql.hive.hwc.execution.mode=spark --conf spark.sql.hive.hiveserver2.jdbc.url="${HS2_JDBC_URL}" --conf spark.sql.hive.hiveserver2.jdbc.url.principal=${HS2_JDBC_URL_PRINCIPAL} --jars /opt/cloudera/parcels/CDH/lib/hive_warehouse_connector/hive-warehouse-connector-assembly.jar'
alias spark-submit-dr='spark-submit --conf spark.sql.extensions=com.qubole.spark.hiveacid.HiveAcidAutoConvertExtension --conf spark.kryo.registrator=com.qubole.spark.hiveacid.util.HiveAcidKyroRegistrator --conf spark.sql.hive.hwc.execution.mode=spark --conf spark.sql.hive.hiveserver2.jdbc.url="${HS2_JDBC_URL}" --conf spark.sql.hive.hiveserver2.jdbc.url.principal=${HS2_JDBC_URL_PRINCIPAL} --jars /opt/cloudera/parcels/CDH/lib/hive_warehouse_connector/hive-warehouse-connector-assembly.jar'
alias pyspark-dr='pyspark --conf spark.sql.extensions=com.qubole.spark.hiveacid.HiveAcidAutoConvertExtension --conf spark.kryo.registrator=com.qubole.spark.hiveacid.util.HiveAcidKyroRegistrator --conf spark.sql.hive.hwc.execution.mode=spark --conf spark.sql.hive.hiveserver2.jdbc.url="${HS2_JDBC_URL}" --conf spark.sql.hive.hiveserver2.jdbc.url.principal=${HS2_JDBC_URL_PRINCIPAL} --jars /opt/cloudera/parcels/CDH/lib/hive_warehouse_connector/hwc_pyspark.zip'
