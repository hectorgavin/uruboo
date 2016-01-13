package com.uruboo.enums

enum TaskState {
    OPEN,
    IN_PROGRESS,
    DONE

    public static TaskState findByName(String name) {
        return values().find { it.name().toLowerCase() == name.toLowerCase() }
    }
}
