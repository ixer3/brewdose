import SwiftUI
struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 25) {

                Text("☕ Brew Dose")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.brown)

                Text("Your Perfect Coffee, Every Time")
                    .foregroundColor(.gray)

                Spacer()

                NavigationLink("Brew Calculator") {
                    CalculatorView()
                }

                NavigationLink("Brew Timer") {
                    Text("Timer Screen")
                }

                NavigationLink("My Recipes") {
                    Text("Recipes Screen")
                }

                NavigationLink("Our Location") {
                    Text("Umm Al Quwain - Al Salmah")
                }

                Spacer()
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                Color(red: 0.97, green: 0.94, blue: 0.89)
            )
        }
    }
}

#Preview {
    ContentView()
}
