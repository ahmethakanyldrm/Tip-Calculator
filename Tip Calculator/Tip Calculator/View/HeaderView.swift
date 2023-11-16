//
//  HeaderView.swift
//  Tip Calculator
//
//  Created by AHMET HAKAN YILDIRIM on 16.11.2023.
//

import UIKit

class HeaderView: UIView {
    // MARK: - Properties

    private let topLabel: UILabel = {
        LabelFactory.build(text: nil, font: ThemeFont.bold(ofSize: 18))

    }()

    private let bottomLabel: UILabel = {
        LabelFactory.build(text: nil, font: ThemeFont.regular(ofSize: 16))
    }()

    private let topSpacerView = UIView()
    private let bottomSpacerView = UIView()

    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [topSpacerView, topLabel, bottomLabel, bottomSpacerView])
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.spacing = -4
        return stackView
    }()

    // MARK: - Initializers

    init() {
        super.init(frame: .zero)
        layout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Layout

    private func layout() {
        addSubview(stackView)
        stackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        topSpacerView.snp.makeConstraints { make in
            make.height.equalTo(bottomSpacerView.snp.height)
        }
    }
    
    func configure(topText: String, bottomText: String) {
        topLabel.text = topText
        bottomLabel.text = bottomText
    }
}
