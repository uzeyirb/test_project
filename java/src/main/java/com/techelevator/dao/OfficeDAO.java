package com.techelevator.dao;

import com.techelevator.model.Office;

import java.util.List;

public interface OfficeDAO {
    List<Office> list();
    Office get(Long officeId);
}
