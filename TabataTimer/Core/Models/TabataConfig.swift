//
//  TabataConfig.swift
//  TabataTimer
//
//  Created by Ivan Revchuk on 19.11.2025.
//

import Foundation

/// Configuration of a single tabata workout. // Конфигурация одной табата-тренировки.
struct TabataConfig: Equatable {
    let prepareSeconds: Int          // Time before the first work. // Время перед началом работы.
    let workSeconds: Int             // Duration of a work interval. // Длительность рабочего интервала.
    let restSeconds: Int             // Rest between work intervals. // Отдых между рабочими интервалами.
    let cyclesPerSet: Int            // Number of work+rest cycles in one set. // Количество циклов работа+отдых в одном сете.
    let setsCount: Int               // Number of sets. // Количество сетов.
    let restBetweenSetsSeconds: Int  // Rest between sets. // Отдых между сетами.
}
