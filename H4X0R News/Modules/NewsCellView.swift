//
//  NewsCellView.swift
//  H4X0R News
//
//  Created by Oğuz Karatoruk on 16.06.2022.
//

import SwiftUI

struct NewsCellView: View {
    var post: Post
    var body: some View {
        HStack {
            NewsPointView(point: post.points)
            Divider()
            Text(post.title)
                .font(.system(size: 12, design: .monospaced))
            Spacer()
        }
    }
}

struct NewsCellView_Previews: PreviewProvider {
    static var previews: some View {
        NewsCellView(post: Post(points: 999, title: "News Detail", url: nil, objectID: "999"))
            .padding()
            .previewLayout(.fixed(width: 375, height: 50))
            .previewDisplayName("NewsCellView")
    }
}
