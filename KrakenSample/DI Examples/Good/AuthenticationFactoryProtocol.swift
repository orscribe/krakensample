
import Foundation

protocol AuthenticationFactoryProtocol {
    func create() -> AbstractAuthenticationProtocol
    func getKeys() -> (clientKey: String, endpoint: String)
}
