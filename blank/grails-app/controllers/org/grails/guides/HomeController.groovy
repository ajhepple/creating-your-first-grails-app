package org.grails.guides

class HomeController {

    static defaultAction = "index"

    def index() {
        respond([name: session.name ?: 'User', vehicleTotal: Vehicle.count()])
    }

    def updateName(String name) {
        session.name = name.toLowerCase().capitalize()
    
        flash.message = 'Name has been updated'
    
        redirect action: 'index'
    }

}
