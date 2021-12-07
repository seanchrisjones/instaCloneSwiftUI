//
//  FeedView.swift
//  InstagramSwiftUI
//
//  Created by Sean Jones on 12/7/21.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView {
            ForEach(0..<10
            ) { _ in
                FeedCell()
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}