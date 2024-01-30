import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            
            Spacer()
            
            CardView(xplore: xploreData[1])
            //FIXME: ADD PADDING TO THE CARD LATER ON.
                .padding()
            
            Spacer()
            
            FooterView()
        }
    }
}

#Preview {
    ContentView()
}
