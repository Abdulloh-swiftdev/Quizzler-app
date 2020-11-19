//
//  Question Bank.swift
//  Quizzler
//
//  Created by Abdulloh Bahromjonov on 3/27/20.
//  Copyright © 2020 London App Brewery. All rights reserved.
//

import Foundation

class QuestionBank{
     
    var myArray = [Question]()
    
    init(){
        
        let item = Question(question: "The Iron man movie was the first film for MARVEL STUDIO", answer: true)
        
        myArray.append(item)
               
        myArray.append(Question(question: "MARVEL STUDIO was founded on Ultimate Univers from comices", answer: true))
        myArray.append(Question(question: "Robert Dawni JR was the  first candidate for iron mans role", answer: false))
        myArray.append(Question(question: "MARVEL STUDIO was bought by DISNEY", answer: true))
        myArray.append(Question(question: "Role of Nick Fury was for Will Smith", answer: false))
        myArray.append(Question(question: "The rights for Spider man was by MARVEL STUDIO", answer: false))
        myArray.append(Question(question: "In Avangers Endgame Thor sacrificed himself to defate Thanos", answer: false))
        myArray.append(Question(question: "In Avengers Endgame Thanos defated Avengers", answer: false))
        myArray.append(Question(question: "The other name of Avengers is The mightes heroes on the world", answer: true))
        myArray.append(Question(question: "Capitain America is the first Avenger", answer: true))
        myArray.append(Question(question: "In film Capitain Marves Scruls was antagonist", answer: false))
        
    }
    
}
   
