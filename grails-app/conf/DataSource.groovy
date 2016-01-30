dataSource {
    dbCreate = "none"
    pooled = true
    driverClassName = "com.mysql.jdbc.Driver"
    dialect = org.hibernate.dialect.MySQL5InnoDBDialect
    properties {
        minEvictableIdleTimeMillis = 1800000
        timeBetweenEvictionRunsMillis = 1800000
        numTestsPerEvictionRun = 3
        testOnBorrow = true
        testWhileIdle = true
        testOnReturn = true
        validationQuery = "SELECT 1"
    }
    //logSql = true
}

hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
}

// environment specific settings
environments {
    development {
        dataSource {
            url = "jdbc:mysql://localhost:3306/uruboo?characterEncoding=UTF-8&rewriteBatchedStatements=true"
            username = "root"
            password = "root"
            dbCreate = "none"
            dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
            driverClassName = "com.mysql.jdbc.Driver"
        }
    }
    production {
        dataSource {
            String host = System.getenv('OPENSHIFT_MYSQL_DB_HOST')
            String port = System.getenv('OPENSHIFT_MYSQL_DB_PORT')
            String dbName = System.getenv('OPENSHIFT_APP_NAME')
            url = "jdbc:mysql://$host:$port/$dbName"
            username = System.getenv('OPENSHIFT_MYSQL_DB_USERNAME')
            password = System.getenv('OPENSHIFT_MYSQL_DB_PASSWORD')
            dbCreate = "none"
            dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
            driverClassName = "com.mysql.jdbc.Driver"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:h2:mem:testDb;MVCC=TRUE;LOCK_TIMEOUT=10000;DB_CLOSE_ON_EXIT=FALSE"
        }
    }
}
