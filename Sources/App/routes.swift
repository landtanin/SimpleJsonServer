import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "It works" example
    router.get { req in
        return "It works!"
    }
    
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world!"
    }

    router.get("api", "data") { req -> Person in
        return Person(
            name: "Bruce Wayne",
            job: "Owner of Wayne Enterprises",
            skills: [
                "Genius-level intellect",
                "Expert detective",
                "Master martial artist and hand-to-hand combatant",
                "Master of disguise",
                "Fluent in various languages"
            ]
        )
    }

}

final class Person: Codable {
    let name: String
    let job: String
    let skills: [String]
    
    init(name: String, job: String, skills: [String]) {
        self.name = name
        self.job = job
        self.skills = skills
    }
}

extension Person: Content {}
