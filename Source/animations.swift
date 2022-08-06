import Foundation
import SpringAnimation

class Animation {
    
    let preset = AnimationData.shared.preset.randomElement() ?? ""
    let curve = AnimationData.shared.preset.randomElement() ?? ""
    let force = round(Double.random(in: 0...2) * 100) / 100
    let duration = round(Double.random(in: 1...2) * 100) / 100
    let delay = round(Double.random(in: 0...1) * 100) / 100    
}
