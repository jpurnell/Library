import Classmate

public struct Media: Codable {
    public var title: String
    public var image: String
    public var description: String?
    public var links: [String: String]?
    
    public static func fixture(_ title: String = "Media Title", _ image: String = "", _ description: String = "Media Description", _ links: [String: String] = ["Amazon": "https://www.amazon.com/link", "Apple": "https://apple.com/music"]) -> Media {
        return Media(title: title, image: image, description: description, links: links)
    }
}

public struct ClassmateEntry: Codable {
    var classmate: Classmate
    var media: [Media]
    
    public static func fixture(_ classmate: Classmate = .fixture(), _ media: [Media] = [.fixture()]) -> ClassmateEntry {
        return ClassmateEntry(classmate: classmate, media: media)
    }
}

public struct Library: Codable {
    var entries: [ClassmateEntry]
    
    public static func fixtures(_ entries: [ClassmateEntry] = [.fixture()]) -> Library {
        return Library(entries: entries)
    }
}
