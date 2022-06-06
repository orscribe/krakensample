//
//  VehicleList.swift
//  KrakenSample
//
//  Created by wesley Mitchell on 8/11/21.
//

import SwiftUI
import KrakenCommon
import KrakenCox

public struct VehicleList: View {
    
    @EnvironmentObject var krakenApp: KrakenApp
    let vehicles: [Vehicle]

    public init(vehicles: [Vehicle]) {
        self.vehicles = vehicles
    }

    public var body: some View {
        List {
            ForEach(self.vehicles, id: \.self) { vehicle in
                VehicleRow(vehicle: vehicle)
                    .padding(.leading, 15)
                    .listRowInsets(EdgeInsets())
            }
        }
    }
}
