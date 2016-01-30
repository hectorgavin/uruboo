package com.uruboo

class User {

    String email
    String firstName
    String lastName
    String notes
    Date dateCreated
    Date lastUpdated

    static transients = ['fullName']

    static constraints = {
        email nullable: false, blank: false
        firstName nullable: false, blank: false
        lastName nullable: true
        notes nullable: true
    }

    static mapping = {
        notes type: 'text'
    }

    public String getFullName() {
        return firstName + ' ' + lastName
    }
}
