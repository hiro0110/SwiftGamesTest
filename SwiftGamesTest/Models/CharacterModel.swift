//
//  CharacterModel.swift
//  SwiftGamesTest
//
//  Created by student on 2024/12/11.
//

import Foundation

struct CharacterModel {
    ///成長段階
    enum GrowState{
        ///幼少期
        case childhood
        ///成長期
        case growthperiod
        ///成熟期
        case maturity
    }
    ///現在の成長段階
    var currentGrowthState: GrowState
    ///現在の体力値
    var currentHitPoint: Int
    ///最大の体力値
    var maxHitPoint: Int
    ///現在の生活環境
    var livingEnviromant: Int
    ///現在の好感度
    var favorabilityRating: Int
    ///最後に餌をあげた日付
    var lastFeedDate: Int
    ///餌をあげた回数
    var last12HourFeedCount: Int
    ///成長係数
    var growthFactor: Int{
        favorabilityRating / 10
    }
    ///死亡測定日
    var dateOfDeath: Date
    ///既に死んでいるか
    var isDead: Bool {
        let timeInterval = Date().timeIntervalSince(dateOfDeath)
        return (0 <= timeInterval)
    }
    ///餌をあげる
    var isPassed: Bool = true
    if let lastFeedDate {
        let timeInterval = Date().timeIntervalSince(lastFeedDate)
        let time = Int(timeInterval)
        let hour = time / 3600 % 24
        isPassed = (12 < hour)
    }
}
 
