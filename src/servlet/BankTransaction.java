package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Bank;

/**
 * Servlet implementation class BankTransaction
 */
@WebServlet("/BankTransaction")
public class BankTransaction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BankTransaction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter(); 
		boolean bankStatus;
		long cardNumber =0;
		int cardSec =0;
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String cardType = request.getParameter("cardType");
		String billingAddress = request.getParameter("billingAddress");
		String shippingAddress = request.getParameter("shippingAddress");
		String cardNumberTemp = request.getParameter("cardNumber");
		if(cardNumberTemp !=null) {
			cardNumber = Long.parseLong(cardNumberTemp);
			System.out.println("card Number is long at " + cardNumber);
		}
		String cardSecTemp = request.getParameter("sec");
		if(cardSecTemp !=null) {
			cardSec = Integer.parseInt(cardSecTemp);
		}	
		int transactionStatus = 0;
		try {
			if(cardNumber != 0 && cardSec != 0) {	
				Bank credit =new Bank(cardNumber);
				System.out.println("line74 " + credit.getCard().getCardHolderName());
				if( credit != null ) {
					if((credit.getCard().getCardType().equals(cardType))) {
						if(credit.getCard().getCVV() == cardSec) {
							transactionStatus = 1;
							System.out.println("Bank Confirmation");
						}else {
							failed(request,response,"Invalid CVV");
						}
						
					}else {
						failed(request,response, "Invalid Credit Card");
					}
				}else {
					failed(request,response, "Card Authentication Error");
				}
			}else {
				failed(request, response, "Invalid Credit Card");
			}
		} catch (Exception e) {
			System.out.println("Logic Issue");
			e.printStackTrace();
		}
		out.println(transactionStatus);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	private static void failed(HttpServletRequest request, HttpServletResponse response, String message) throws ServletException, IOException {

		System.out.println(message);
		RequestDispatcher dispatcher = request.getRequestDispatcher("CustomerTransaction.jsp");
		dispatcher.forward(request, response);
	}
}
