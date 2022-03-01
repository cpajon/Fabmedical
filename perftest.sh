host="fabmedical-551166.mongo.cosmos.azure.com"
username="fabmedical-551166"
password="9MjGONpQTt6ZWehBHMU8hqGnBDI1xFkNupxqbbXPY13vghD7TlhX4ruDrw1ALFbV8AVidt5KK5lQhHmTgSwvCg=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
