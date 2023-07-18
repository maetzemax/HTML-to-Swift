import Foundation

/// Responsible for converting *HTML* strings to Swift code
@available(macOS 13.0, iOS 16.0, *)
public class HTMLConverter {
    private lazy var regexConstructor = RegexConstructor()
    
    /// Based on the given *HTML* String the method will return a list of all matches.
    ///  Matches include the string of the tag line
    /// - Parameters:
    ///     - html: The String which holds the html
    public func getTags(html: String) -> [String] {
        var tags: [String] = []
        for tag in HTMLTag.allCases {
            let regex = regexConstructor.generateRegex(tag: tag)
            let currentTags = html.matches(of: regex)
            
            for index in 0..<currentTags.count {
                tags.append(String(currentTags[index].output.0))
                print(currentTags[index].output.0)
            }
        }
        
        return tags
    }
}
