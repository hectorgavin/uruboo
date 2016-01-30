package com.uruboo.web

import com.uruboo.Assistant

class AssistantService {
    static transactional = false

    def getCurrentAssistant() {
        return Assistant.get(1)
    }

    def getActiveTasks() {
        return currentAssistant.customers.collect {
            it.tasks
        }?.flatten()
    }
}
