//
//  Constants.swift
//  CollectionViewSwiftUI
//
//  Created by Марк Михайлов on 15.08.2023.
//

import SwiftUI

// MARK: - Data

enum Constants {
    static let titleLabelBigCell = ["Summary", "Media", "Lessons", "Tattoo", "Art"]
    static let titleLabelSmallCell = ["Education", "Social", "Press", "Sport", "Music"]

    static let secondaryLabelBigCell = [
        "Summarize text from photos",
        "A new data transfer device has been released",
        "You've learned all the lessons?",
        "What kind of tattoo would you like to get?",
        "This artist conquered the whole world"
    ]

    static let secondaryLabelSmallCell = [
        "Check my knowledge of English",
        "Create an engaging post",
        "Newspapers will disappear soon",
        "The Slap World Championship is coming soon",
        "Scientists have discovered sounds that cause laughter"
    ]

    // MARK: - Colors

    static let colorsBigCell: [Color] = [.green, .red, .yellow, .purple, .red]
    static let colorsSmallCell: [Color] = [.orange, .blue, .gray, .brown, .cyan]
    static let backgroundColor = #colorLiteral(red: 0.1173536256, green: 0.1176725253, blue: 0.1229131892, alpha: 1)

    // MARK: - Symbols

    static let symbolsBigCell = [
        "camera",
        "homepod.and.homepodmini",
        "books.vertical.fill",
        "figure.arms.open",
        "photo.artframe"
    ]

    static let symbolsSmallCell = [
        "book.closed.fill",
        "ellipsis.message",
        "newspaper",
        "figure.disc.sports",
        "music.note"
    ]

    // MARK: - Layout

    static let gridItemLayout = [GridItem(.flexible())]

}
