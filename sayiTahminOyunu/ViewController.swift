//
//  ViewController.swift
//  sayiTahminOyunu
//
//  Created by Saide Cekic on 24.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var txtSayi: UITextField!
    @IBOutlet weak var sayiImage: UIImageView!
    @IBOutlet weak var btnKaydet: UIButton!
    @IBOutlet weak var txtTahmin: UITextField!
    @IBOutlet weak var tahminImage: UIImageView!
    @IBOutlet weak var btnDene: UIButton!
    @IBOutlet weak var yildiz1: UIImageView!
    @IBOutlet weak var yildiz2: UIImageView!
    @IBOutlet weak var yildiz3: UIImageView!
    @IBOutlet weak var yildiz4: UIImageView!
    @IBOutlet weak var yildiz5: UIImageView!
    @IBOutlet weak var lblSonuc: UILabel!
    
    
    //ekrandaki 5 tane yıldızı dizi halinde tutar
    var yildizlar : [UIImageView] = [UIImageView]()
    //kullanıcının yapabileceği maksimum deneme sayısı
    let maxDenemeSayisi : Int = 5
    //kullanıcı kaç tane deneme yaptı
    var denemeSayisi : Int = 0
    // tahmin edilmesi gereken sayı
    var hedefSayi : Int = -1
    //oyun başarılı bir şekilde sona erirse burası true olacak
    var oyunBasarili : Bool = false
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        yildizlar = [yildiz1,yildiz2,yildiz3,yildiz4,yildiz5]
        sayiImage.isHidden = true
        tahminImage.isHidden = true
        btnDene.isEnabled = false
        txtSayi.isSecureTextEntry = true
        lblSonuc.text = ""
        
    }

    
    @IBAction func kaydetTapped(_ sender: UIButton) {
        sayiImage.isHidden = false
        if let t = Int(txtSayi.text!) {
            hedefSayi = t
            btnDene.isEnabled = true
            txtSayi.isEnabled = false
            btnKaydet.isEnabled = false
            sayiImage.image = UIImage(named: "onay")
            
        } else {
            
            sayiImage.image = UIImage(named: "hata")
        }
    }
    
    
    @IBAction func deneTapped(_ sender: Any) {
        if oyunBasarili == true || denemeSayisi > maxDenemeSayisi {
            return
        }if let girilenSayi = Int(txtSayi.text!){
            
        }else{
            
        }
    }
    
    
}

