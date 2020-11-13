//
//  AddEditEmojiTableViewController.swift
//  EmojiDictionary
//
//  Created by MXC Swift  on 10/27/20.
//

import UIKit






class AddEditEmojiTableViewController: UITableViewController {
    

    
    @IBOutlet weak var symbolTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var usageTextField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    

    
    
    var emoji: Emoji?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        if let emoji = emoji {
            symbolTextField.text = emoji.symbol
            nameTextField.text = emoji.name
            descriptionTextField.text = emoji.description
            usageTextField.text = emoji.usage
        }
    
        updateSaveButtonState()
    }
    
    override func prepare(for unwindSegue: UIStoryboardSegue, sender:
    Any?) {
        super.prepare(for: unwindSegue, sender: sender)
    
        guard unwindSegue.identifier == "saveUnwind" else { return }
    
        let symbol = symbolTextField.text ?? ""
        let name = nameTextField.text ?? ""
        let description = descriptionTextField.text ?? ""
        let usage = usageTextField.text ?? ""
        emoji = Emoji(symbol: symbol, name: name, description:
        description, usage: usage)
    }
    
    
    func updateSaveButtonState() {
        let symbolText = symbolTextField.text ?? ""
        let nameText = nameTextField.text ?? ""
        let descriptionText = descriptionTextField.text ?? ""
        let usageText = usageTextField.text ?? ""
        saveButton.isEnabled = !symbolText.isEmpty && !nameText.isEmpty && !descriptionText.isEmpty && !usageText.isEmpty
    }
    
       @IBAction func textEditingChanged(_ sender: UITextField) {
        updateSaveButtonState()
    }
    
    
    
    // MARK: - Table view data source
 
    
    
    
    
    

    
    
    
    
    
    
}

