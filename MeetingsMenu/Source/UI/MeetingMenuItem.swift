//
//  MeetingMenuItem.swift
//  MeetingsMenu
//
//  Created by Вячеслав Иванов on 21.11.2020.
//

import SwiftUI

class MeetingMenuItem: NSMenuItem {
    let meeting: Meeting
    
    init(index: Int, meeting: Meeting, keyEquivalent: String) {
        self.meeting = meeting
        
        super.init(title: "\(index). \(self.meeting.title)", action: #selector(onClick(_:)), keyEquivalent: keyEquivalent)
        self.target = self
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func onClick(_ sender: MeetingMenuItem) {
        meeting.open()
    }
}
