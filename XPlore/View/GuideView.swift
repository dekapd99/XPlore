import SwiftUI

struct GuideView: View {
    //MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                HeaderComponent()
                
                Spacer(minLength: 10)
                
                Text("Get Started!")
                    .fontWeight(.black)
                    .font(.largeTitle)
                    .foregroundColor(Color.pink)
                     
                Text("Discover and pick the perfect destination for your romantic Honeymoon!")
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                
                Spacer(minLength: 10)
                
                VStack(alignment: .leading, spacing: 25) {
                    GuideComponent(
                        title: "Like",
                        subtitle: "Swipe Right",
                        description: "Do you like this Destination? Touch the screen and Swipe Right. It will be Saved to the Favourites",
                        icon: "hearts.circle"
                    )
                    
                    GuideComponent(
                        title: "Dismiss",
                        subtitle: "Swipe Left",
                        description: "Would you rather Skip this Place? Touch the screen and Swipe Left. You will no longer see it.",
                        icon: "xmark.circle"
                    )
                    
                    GuideComponent(
                        title: "Book",
                        subtitle: "Tap the Button",
                        description: "Our selection of Honeymoon resorts is perfect setting for you to embark your new life together.",
                        icon: "checkmark.square"
                    )
                }
                
                Spacer(minLength: 10)
                
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("Continue".uppercased())
                        .font(.headline)
                        .padding()
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .background(Capsule().fill(Color.pink))
                        .foregroundColor(Color.white)
                })
                .accentColor(Color.primary)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, 15)
            .padding(.bottom, 25)
            .padding(.horizontal, 25)
        }
    }
}

#Preview {
    GuideView()
}
