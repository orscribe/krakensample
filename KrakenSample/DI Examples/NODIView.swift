//import SwiftUI
//import AuthenticationServices
//import FlakyCache
//
//struct NODIView: View {
//
//    var loginService: ASAuthorizationRequest
//
//    init() {
//        loginService = AuthenticationServices.ASAuthorizationRequest()
//        let privateKey = config.LoadKeyFromSomewhere()
//        let endPoint = config.LoadURLFromSomewhere()
//        loginService.configWithStuff(privateKey, endPoint)
//    }
//
//    var body: some View {
//        Text("Welcome to App.app")
//        Button("Log In", action: LogInClick)
//        VStack {
//            TextField(
//                "User name (email address)", text: $username
//            )
//            TextField(
//                "Password (must not be stupid)", text: $password
//            )
//            Button("Submit", action: AuthenticateAndStoreUser())}.hidden()
//    }
//
//    func LogInClick() { LoadAuthPopUp(loginService: ASAuthorizationRequest) }
//    func LoadAuthPopUp(loginService: ASAuthorizationRequest) { VStack.visible() }
//
//    func AuthenticateAndStoreUser() {
//        let req = loginService.makeRequest(uname: $username, pword: $password, callback: AuthResponse(response))
//    }
//
//    func AuthResponse(response: HTTPURLResponse) {
//        let cache = FlakyCache("bunch of settings")
//        cache.store(response: self.response.data).withSettings().willExpire().howAreYouFeeling()
//    }
//}
