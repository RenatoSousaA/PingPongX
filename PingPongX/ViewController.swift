//
//  ViewController.swift
//  PingPongX
//
//  Created by Usuário Convidado on 08/08/19.
//  Copyright © 2019 FIAP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        print("Tela 1: viewDidLoad") //Está abrindo o APP
//    }
//
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//
//        print("Tela 1: viewDidAppear")  //Tela está totalmente carregada
//    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//
//        print("Tela 1: viewWillAppear") // A tela está prestes a aparecer
//    }
//
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//
//        print("Tela 1: viewWillDisappear") //Tela está fechando
//    }
//
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//
//        print("Tela 1: viewDidWillDisappear") //APP Fechou
//    }
    
    @IBOutlet weak var tfPlayer1: UITextField!
    @IBOutlet weak var tfPlayer2: UITextField! // BOTAO DIREITO > REFECTOR > RENAME
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true) //Esconde o teclado quando clica em qualquer parte da tela
//        print(tfPlayer1.text!)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? MatchViewController
        vc?.player1 = tfPlayer1.text ?? ""
        vc?.player2 = tfPlayer2.text ?? ""
    }

}

