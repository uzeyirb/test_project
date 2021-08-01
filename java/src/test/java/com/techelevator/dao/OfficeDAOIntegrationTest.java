package com.techelevator.dao;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;


public class OfficeDAOIntegrationTest extends DAOIntegrationTest{
    private JdbcOfficeDAO jdbcOfficeDAO;

    @Before

    public void setup(){
        DataSource dataSource = this.getDataSource();
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        jdbcOfficeDAO = new JdbcOfficeDAO(jdbcTemplate);
    }

    @Test
    public void emptyOffice(){
        Boolean officeEmpty = jdbcOfficeDAO.list().isEmpty();
        System.out.println("Hekkkiiii" + jdbcOfficeDAO.list());
        Assert.assertEquals(false, officeEmpty );
    }

}
