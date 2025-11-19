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
/// Extra computed values derived from tabata configuration. // Дополнительные вычисляемые значения на основе конфигурации табаты.
extension TabataConfig {
    /// Total workuot duration in seconds. // Общая длительность тренировки в секундах
    var totalDurationSeconds: Int {
        
        let prepare = prepareSeconds  // One global prepare interval. // Один общий интервал подготовки.
        let totalWork = workSeconds * cyclesPerSet * setsCount  // Work time in all sets. // Время работы во всех сетах.
        
        // Rest inside sets: between work intervals, not after the last one in set.
        let restPerSetCount = max(cyclesPerSet - 1, 0)
        let totalRestInsideSets = restSeconds * restPerSetCount * setsCount
        
        // Rest between sets (no rest after the last set). // Отдых между сетами (нет отдыха после последнего сета).
        let restBeetweenSetsCount = max(setsCount - 1, 0)
        let totalRestBetweenSets = restBetweenSetsSeconds * restBeetweenSetsCount
        
        return prepare + totalWork + totalRestInsideSets + totalRestBetweenSets
    }
    /// Total number of intervals (without final "finished" screen). // Общее количество интервалов (без финального экрана "финиш").
    var totalIntervalsCount: Int {
        // One prepare interval. // Один интервал подготовки.
        let prepareIntervals = 1
        
        // Work intervals in all sets. // Рабочие интервалы во всех сетах.
        let workIntervals = cyclesPerSet * setsCount
        
        // Rest intervals inside sets (between works). // Интервалы отдыха внутри сетов (между работой).
        let restInsideSets = max(cyclesPerSet - 1, 0) * setsCount
        
        // Rest between sets. // Отдых между сетами.
        let restBetweenSets = max(setsCount - 1, 0)
        
        return prepareIntervals + workIntervals + restInsideSets + restBetweenSets
    }
}
