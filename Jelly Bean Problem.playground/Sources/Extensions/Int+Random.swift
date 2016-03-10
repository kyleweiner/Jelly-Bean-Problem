import Foundation

public extension Int {
    /// Returns a random integer from the `lower` limit to the `upper` limit.
    static func random(from lower: Int, to upper: Int) -> Int {
        return lower + Int(arc4random_uniform(UInt32(upper - lower + 1)))
    }
}