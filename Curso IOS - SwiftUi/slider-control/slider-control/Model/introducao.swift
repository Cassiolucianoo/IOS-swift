//
//  introducao.swift
//  slider-control
//
//  Created by cassio on 30/05/23.
//
import SwiftUI

struct Intro: Identifiable{
    var id = UUID().uuidString
    var titulo: String
    var subTitulo: String
    var descricao: String
    var imagem: String
    var cor: Color
    var offset: CGSize = .zero
}
