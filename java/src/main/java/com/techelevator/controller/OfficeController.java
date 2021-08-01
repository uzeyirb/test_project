package com.techelevator.controller;


import com.techelevator.dao.JdbcOfficeDAO;
import com.techelevator.dao.OfficeDAO;
import com.techelevator.model.Office;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RestController


public class OfficeController {

    private OfficeDAO officeDAO;

    public OfficeController() {
        this.officeDAO = new JdbcOfficeDAO();
    }

    @RequestMapping(path="/offices", method= RequestMethod.GET)
    public List<Office> list(){
        return officeDAO.list();
    }

    @RequestMapping(path = "/offices/{officeId}", method = RequestMethod.GET)
    public Office get(@PathVariable(name="officeId") Long officeId ){
        return officeDAO.get(officeId);
    }
}
