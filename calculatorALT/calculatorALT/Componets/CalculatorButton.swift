//
//  CalculatorButton.swift
//  calculatorALT
//
//  Created by csuftitan on 3/20/23.
//

extension ContentView {
    struct CalculatorButton: View {
        
        let buttonType: ButtonType
        
        var body: some View {
            Button(buttonType.description) { }
                .buttonStyle(CalculatorButtonStyle(
                    size: 80, // <- We'll calculate in the next step
                    backgroundColor: buttonType.backgroundColor,
                    foregroundColor: buttonType.foregroundColor)
                )
        }
    }
}
