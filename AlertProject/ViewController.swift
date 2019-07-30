//
//  ViewController.swift
//  AlertProject
//
//  Created by 星みちる on 2019/07/16.
//  Copyright © 2019 星みちる. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

//表示ボタンがクリックされたら
    //アラートの画面を作成する
    //選択肢を作成する
//    作成した選択肢をアラートの画面に登録する（追加）
//    作成したアラートの画面を実際に表示する
    
    @IBAction func didClickButton(_ sender: UIButton) {
        //アラートの画面を作成する
       let alert = UIAlertController(title: "タイトル", message: "選択して下さい", preferredStyle: .alert)
        
        //通常の選択肢を作成する
        let yesAction = UIAlertAction(title: "はい", style: .default) { (UIAlertAction) in
            print("はいが押されました")
        }
            //作成した通常の選択肢をアラート画面に追加
        alert.addAction(yesAction)
        
        //否定の選択肢を作成する
        let noAction = UIAlertAction(title: "いいえ", style: .destructive) { (UIAlertAction
            ) in
            print("いいえが押されました")
        }
        
        //作成した否定の選択肢をアラート画面に追加
        alert.addAction(noAction)
        //キャンセルの選択肢を作成する
        
        let cancelAction = UIAlertAction(title: "キャンセル", style: .cancel) { (UIAlertAction) in
            print("キャンセルしました")
        }
        
        //作成したキャンセルのアラートを画面に追加
        alert.addAction(cancelAction
        
        )
        //作成したアラートの画面を実際に表示する
        present(alert, animated: true, completion: nil)
        
        //present（表示する画面、アニメーションのするかのフラグ、画面表示後の処理）
    }
}

