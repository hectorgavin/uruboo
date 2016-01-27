package com.uruboo.web

class HomeController {

    def index() {
        List activeTasks = [
            [
                title: 'Comprar entradas para el teatro',
                description: 'Quiere ver el Rey Leon la semana que viene con Dora'
            ],
            [
                title: 'Comprar entradas para el teatro',
                description: 'Quiere ver el Rey Leon la semana que viene con Dora'
            ],
            [
                title: 'Comprar entradas para el teatro',
                description: 'Quiere ver el Rey Leon la semana que viene con Dora'
            ],
            [
                title: 'Comprar entradas para el teatro',
                description: 'Quiere ver el Rey Leon la semana que viene con Dora'
            ]
        ]
        render(view: '/index', model: [
            activeTasks: activeTasks
        ])
    }
}
