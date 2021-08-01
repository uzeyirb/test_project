package com.techelevator.dao;

import com.techelevator.model.Office;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import java.util.ArrayList;
import java.util.List;

public class JdbcOfficeDAO implements OfficeDAO{

    private JdbcTemplate jdbcTemplate;
    public JdbcOfficeDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public JdbcOfficeDAO() {

    }


    @Override
    public List<Office> list() {
        List<Office> office = new ArrayList<>();
        String sql = "Select * From office;";
        SqlRowSet rows = jdbcTemplate.queryForRowSet(sql);
        while(rows.next()){
            office.add(mapRowToOffice(rows));
        }
        return office;
    }

    @Override
    public Office get(Long officeId) {
        Office office = null;
        String sql ="Select * From office";
        SqlRowSet rows = jdbcTemplate.queryForRowSet(sql, officeId);
        while(rows.next()){
            office = mapRowToOffice(rows);
        }
        return office;
    }


    private Office mapRowToOffice(SqlRowSet row){

        Office office = new Office();
        office.setOfficeId(row.getLong("office_Id"));
        office.setOfficeName(row.getString("office_Name"));
        office.setOfficeStreetAddress(row.getString("office_street_address"));
        office.setOfficeCity(row.getString("office_city"));
        office.setOfficeState(row.getString("office_state"));
        office.setOfficeZip(row.getLong("office_zip"));
        office.setOfficePhone(row.getString("office_phone"));
        office.setOfficeEmail(row.getString("office_email"));
        office.setOfficeHours(row.getString("office_hours"));
        office.setOfficeParking(row.getString("office_parking"));
        office.setAdditionalInfo(row.getString("office_additional_info"));
        //office.setImage_url(row.getString("image_url"));
        office.setOfficeUrl(row.getString("office_url"));
        return office;
    }
}
