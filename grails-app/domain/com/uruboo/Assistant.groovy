package com.uruboo

class Assistant extends User {

    static hasMany = [customers: Customer]
    static constraints = {
    }

    String toString() {
        return email
    }
}
