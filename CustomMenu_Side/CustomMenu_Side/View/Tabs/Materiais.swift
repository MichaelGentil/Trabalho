//
//  Materiais.swift
//  CustomMenu_Side
//
//  Created by user on 22/06/23.
//

import SwiftUI


struct Inicio {
    let icone: Image
    let material: String
    let texto: String
}
    
    let InicioTexto: [Inicio] = [
        Inicio(icone: Image(systemName: "house"), material: "Início", texto: "Bem-vindo à Coleta Apple! Este será seu guia para realizar a separação dos materiais para a coleta seletiva.")
    ]




struct MaterialReciclavel {
    let icone: Image
    let material: String
    let texto: String
}

let materialReciclavelTexto: [MaterialReciclavel] = [
    MaterialReciclavel(icone: Image("papel"), material: "Papel/Papelão", texto: "Reciclável: jornais, revistas, caixas de papelão, folhas de caderno. Não reciclável: fotografias, guardanados, papéis sujos ou engordurados, papéis metalizados, parafinados e plastificados, papel carbono, papéis de fax, etiqueta adesiva, fita crepe."),
  
    MaterialReciclavel(icone: Image("plastico"), material: "Plástico", texto: "Reciclável: garrafas de refrigerante, copos e sacos plásticos, frascos de shampoo e detergente, embalagens de margarina e material de limpeza, canudos, canos e tubos. Não reciclável: cabo de panela, tomada, embalagens de alimentos."),
  
    MaterialReciclavel(icone: Image("metal"), material: "Metal", texto: "Reciclável: latas de aço, latas de alumínio, panelas, pregos, fios, arames, sucatas de automóveis. Não reciclável: pilhas, clips, grampos, esponjas de aço."),
  
    MaterialReciclavel(icone: Image("vidro"), material: "Vidro", texto: "Reciclável: garrafas, copos, potes, frascos, cacos. Não reciclável: espelhos, lâminas, porcelana, cerâmica, tubos de TV, vidro temperado, ampolas de remédio."),
    MaterialReciclavel(icone: Image("madeira"), material: "Madeira", texto: "Reciclável: Materiais feitos em madeira no geral."),
]

struct MaterialNaoReciclavel {
    let iconeN: Image
    let materialN: String
    let textoN: String
    
}

let materialNaoReciclavelTexto: [MaterialNaoReciclavel] = [
    MaterialNaoReciclavel(iconeN: Image("perigoso"), materialN: "Resíduos perigosos", textoN: "Não reciclável: pilhas, baterias, lampadas fluorescentes, pneus inservíveis, Embalagens de Agrotóxicos."),
    MaterialNaoReciclavel(iconeN: Image("hospitalar"), materialN: "Resíduos ambulatorios e de serviços de saúde", textoN: "Não reciclavel: seringas, ataduras, agulhas, algodão, gazes."),
    MaterialNaoReciclavel(iconeN: Image("organico"), materialN: "Resíduos orgânicos", textoN: "Não reciclavel: cascas de legumes, folhas, restos de comida, frutas, cascas de ovos."),
]


struct Sobre {
    let icone: Image
    let material: String
    let texto: String
}

let SobreTexto: [Sobre] = [
    Sobre(icone: Image(systemName: "info.circle"), material: "Sobre", texto: "O Aplicativo Coleta Apple foi desenvolvido pelos estudantes Davi Alves Macedo, Jadise Lane Silva dos Santos, Larissa dos Santos Holanda e Michael Gentil Alexandre do curso técnico integrado em informática - IFCE Campus Fortaleza. A ideia principal foi criar um aplicativo simples que pudesse ajudar os usuários a realizar a separação dos materiais para a coleta seletiva de maneira simples e prática, exibindo os tipos de materiais de forma clara e objetiva.")
]


func corDaLixeira(_ material: String) -> String {
    switch material {
   case "Início":
        return "Seja bem-vindo(a)!"
    case "Papel/Papelão":
        return "Lixeira azul"
    case "Plástico":
        return "Lixeira vermelha"
    case "Metal":
        return "Lixeira amarela"
    case "Vidro":
        return "Lixeira verde"
    case "Madeira":
        return "Lixeira preta"
    case "Resíduos perigosos":
        return "Lixeira laranja"
    case "Resíduos ambulatorios e de serviços de saúde":
        return "Lixeira branca"
    case "Resíduos orgânicos":
        return "Lixeira marrom"
    case "Sobre":
        return "Clique para mais informações!"
    default:
        return ""
    }
}

