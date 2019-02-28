package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CPTValues;
import model.CPTValuesDB;
import model.Review;
import model.ReviewDB;

/**
 * Servlet implementation class ConcertSearchResult
 */
@WebServlet("/ConcertSearchResult")
public class ConcertSearchResult extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConcertSearchResult() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        CPTValuesDB cptDB = new CPTValuesDB();
//        List<CPTValues> cpt = new ArrayList<CPTValues>();
//        ReviewDB reviewDB = new ReviewDB();
//        Review review = new Review();
//        
//		int performanceID = Integer.parseInt(request.getParameter("concertID"));
//		cpt.add(cptDB.getCPTData(performanceID));
//		
//		review = reviewDB.getReview(cpt.get(0).getC().getId());
//		
//		
//		request.setAttribute("cpt", cpt);
//		request.setAttribute("review", review);
		RequestDispatcher dispatcher = request.getRequestDispatcher("ConcertDetailsSelection");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
