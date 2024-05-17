from pyspark.sql import SparkSession
spark = SparkSession.builder \
    .appName("Distinct and DropDuplicates") \
    .getOrCreate()

data = [("Manvi", 22, "Jaipur"),
        ("Sakshi", 23, "Mumbai"),
        ("Ishita", 30, "Pune"),
        ("Rishika", 35, "Surat"),
        ("Sakshi", 25, "Mumbai")]
df = spark.createDataFrame(data, ["name", "age", "city"])
print("Original DataFrame:")
df.show()

# distinct()
print("Distinct rows:")
distinct_df = df.distinct()
distinct_df.show()

# dropDuplicates()
print("DataFrame after dropping duplicates (considering name and age columns):")
deduplicated_df = df.dropDuplicates(["name", "age"])
deduplicated_df.show()

