package com.src.Services;

import java.sql.SQLException;
import java.util.List;

import com.src.Model.CityActualModel;
import com.src.Model.CityModel;
import com.src.Model.ContactModel;
import com.src.Model.ReviewModel;
import com.src.Model.UserRegisterModel;

public interface DbInterface {
	public int RegisterUser(UserRegisterModel rm) throws SQLException, ClassNotFoundException;
	public int City(CityModel cm) throws SQLException, ClassNotFoundException;
	public int Contact(ContactModel cm) throws SQLException, ClassNotFoundException;
	public int City1(CityActualModel cm)throws SQLException,ClassNotFoundException;
	public List getCity();
	public List getPlaces(String place);
	public int review(ReviewModel rm) throws SQLException,ClassNotFoundException;
}
