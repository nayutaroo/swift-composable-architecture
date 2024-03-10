import ComposableArchitecture
import SwiftUI

@Reducer
struct NewsList {
    @ObservableState
    struct State: Equatable {
        let newsList: [News] = [
            .init(id: UUID().uuidString, title: "news 1"),
            .init(id: UUID().uuidString, title: "news 2")
        ]
    }

}

struct News: Equatable, Identifiable {
    let id: String
    let title: String
}

struct NewsListView: View {
    let store: StoreOf<NewsList>

    var body: some View {
        VStack {
            Text("<For Each>")
            ForEach(store.newsList) { news in
                Text(news.title)
            }

            Divider()

            Text("<List>")
            List(store.newsList) { news in
                Text(news.title)
            }
        }
    }
}

#Preview {
    NavigationStack {
        NewsListView(
            store: Store(initialState: NewsList.State()) {
                NewsList()
            }
        )
    }
}
