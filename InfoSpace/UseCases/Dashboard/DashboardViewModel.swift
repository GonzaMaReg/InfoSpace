//
//  DashboardViewModel.swift
//  InfoSpace
//
//  Created by GonzaloMR on 30/5/22.
//

import Foundation

typealias DashboardData = (Planets, APOD)

final class DashboardViewModel {
    
    private var dashboardData: DashboardData!
    private let dashboardItems: DashboardItems = [
        DashboardItem(title: "Mars rover images", assetImageName: "marsRover"),
        DashboardItem(title: "Astronomy picture of the day", assetImageName: "camera"),
        DashboardItem(title: "Asteroids near the Earth", assetImageName: "asteroid"),
        DashboardItem(title: "Space library", assetImageName: "library")]
    
    // MARK: - Planets methods
    
    init(dashboardData: DashboardData) {
        self.dashboardData = dashboardData
        sortPlanets()
    }
    
    func sortPlanets() {
        dashboardData.0.sort(by: { $0.id < $1.id })
    }
    
    func numberOfPlanets() -> Int {
        return dashboardData.0.count
    }
    
    func getPlanet(position: Int) -> Planet {
        return dashboardData.0[position]
    }
    
    // MARK: - DashboardItems methods
    
    func numberOfDashboardItems() -> Int {
        return dashboardItems.count
    }
    
    func getDashboardItem(position: Int) -> DashboardItem {
        return dashboardItems[position]
    }
    
    // MARK: - DashboardData methods
    
    func getApod() -> APOD {
        return dashboardData.1
    }
}
