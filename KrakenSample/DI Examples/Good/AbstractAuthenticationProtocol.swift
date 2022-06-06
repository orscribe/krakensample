
import Foundation

protocol AbstractAuthenticationProtocol {
    func authenticateUser(username: String, password: String) -> UserProtocol
    
    init(clientKey: String, endpoint: String)
}
