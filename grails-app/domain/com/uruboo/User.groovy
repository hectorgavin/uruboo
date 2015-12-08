package com.uruboo

class User {

    String email
    String firstName
    String lastName
    Date dateCreated
    Date lastUpdated

    static constraints = {
        email nullable: false, blank: false
        firstName nullable: false, blank: false
        lastName nullable: true
    }
}
