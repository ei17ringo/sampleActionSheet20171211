//
//  ViewController.swift
//  sampleActionSheet
//
//  Created by Eriko Ichinohe on 2018/01/15.
//  Copyright © 2018年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //Selectボタンが押された時発動
    @IBAction func tapSelect(_ sender: UIButton) {
    
        //アクションシート部品を作成
        let ASheet = UIAlertController(title: "どのアクティビティにする？", message: "今日のアクティビティ", preferredStyle: .actionSheet)
        
        //ボタン（アクティビティ１）を作成、追加
        ASheet.addAction(UIAlertAction(title: "ヨガ", style: .default, handler: {action in
            self.Activity(name: "ヨガ")
        }))
        
        //ボタン（アクティビティ２）を作成、追加
        ASheet.addAction(UIAlertAction(title: "バスケ", style: .default, handler:  {action in
            self.Activity(name: "バスケ")
        }))
        
        //削除ボタンを作成、追加
        ASheet.addAction(UIAlertAction(title: "ムエタイ", style: .destructive, handler: {action in
            self.Destructive()
        }))
        
        //キャンセルボタンを作成、追加
        ASheet.addAction(UIAlertAction(title: "今日はやめとく", style: .cancel, handler: {action in
            self.Cansel()
        }))
        
        //アクションシートを表示
        present(ASheet, animated: true, completion: nil)
        
    }
    
    //アクティビティボタンが押されたら起動する自作関数
    // Activity 関数名 プログラムをひとまとめにして呼べる名前
    // name 引数（ひきすう） 呼び出されたところで処理をするための情報をもらうときに使用する（共通のものでない、独自のものがおおい）
    // name:String 引数name はString型と型指定してる　引数は型指定が必要
    func Activity(name:String){
        myLabel.text = "\(name)、行こう！"
    }
    
    //TODO:Destructive関数を作って、ムエタイが押された時に呼び出すようにしてください（引数不要）ラベルに表示するメッセージは、なんでも可（ムエタイ、頑張ろ！等）
    func Destructive(){
        myLabel.text = "ムエタイ頑張ろ！"
    }
    
    //TODO:Cansel関数を作って、「今日はやめとく」が押された時呼び出してください
    //引数不要。ラベルに表示するメッセージは「明日は行こう！」とする
    func Cansel(){
        myLabel.text = "明日は行こう！"
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

