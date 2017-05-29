//
//  ViewController.swift
//  claculadoraTaller
//
//  Created by valdez on 23/05/17.
//  Copyright © 2017 Nelson Peña. All rights reserved.
//

import UIKit

enum modos{
    case nada
    case adicion
    case subtrasccion
}

class ViewController: UIViewController {

    @IBOutlet weak var labelResult: UILabel!
    
    var labelString:String = "0"
    var modoGeneral:modos = .nada
    var numeroGuardo:Int = 0
    var lastButtoWasMode:Bool = false
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func precionMas(_ sender: Any) {
    }

    @IBAction func precionMenos(_ sender: Any) {
    }
    @IBAction func precionIgual(_ sender: Any) {
    }
    @IBAction func precionBorrar(_ sender: Any) {
    }
    @IBAction func precionNumero(_ sender: UIButton) {
        let stringValue:String? = sender.titleLabel?.text
     labelString  = labelString.appending(stringValue!)
        updateText()
    }
    func updateText()
    {
        guard let labelInt:Int = Int(labelString) else {
            return
        }
        labelResult.text = "\(labelInt)"
    }
    
    func changeMode(newMode:modos){
    
    }
}

