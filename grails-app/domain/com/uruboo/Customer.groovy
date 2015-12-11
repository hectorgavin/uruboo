package com.uruboo

class Customer extends User {

    static hasOne = [assistant: Assistant]
    static hasMany = [tasks: Task, accounts: CustomerAccount]
    static constraints = {
        assistant nullable: true
    }

    String toString() {
        return email
    }
}
