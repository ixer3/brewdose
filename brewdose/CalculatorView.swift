
import SwiftUI

struct CalculatorView: View {

    @State private var coffeeWeight = ""
    @State private var selectedMethod = "Cold Brew"
    @State private var selectedRatio = 10

    let methods = ["Cold Brew", "V60", "French Press"]
    let ratios = [8, 10, 12, 15, 16]

    var waterAmount: Double {
        let input = coffeeWeight.replacingOccurrences(
            of: ",", with: "."
        )
        let weight = Double(input) ?? 0

        guard weight.isFinite && weight > 0 else {
            return 0
        }

        return weight * Double(selectedRatio)
    }

    var body: some View {
        Form {

            Section("Brewing Method") {
                Picker("Method", selection: $selectedMethod) {
                    ForEach(methods, id: \.self) { method in
                        Text(method).tag(method)
                    }
                }
            }

            Section("Coffee Weight") {
                TextField("Enter coffee weight (g)",
                          text: $coffeeWeight)
                    .keyboardType(.decimalPad)
            }

            Section("Brew Ratio") {
                Picker("Ratio", selection: $selectedRatio) {
                    ForEach(ratios, id: \.self) { ratio in
                        Text("1:\(ratio)").tag(ratio)
                    }
                }
            }

            Section("Your Result") {
                Text("Coffee: \(coffeeWeight) g")

                Text("Water: \(waterAmount, specifier: "%.0f") ml")

                Text("Ratio: 1:\(selectedRatio)")
            }
        }
        .navigationTitle("Brew Calculator")
    }
}

#Preview {
    NavigationStack {
        CalculatorView()
    }
}
