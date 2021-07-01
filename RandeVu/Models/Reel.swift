//
//  Reel.swift
//  RandeVu
//
//  Created by Chika Ohaya on 6/30/21.
//  Copyright © 2021 Ohaya. All rights reserved.
//

import Foundation
import SwiftUI
import AVKit

struct Reel: Identifiable {
    var id = UUID().uuidString
    var player: AVPlayer?
    var mediaFile: MediaFile
}
