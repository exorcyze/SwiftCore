//
//  Created by Mike Johnson, 2025
//


import SwiftUI

struct SettingActionRow: View {
    private let item: SettingItemModel
    private var action: ((SettingItemModel) -> ())?
    
    init( _ item: SettingItemModel, action: ((SettingItemModel) -> ())? ) {
        self.item = item
        self.action = action
    }
    
    var body: some View {
        Button {
            action?( item )
        } label: {
            // ensure that the sub-button inside the display row is borderless when
            // using it wrapped within an action to not get a double button
            SettingDisplayRow( item )
                .buttonStyle( .borderless )
        }
    }
}
