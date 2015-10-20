package com.one.dao;

import com.one.models.Schedule;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by jared on 15. 1. 8..
 */
public interface ScheduleRepository extends JpaRepository<Schedule, Long> {
}