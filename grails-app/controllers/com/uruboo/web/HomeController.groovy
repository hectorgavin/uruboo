package com.uruboo.web

class HomeController {

    def assistantService

    def index() {
        render(view: '/index', model: [
            currentAssistant: assistantService.currentAssistant,
            activeTasks: assistantService.activeTasks
        ])
    }
}
