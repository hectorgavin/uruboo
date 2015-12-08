package com.uruboo

class Customer extends User {

    static hasOne = [assistant: Assistant]
    static hasMany = [tasks: Task]
    static constraints = {
        assistant nullable: true
    }

    String toString() {
        return email
    }
}
