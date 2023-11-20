//
//  InstructionView.swift
//  fetch-ios-app
//
//  Created by Claire Lee on 11/18/23.
//

import SwiftUI

struct InstructionView: View {
    var instructions: String?

    var body: some View {
        HStack {
            Image(systemName: "book.circle.fill")
                .resizable()
                .frame(width: 20, height: 20)

            Text("Instructions:")
                .font(.headline)
                .bold()
        }

        if let instructionParagraphs = instructions?.components(separatedBy: "\n") {
            ForEach(0..<instructionParagraphs.count, id: \.self) { index in
                Text("Step \(index + 1): \(instructionParagraphs[index])")
            }
        }
    }
}

#Preview {
    InstructionView(instructions: "Mix the ingredients Bake in the oven")
}
