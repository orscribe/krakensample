//import SwiftUI
//
//struct DIView: View {
//    let auth: AbstractAuthenticationProtocol
//    let cache: SimpleCacheProtocol
//    
//    init(auth: AbstractAuthenticationProtocol, cache: SimpleCacheProtocol) {
//        self.auth = auth
//        self.cache = cache
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
//    func LogInClick() { LoadAuthPopUp() }
//    func LoadAuthPopUp() { VStack.visible() }
//    
//    func AuthenticateAndStoreUser() {
//        if let user = auth.authenticateUser(username: $username, password: $password) {
//            cache.store(key: "User", value: user)
//        } else {
//            ErrorView()
//        }
//    }
//}
