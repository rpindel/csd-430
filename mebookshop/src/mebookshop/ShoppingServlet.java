package mebookshop;
import java.util.Vector;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletResponse;
import mebookshop.Book;

@WebServlet("/eshop")
public class ShoppingServlet extends HttpServlet {
	public void init(ServletConfig conf) throws ServletException{
		super.init(conf);
	}

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doPost(req, res);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session = req.getSession(true);
		@SuppressWarnings("unchecked")
		Vector<Book> shoplist = 
			(Vector<Book>)session.getAttribute("mebookshop.cart");
		String do_this = req.getParameter("do_this");
		
		// If it is the first time, initialize the list of books, which in 
		// real life would be stored in a database on disk
		if (do_this == null) {
			Vector<String> blist = new Vector<String>();
			blist.addElement("Rudimentary Python.  Sara Slither  $29.99");
			blist.addElement("Java: Beyond the Beans.  B. Lackoffee  $49.99");
			blist.addElement("Dynatrace: Analysis and Seeing the Hidden Data.  Y. Nointeger  $34.99");
			blist.addElement("The Perfect Pancake.  F.L. Apjack  $19.99");
			blist.addElement("Fishy on Me: RMDBS for the Navy.  Tico.  $78.99");
			blist.addElement("Programming with Android 200.  Google Overloads  $17.99");
			blist.addElement("The Poopy Place: Sewage Nightmares.  P. Ewe Oswald  $10.42");
			session.setAttribute("mebookshop.list", blist);
			ServletContext sc = req.getSession().getServletContext();
			RequestDispatcher rd = sc.getRequestDispatcher("/");
			rd.forward(req, res);
		}
		else {
			
			// If it is not the first request, it can only be a checkout request
			// or a request to manipulate the list of books being ordered
			if (do_this.equals("checkout")) {
				float dollars = 0;
				int books = 0;
				for (Book aBook : shoplist) {
					float price = aBook.getPrice();
					int qty = aBook.getQuantity();
					dollars += price * qty;
					books += qty;
				}
			req.setAttribute("dollars", dollars+"");
			req.setAttribute("books", books+"");
			ServletContext sc = req.getSession().getServletContext();
			RequestDispatcher rd = sc.getRequestDispatcher("/Checkout.jsp");
			rd.forward(req, res);
			} // if (..checkout..
			// Not a checkout request - Manipulate the list of books
			else {
				if (do_this.equals("remove")) {
					String pos = req.getParameter("position");
					shoplist.removeElementAt(Integer.parseInt(pos.trim()));
				}
				else if (do_this.equals("add")) {
					boolean found = false;
					Book aBook = getBook(req);
					if (shoplist == null) {  // the shopping cart is empty
						shoplist = new Vector<Book>();
						shoplist.addElement(aBook);
					}
					else {  // update the #copies if the book is already there
						for (int i = 0; i < shoplist.size() && !found; i++) {
							Book b = (Book)shoplist.elementAt(i);
							if (b.getTitle().equals(aBook.getTitle())) {
								b.setQuantity(b.getQuantity() + aBook.getQuantity());
								shoplist.setElementAt(b, i);
								found = true;
							}
						}  // for (i..
						if (!found) {  // if it is a new book => Add it to the shoplist
							shoplist.addElement(aBook);
						}
					}  // if (shoplist == null) .. else ..
				}  // if (..add..
				
				// Save the updated list of books and return to the home page session
				session.setAttribute("mebookshop.cart", shoplist);
				ServletContext sc = getServletContext();
				RequestDispatcher rd = sc.getRequestDispatcher("/");
				rd.forward(req, res);
			}  // if (..checkout..else
		}  // if (do_this..
	}  // doPost

private Book getBook(HttpServletRequest req) {
	String myBook = req.getParameter("book");
	int n = myBook.indexOf('$');
	String title = myBook.substring(0, n);
	String price = myBook.substring(n+1);
	String qty = req.getParameter("qty");
	return new Book(title, Float.parseFloat(price), Integer.parseInt(qty));
}  // getBook
}
