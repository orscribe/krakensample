//
//  ContentView.swift
//  KrakenSample
//
//  Created by wesley Mitchell on 8/11/21.
//

import SwiftUI
import Combine
import KrakenCommon
import KrakenCox

struct VehiclesView: View {
    
    @EnvironmentObject var krakenApp: KrakenApp
    @ObservedObject private(set) var viewModel: VehiclesViewModel
    
    init() {
        viewModel = VehiclesViewModel(repo: RepositoryFactory.create())
    }
    
    var body: some View {
        KrakenContainer {
            Divider()
            content
        }
    }
    
    private var content: AnyView {
        switch viewModel.vehicles {
            case .notRequested: return AnyView(notRequestedView)
            case .isLoading: return AnyView(loadingView())
            case let .loaded(vehicles): return AnyView(loadedView(vehicles))
            case let .failed(error): return AnyView(failedView(error))
        }
    }
    
}

struct ErrorView: View {
    let error: Error
    let retryAction: () -> Void
    
    var body: some View {
        VStack {
            Text("An Error Occured")
                .font(.title)
            Text(error.localizedDescription)
                .font(.callout)
                .multilineTextAlignment(.center)
                .padding(.bottom, 40).padding()
            Button(action: retryAction, label: { Text("Retry").bold() })
        }
    }
}

private extension VehiclesView {
    var notRequestedView: some View {
        Text("not loaded").onAppear(perform: self.viewModel.loadVehicles)
    }
    
    func loadingView() -> some View {
        Spinner(isAnimating: true, style: .large)
    }
    
    func loadedView(_ vehicles: [Vehicle]) -> some View {
        VehicleList(vehicles: vehicles)
    }
    
    func failedView(_ error: Error) -> some View {
        ErrorView(error: error, retryAction: {
            self.viewModel.loadVehicles()
        })
    }
}
