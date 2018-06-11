import UIKit

class ViewController: UIViewController {
    
    var numeros = [Int]()
    var ordenNumeros = [Int]()
    var tiempoRestante = 30
    var puntuacionFinal = 0
    var timer = Timer()
    
    @IBOutlet weak var finalScore: UILabel!
    @IBOutlet weak var nsTimer: UILabel!
    @IBOutlet weak var btnlblEmpezar: UIButton!
    @IBOutlet weak var btnLbl: UIButton!
    @IBOutlet weak var btnLbl2: UIButton!
    @IBOutlet weak var btnLbl3: UIButton!
    @IBOutlet weak var btnLbl4: UIButton!
    @IBOutlet weak var btnLbl5: UIButton!
    @IBOutlet weak var btnLbl6: UIButton!
    
    @IBAction func btn(_ sender: UIButton) {
        switch sender {
        case btnLbl:
                if btnLbl.currentTitle == String(ordenNumeros[0]) {
                    btnLbl.isHidden = true
                    ordenNumeros.remove(at: 0)
                    puntuacionFinal+=20
                    finalScore.text = ("\(puntuacionFinal)/120 puntos.")
                    
                    if ordenNumeros.isEmpty == true {
                        btnlblEmpezar.isHidden = false
                        finalScore.text = ("\(puntuacionFinal)/120 puntos.")
                        timer.invalidate()
                        alert(message: "¡Has ganado! Tu puntuación final es de \(String(puntuacionFinal))/120 puntos.")
                    }
                    
                } else {
                    alert(message: "El número \(sender.currentTitle!) no es el más pequeño.")
                    puntuacionFinal-=20
                    finalScore.text = ("\(puntuacionFinal)/120 puntos.")
                }
            
        case btnLbl2:
            if btnLbl2.currentTitle == String(ordenNumeros[0]) {
                btnLbl2.isHidden = true
                ordenNumeros.remove(at: 0)
                puntuacionFinal+=20
                finalScore.text = ("\(puntuacionFinal)/120 puntos.")
                
                if ordenNumeros.isEmpty == true{
                    btnlblEmpezar.isHidden = false
                    timer.invalidate()
                    finalScore.text = ("\(puntuacionFinal)/120 puntos.")
                    alert(message: "¡Has ganado! Tu puntuación final es de \(String(puntuacionFinal))/120 puntos.")
                }
            } else {
                alert(message: "El número \(sender.currentTitle!) no es el más pequeño.")
                puntuacionFinal-=20
                finalScore.text = ("\(puntuacionFinal)/120 puntos.")
            }
            
        case btnLbl3:
            if btnLbl3.currentTitle == String(ordenNumeros[0]) {
                btnLbl3.isHidden = true
                ordenNumeros.remove(at: 0)
                puntuacionFinal+=20
                finalScore.text = ("\(puntuacionFinal)/120 puntos.")
                
                if ordenNumeros.isEmpty == true {
                    btnlblEmpezar.isHidden = false
                    timer.invalidate()
                    finalScore.text = ("\(puntuacionFinal)/120 puntos.")
                    alert(message: "¡Has ganado! Tu puntuación final es de \(String(puntuacionFinal))/120 puntos.")
                }
            } else {
                alert(message: "El número \(sender.currentTitle!) no es el más pequeño.")
                puntuacionFinal-=20
                finalScore.text = ("\(puntuacionFinal)/120 puntos.")
            }
            
        case btnLbl4:
            if btnLbl4.currentTitle == String(ordenNumeros[0]) {
                btnLbl4.isHidden = true
                ordenNumeros.remove(at: 0)
                puntuacionFinal+=20
                finalScore.text = ("\(puntuacionFinal)/120 puntos.")
                
                if ordenNumeros.isEmpty == true {
                    btnlblEmpezar.isHidden = false
                    timer.invalidate()
                    finalScore.text = ("\(puntuacionFinal)/120 puntos.")
                    alert(message: "¡Has ganado! Tu puntuación final es de \(String(puntuacionFinal))/120 puntos.")
                }
            } else {
                alert(message: "El número \(sender.currentTitle!) no es el más pequeño.")
                puntuacionFinal-=20
                finalScore.text = ("\(puntuacionFinal)/120 puntos.")
            }
            
        case btnLbl5:
            if btnLbl5.currentTitle == String(ordenNumeros[0]) {
                btnLbl5.isHidden = true
                ordenNumeros.remove(at: 0)
                puntuacionFinal+=20
                finalScore.text = ("\(puntuacionFinal)/120 puntos.")
                
                if ordenNumeros.isEmpty == true  {
                    btnlblEmpezar.isHidden = false
                    timer.invalidate()
                    finalScore.text = ("\(puntuacionFinal)/120 puntos.")
                    alert(message: "¡Has ganado! Tu puntuación final es de \(String(puntuacionFinal))/120 puntos.")
                }
            } else {
                alert(message: "El número \(sender.currentTitle!) no es el más pequeño.")
                puntuacionFinal-=20
                finalScore.text = ("\(puntuacionFinal)/120 puntos.")
            }
            
        case btnLbl6:
            if btnLbl6.currentTitle == String(ordenNumeros[0]) {
                btnLbl6.isHidden = true
                ordenNumeros.remove(at: 0)
                puntuacionFinal+=20
                finalScore.text = ("\(puntuacionFinal)/120 puntos.")
                
                if ordenNumeros.isEmpty == true  {
                    btnlblEmpezar.isHidden = false
                    timer.invalidate()
                    finalScore.text = ("\(puntuacionFinal)/120 puntos.")
                    alert(message: "¡Has ganado! Tu puntuación final es de \(String(puntuacionFinal))/120 puntos.")
                }
            } else {
                alert(message: "El número \(sender.currentTitle!) no es el más pequeño.")
                puntuacionFinal-=20
                finalScore.text = ("\(puntuacionFinal)/120 puntos.")
            }
        case btnlblEmpezar:
            resetearJuego()
        default:
                print("No workerino.")
        }
    }
  
    func estructurarArray(){
        for _ in 0 ... 5 {
            let lowerValue = -100
            let upperValue = 100
            let result = Int(arc4random_uniform(UInt32(upperValue - lowerValue + 1))) + lowerValue
            numeros.append(result)
            ordenNumeros.append(result)
        }
    }
    
    func resetearJuego(){
        if ordenNumeros.isEmpty == true {
            numeros.removeAll()
            btnLbl.isHidden = false
            btnLbl2.isHidden = false
            btnLbl3.isHidden = false
            btnLbl4.isHidden = false
            btnLbl5.isHidden = false
            btnLbl6.isHidden = false
            puntuacionFinal = 0
            tiempoRestante = 30
            viewDidLoad()
        }
       
    }
    
    func alert(message: String, title: String = "") {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(OKAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    func action() {
        tiempoRestante-=1
        nsTimer.text = ("\(String(tiempoRestante))")
        
        if (tiempoRestante == 0) {
            timer.invalidate()
            alert(message: "Se acabó el tiempo, has perdido. Tu puntuación final es de \(String(puntuacionFinal))/120 puntos.")
            numeros.removeAll()
            ordenNumeros.removeAll()
            btnlblEmpezar.isHidden = false
            btnLbl.isHidden = true
            btnLbl2.isHidden = true
            btnLbl3.isHidden = true
            btnLbl4.isHidden = true
            btnLbl5.isHidden = true
            btnLbl6.isHidden = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnlblEmpezar.isHidden = true
        btnlblEmpezar.setTitle("Empezar de nuevo.", for: .normal)
        estructurarArray()
        btnLbl.setTitle(String(numeros[0]), for: .normal)
        btnLbl2.setTitle(String(numeros[1]), for: .normal)
        btnLbl3.setTitle(String(numeros[2]), for: .normal)
        btnLbl4.setTitle(String(numeros[3]), for: .normal)
        btnLbl5.setTitle(String(numeros[4]), for: .normal)
        btnLbl6.setTitle(String(numeros[5]), for: .normal)
        finalScore.text = ("\(puntuacionFinal)/120 puntos.")
        ordenNumeros = numeros.sorted()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action), userInfo: nil, repeats: true)
    }
}
