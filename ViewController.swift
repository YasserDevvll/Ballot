//
//  ViewController.swift
//  baloot
//
//  Created by mac on 30‏/1‏/2018.
//  Copyright © 2018 baloot. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate  {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var textfield2: UITextField!
    @IBOutlet weak var label2: UILabel!
    let num = 152
    let zero = 0
    var listnumbers1 : [String] = []
    var listnumbers2 : [String] = []
    var trueorfulse : Bool = true
    @IBOutlet weak var viewnumbers: UITableView!
    
    
    /////////////////////////////////////// for view table
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        
        return listnumbers1.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = viewnumbers.dequeueReusableCell(withIdentifier: "cell") as! cell
       
        
        cell.LNA.text = listnumbers1[indexPath.row]
        cell.LHM.text = listnumbers2[indexPath.row]
       
        cell.backgroundColor = .clear
       
       
        
        
        return cell
    }
    
    
    ////////////////////////////////////////////////////
    
    @IBAction func button(_ sender: Any) {
       
        let number = Int(label.text!)
        var number2 = Int(textfield.text!)
        let number3 = Int(label2.text!)
        var number4 = Int(textfield2.text!)
        self.view.endEditing(true)
        
         if textfield.text! == "" && textfield2.text! == "" {
            number2 = zero
            number4 = zero
        
        let alert2 = UIAlertController(title:"wrong!", message: "دخل قيمة صحيحة" , preferredStyle: .alert)
            alert2.addAction(UIAlertAction(title:"ok", style: .destructive ,  handler : { (action) -> Void in
                
            } ) )
       
            present(alert2, animated: true)
         }
        else if textfield.text! == "" {
            number2 = zero
            textfield.text = String(zero)
           
         }
         else if textfield2.text! == "" {
            number4 = zero
            textfield2.text = String(zero)
          
         }
          if number2! >= 0 || number4! >= 0 {
        label.text = String( number! + number2! )
        label2.text = String( number3! + number4!)
        addnumber()
        }
       
      
        if Int(label.text!)! >= num || Int(label2.text!)! >= num {
            if Int(label2.text!)! == Int(label.text!)! {
                
                
            }
            if Int(label.text!)! > Int(label2.text!)! {
              
              alertfunc(trueorfulse: true)
            }
            else if Int(label2.text!)! > Int(label.text!)!
            {
               alertfunc(trueorfulse: false)
                
                
            }
           
            
        }
        
       
            remove()
            fortextfeild()
            
        }
       
  
    

    
    @IBAction func rest(_ sender: Any) {
        
        let alert = UIAlertController (title: "صكة جديدة ؟" , message: "بنصفر النشرة ترا !" , preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "متأكد", style: .default, handler: { _ in
            self.label.text = String(self.zero)
            self.label2.text = String(self.zero)
            self.listnumbers1.removeAll()
            self.listnumbers2.removeAll()
            self.viewnumbers.reloadData() } ) )
        alert.addAction(UIAlertAction(title: "الغاء" , style:.destructive , handler : { (action) -> Void in } ) )
        
        present(alert, animated: true)
        
        
    }
    
    func addnumber() {
        listnumbers1.append(textfield.text!)
        listnumbers2.append(textfield2.text!)
        viewnumbers.reloadData()
      
    }
    
    
    
    
    func forreload () {
        viewnumbers.reloadData()
    }
    
    func remove() {
        if textfield.text == "" && textfield2.text == "" {
            listnumbers1.removeLast()
            listnumbers2.removeLast()
            viewnumbers.reloadData()
           
        }
    }
  
      @IBAction func backbutton(_ sender: Any) {
      
        if  Int(label.text!)! <= 0 || Int(label2.text!)! <= 0
        {
            label.text = String(zero)
            label2.text = String(zero)
            listnumbers1.removeAll()
            listnumbers2.removeAll()
        }
        else if Int(label.text!)! >= 0 && Int(label2.text!)! >= 0
        {
            
            label.text = String(Int(label.text!)! - Int(listnumbers1.last!)!)
           label2.text = String(Int(label2.text!)! - Int(listnumbers2.last!)!)
            listnumbers1.removeLast()
            listnumbers2.removeLast()
            
            
        }
        if  Int(label.text!)! <= 0 || Int(label2.text!)! <= 0
        {
            label.text = String(zero)
            label2.text = String(zero)
            listnumbers1.removeAll()
            listnumbers2.removeAll()
        }
        viewnumbers.reloadData()
     
        
    }
  
    
    func fortextfeild() {
        textfield.text = ""
        textfield2.text = ""
    }
    
    func alertfunc(trueorfulse : Bool) {
        if trueorfulse == true {
            
            let alert = UIAlertController (title: " مبروووك ياقوي ! " , message: "" , preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "صكة جديده", style: .default, handler: { _ in
                self.label.text = String(self.zero)
                self.label2.text = String(self.zero)
                self.listnumbers1.removeAll()
                self.listnumbers2.removeAll()
                self.viewnumbers.reloadData()
              
            } )
                
            )
            alert.addAction(UIAlertAction(title: "الغاء" , style:.destructive , handler : { (action) -> Void in } ) )
            
            present(alert, animated: true)
            
            
            
        }
        if trueorfulse == false {
            
            
            let alert = UIAlertController (title: " قم ياسبك " , message: "" , preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "صكة جديده", style: .default, handler: { _ in
                self.label.text = String(self.zero)
                self.label2.text = String(self.zero)
                self.listnumbers1.removeAll()
                self.listnumbers2.removeAll()
                self.viewnumbers.reloadData()
                
            } )
            )
            alert.addAction(UIAlertAction(title: "الغاء" , style:.destructive , handler : { (action) -> Void in } ) )
            
            present(alert, animated: true)
        }
        
    }


    override func viewDidLoad() {
        super.viewDidLoad()
      viewnumbers.delegate = self
      viewnumbers.dataSource = self
      assignbackground()
     tableveiwbackground()
      labelbackground()
        
        
        
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
     self.view.endEditing(true)
    }
    
   
    
    
    func assignbackground(){
        let background = UIImage(named: "background")
        
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode = UIViewContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubview(toBack: imageView)
    }


   func tableveiwbackground() {
    
    let backgroundImage = UIImage(named: "lists")
    let imageView = UIImageView(image: backgroundImage)
    self.viewnumbers.backgroundView = imageView
    imageView.contentMode = .scaleAspectFill
    self.viewnumbers.layer.cornerRadius = 10
    self.viewnumbers.layer.masksToBounds = true


    }
    
    func labelbackground() {
      label.backgroundColor = UIColor(red:0.76, green:0.76, blue:0.76, alpha:1.0)
        self.label.layer.cornerRadius = 10
        self.label.layer.masksToBounds = true
        label2.backgroundColor = UIColor(red:0.76, green:0.76, blue:0.76, alpha:1.0)
        self.label2.layer.cornerRadius = 10
        self.label2.layer.masksToBounds = true
       
    
    }
    
   
   
    
    
    
    
    
    
    
    
}
