import Foundation
import RegexBuilder

/// The RegexConstructor class is responsible for creating different Regex calls
@available(macOS 13.0, iOS 16.0, *)
public class RegexConstructor {
    
    /// Creates a valid Regex to perform *.matches(of: Regex)* method for html strings
    /// - Parameters:
    ///     - tag: The *HTML tag* to represent the tag name .
    public func generateRegex(tag: HTMLTag) -> Regex<(Substring, Substring)> {
        Regex {
            OneOrMore {
                Capture {
                    Regex {
                        "<\(tag.rawValue)>"
                        ZeroOrMore(.reluctant) {
                            /./
                        }
                        "</\(tag.rawValue)>"
                    }
                }
            }
        }
    }
}
