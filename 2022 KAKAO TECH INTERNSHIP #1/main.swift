//
//  main.swift
//  2022 KAKAO TECH INTERNSHIP #1
//
//  Created by 김병엽 on 2023/11/20.
//
// Reference: https://school.programmers.co.kr/learn/courses/30/lessons/118666

import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    
    var dic: [Character: Int] = [:]
    dic = ["R" : 0, "T" : 0, "C" : 0, "F" : 0, "J" : 0, "M" : 0, "A" : 0, "N" : 0]
    var answer: String = ""
    
    for (index, choice) in choices.enumerated() {
        
        let survey = survey[index].map { $0 }
        
        if choice >= 1 && choice <= 3 {
            dic[survey[0]]! += 4 - choice
        }
        else if choice >= 5 && choice <= 7 {
            dic[survey[1]]! += choice - 4
        }
        else {
            continue
        }
    }
    
    answer += dic["R"]! >= dic["T"]! ? "R" : "T"
    answer += dic["C"]! >= dic["F"]! ? "C" : "F"
    answer += dic["J"]! >= dic["M"]! ? "J" : "M"
    answer += dic["A"]! >= dic["N"]! ? "A" : "N"
    
    return answer
}

print(solution(["AN", "CF", "MJ", "RT", "NA"], [5, 3, 2, 7, 5]))
