package bl;

import java.util.List;

import dao.HolidayDAO;

public class HolidayBL {

	
	public List getHolidayList(){
		
		List holidayList = null;
		
		HolidayDAO holidayDAO = new HolidayDAO();
		
		holidayList = holidayDAO.getHolidayList();
		
		return holidayList;
	}
	
}
