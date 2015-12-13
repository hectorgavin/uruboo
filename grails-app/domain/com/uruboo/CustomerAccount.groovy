package com.uruboo

class CustomerAccount {

    String host
    String username
    String password
    Date dateCreated
    Date lastUpdated

    static belongsTo = [customer: Customer]
    static constraints = {
        host nullable: false, blank: false
        username nullable: true
        password nullable: true
    }

    String toString() {
        return host
    }
}
