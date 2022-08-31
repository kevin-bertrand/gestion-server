//
//  MonthRevenue.swift
//  
//
//  Created by Kevin Bertrand on 25/08/2022.
//

import Fluent
import Vapor

final class MonthRevenue: Model, Content {
    // Name of the table
    static let schema: String = "month_revenue"
    
    // Unique identifier
    @ID(key: .id)
    var id: UUID?
    
    // Fields
    @Field(key: "month")
    var month: Int
    
    @Field(key: "year")
    var year: Int
    
    @Field(key: "total_services")
    var totalServices: Double
    
    @Field(key: "total_materials")
    var totalMaterials: Double
    
    @Field(key: "total_divers")
    var totalDivers: Double
    
    @Field(key: "grand_total")
    var grandTotal: Double
    
    // Initialization functions
    init() {}
    
    init(id: UUID? = nil, month: Int, year: Int, totalServices: Double, totalMaterials: Double, totalDivers: Double, grandTotal: Double) {
        self.id = id
        self.month = month
        self.year = year
        self.totalServices = totalServices
        self.totalMaterials = totalMaterials
        self.totalDivers = totalDivers
        self.grandTotal = grandTotal
    }
}
