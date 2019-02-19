package servlet;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Performance;
import model.PerformanceDB;
import model.Venue;
import model.VenueDB;

/**
 * Servlet implementation class VenueAndConcertSearchQuery
 */
@WebServlet("/VenueAndConcertSearchQuery")
public class VenueAndConcertSearchQuery extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VenueAndConcertSearchQuery() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String venue = request.getParameter("venue");
		String date = request.getParameter("datepicker");
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        java.sql.Date parsed = null;
		try {
			parsed = (Date) format.parse(date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        java.sql.Date sql = new java.sql.Date(parsed.getTime());
		List<Performance> p = PerformanceDB.getPerformance(sql);
		List<Venue> v = VenueDB.getVenue(venue, sql);
        
	    
		System.out.println(p);
		System.out.println(v);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
