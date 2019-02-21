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
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import model.Concerts;

/**
 * Servlet implementation class UpdateShoppingCart
 */
@WebServlet("/UpdateShoppingCart")
public class UpdateShoppingCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateShoppingCart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/UpdateShoppingCart");
		if(!request.getParameter("selectedConcert").isEmpty()) {
			addToCart(request, response);
		}else if (!request.getParameter("deleteConcert").isEmpty()) {
			deleteFromCart(request, response);
		}
		loadConcerts(request, session); //load concerts variable to be used on front end
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	private void loadConcerts(HttpServletRequest request) {
		HttpSession session = request.getSession();
		ArrayList<ArrayList<String>> previousCartItems = (ArrayList<ArrayList<String>>)session.getAttribute("cart");
		ArrayList<Concerts> concerts = new ArrayList<Concerts>;
		for(int i = 0 ; i< previousCartItems.size();i++) {
			//iterate over the cart items to obtain the concert ID to pass over to the shopping cart page
			// perform db look up for concert object based on ID
			//concerts.add(previousCartItems.get(i).get(0));
		}
		request.setAttribute("concerts", concerts);
	}

	private void deleteFromCart(HttpServletRequest request) {
		HttpSession session = request.getSession();
		ArrayList<ArrayList<String>> previousCartItems = (ArrayList<ArrayList<String>>)session.getAttribute("cart");
		String selectedConcert = request.getParameter("concertID");

		for(int i = 0 ; i< previousCartItems.size();i++) {
			if(previousCartItems.get(i).contains(selectedConcert)) {
				previousCartItems.remove(i);
			}
		}
		session.setAttribute("cart", previousCartItems);
	}
	
	private void addToCart(HttpServletRequest request)
			throws ServletException, IOException {
		// CONCERTS ARE STORED IN CACHE IN THIS FORMAT
		// Cart is a 2D array
		// cart[x][y], y has a length of 3 (concertID, numberOfTickets, Ticket type)
		HttpSession session = request.getSession();
		String selectedConcert = request.getParameter("concertID");
		String numOfTickets = request.getParameter("ticketQuantity");
		String ticketType = request.getParameter("ticketType");
		ArrayList<String> temp = new ArrayList<String>();
		temp.add(selectedConcert);
		temp.add(numOfTickets);
		temp.add(ticketType);
		ArrayList<ArrayList<String>> previousCartItems = (ArrayList<ArrayList<String>>)session.getAttribute("cart");
		if (previousCartItems.isEmpty()) {
			previousCartItems = new ArrayList<ArrayList<String>>();
			previousCartItems.add(temp);
			session.setAttribute("cart", temp);
		}else {
			previousCartItems.add(temp);
			session.setAttribute("cart", previousCartItems);
		}
	}

}
