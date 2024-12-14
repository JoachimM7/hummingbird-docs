import Foundation
import PostgresNIO

struct TodoPostgresRepository: TodoRepository {
    let client: PostgresClient
    let logger: Logger

    /// Create todo.
    func create(title: String, order: Int?, urlPrefix: String) async throws -> Todo {
        .init(id: UUID(), title: "", url: "")
    }
    /// Get todo.
    func get(id: UUID) async throws -> Todo? { nil }
    /// List all todos
    func list() async throws -> [Todo] { [] }
    /// Update todo. Returns updated todo if successful
    func update(id: UUID, title: String?, order: Int?, completed: Bool?) async throws -> Todo? { nil }
    /// Delete todo. Returns true if successful
    func delete(id: UUID) async throws -> Bool { false }
    /// Delete all todos
    func deleteAll() async throws {}
}
