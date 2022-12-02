import Classmate

public struct LoremIpsum: Codable {
   public static var text: String = """
Julia Boorstin was thirteen when her mother told her that, by the time she grew up, women could be just as powerful as men, “captains of industry, running the biggest companies!” A decade later, working at a top business publication and seeing the dearth of women in positions of leadership, Boorstin assumed her mom had been wrong. But over the following two decades as a TV reporter and creator of CNBC’s Disruptor 50 franchise, interviewing, and studying thousands of executives, she realized that a gender-equity utopia shouldn’t be a pipe dream. Yes, women faced massive social and institutional headwinds, and struggled with double standards and what psychologists call “pattern matching.” Yet those who thrived, Boorstin found, shared key commonalities that made them uniquely equipped to lead, grow businesses, and navigate crises. They were highly adaptive to change, deeply empathetic in their management style, and much more likely to integrate diverse points of view into their business strategies, filling voids that their male counterparts had overlooked for generations. By utilizing those strengths, they had invented new business models, disrupted industries, and made massive profits along the way.
    
    Now, in When Women Lead, Boorstin brings together the stories of over sixty of those female CEOs and leaders, and dozens of new studies. Her combination of narrative and research reveals how once-underestimated characteristics, from vulnerability and gratitude to divergent thinking, can be vital superpowers—and that anyone can work these approaches to their advantage. Featuring new interviews with Katrina Lake, Gwyneth Paltrow, Jenn Hyman, Whitney Wolfe Herd, Lena Waithe, Shivani Siroya, Julia Collins, and more, When Women Lead is a radical blueprint for the future of business, and our world at large.
"""
}

public struct Media: Codable {
    public var title: String
    public var image: String
    public var description: String?
    public var links: [String: String]?
    
    public static func fixture(_ title: String = "When Women Lead", _ image: String = "https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781982168216/when-women-lead-9781982168216_lg.jpg", _ description: String = LoremIpsum.text, _ links: [String: String] = ["Amazon": "https://www.amazon.com/exec/obidos/ASIN/1982168218?tag=simonsayscom", "Apple": "https://apple.com/music", "Barnes & Noble": "https://www.anrdoezrs.net/click-7567305-11819508?SID=simonsayscom&url=http://www.barnesandnoble.com/w/?ean=9781982168216", "BAM": "https://www.booksamillion.com/p/9781982168216", "Bookshop" : "https://bookshop.org/a/1688/9781982168216"]) -> Media {
        return Media(title: title, image: image, description: description, links: links)
    }
}

public struct ClassmateEntry: Codable {
    public var classmate: Classmate
    public var media: [Media]
    
    public static func fixture(_ classmate: Classmate = .fixture(), _ media: [Media] = [.fixture()]) -> ClassmateEntry {
        return ClassmateEntry(classmate: classmate, media: media)
    }
}

public struct Library: Codable {
    public var entries: [ClassmateEntry]
    
    public static func fixtures(_ entries: [ClassmateEntry] = [.fixture()]) -> Library {
        return Library(entries: entries)
    }
}
