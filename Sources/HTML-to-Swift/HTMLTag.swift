import Foundation

/// Collection of HTML tags and categories according to: https://www.w3schools.com/tags/ref_byfunc.asp .
public enum HTMLTag: CaseIterable {
    
    // MARK: Basic
    /// HTML heading tag
    case h1, h2, h3, h4, h5, h6
    /// HTML paragraph tag
    case p
    /// HTML single line break tag
    case br
    
    // MARK: Formatting
    /// HTML bold text tag
    case b
    /// HTML italic text tag
    case i
    /// HTML strikeout text tag
    case s
    /// HTML underline text tag
    case u
    
    // MARK: Images
    /// HTML image tag
    case img
    
    // MARK: Links
    /// HTML hyperlink tag
    case a
    
    // MARK: Styles & Semantics
    /// HTML section in document tag
    case div, span, section
}
