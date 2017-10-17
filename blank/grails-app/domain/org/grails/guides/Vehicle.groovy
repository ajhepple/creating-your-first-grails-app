package org.grails.guides

@SuppressWarnings('GrailsDomainResservedSqlKeywordName')
class Vehicle {

    Make make
    Model model
    String name
    Integer year

    static constraints = {
        year min: 1900
        name maxSize: 255
    }
}
