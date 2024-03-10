import SwiftUI

struct AboutView: View {
  let readMe: String

  var body: some View {
    DisclosureGroup("About this case study") {
      Text(template: self.readMe)
    }
  }
}

#Preview {
    NavigationStack {
        AboutView(readMe: "abcdefghijklmnopqrstuvwxyz abcdefghijklmnopqrstuvwxyz  abcdefghijklmnopqrstuvwxyz abcdefghijklmnopqrstuvwxyz ")
    }
}
