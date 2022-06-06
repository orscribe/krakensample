
import Foundation

protocol SimpleCacheProtocol {
    func store(key: String, value: Any)
    func retrieve(key: String) -> Any
}
