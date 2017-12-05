package ca.sheridancollege.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import ca.sheridancollege.beans.Customer;
import ca.sheridancollege.beans.Inventory;
import ca.sheridancollege.beans.Map;
import ca.sheridancollege.beans.MyUserDetailsService;
import ca.sheridancollege.beans.User;
import ca.sheridancollege.beans.UserRole;
import ca.sheridancollege.dao.DAO;

@Controller
public class HomeController
{

	private Customer customer = new Customer();
	private Inventory inventory = new Inventory();

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model)
	{
		return "home";
	}

	@RequestMapping(value = "/secure", method = RequestMethod.GET)
	public String secure(Model model)
	{
		return "secure";
	}

	@RequestMapping(value = "/createLayout", method = RequestMethod.GET)
	public String createLayout(Model model)
	{
		return "createLayout";
	}
	

	@RequestMapping(value = "/siteLayout", method = RequestMethod.GET)
	public String siteLayout(Model model)
	{
		return "siteLayout";
	}

	@RequestMapping(value = "/eventDetails", method = RequestMethod.GET)
	public String eventDetails(Model model)
	{
		DAO dao = new DAO();
		model.addAttribute("inventory", dao.getItemList());
		return "eventDetails";
	}

	@RequestMapping(value = "/manageLayouts", method = RequestMethod.GET)
	public String manageLayout(Model model)
	{
		return "manageLayouts";
	}

	@RequestMapping(value = "/guidelines", method = RequestMethod.GET)
	public String guidelines(Model model)
	{
		return "guidelines";
	}

	@RequestMapping(value = "/electrical", method = RequestMethod.GET)
	public String electrical(Model model)
	{
		return "electrical";
	}
	
	@RequestMapping(value = "/planEvent", method = RequestMethod.GET)
	public String planEvent(Model model)
	{
		return "planEvent";
	}
	
	@RequestMapping(value = "/calendar2", method = RequestMethod.GET)
	public String calendar2(Model model)
	{
		return "calendar2";
	}
	
	@RequestMapping(value = "/saveJSON" , method = RequestMethod.POST)
	public String saveJSON(@RequestParam ("json") String jsons) {

//		try {
//			FileWriter fileWriter = new FileWriter("data.json");
//			fileWriter.write(jsonString.toString());
//			fileWriter.flush();
//			fileWriter.close();
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		System.out.println(jsons);
		
		
	   return "calendar2";
	}
	
	@RequestMapping(value = "/approveSiteLayout", method = RequestMethod.GET)
	public String approveSiteLayout(Model model)
	{
		return "approveSiteLayout";
	}
	
	@RequestMapping(value = "/generateReports", method = RequestMethod.GET)
	public String generateReports(Model model)
	{
		return "generateReports";
	}

	@RequestMapping(value = "/createAccount", method = RequestMethod.GET)
	public String createAccount(Model model)
	{
		return "createAccount";
	}

	@RequestMapping(value = "/inventoryManagement", method = RequestMethod.GET)
	public String inventoryManagement(Model model)
	{
		return "inventoryManagement";
	}

	@RequestMapping(value = "/clientManagement", method = RequestMethod.GET)
	public String clientManagement(Model model)
	{
		return "clientManagement";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(Model model, @RequestParam String username, @RequestParam String password,
			@RequestParam String role)
	{

		String encryptedPassword = new BCryptPasswordEncoder().encode(password);
		User user = new User(username, encryptedPassword, true);

		UserRole userRole = new UserRole(user, role);
		user.getUserRole().add(userRole);

		DAO dao = new DAO();
		dao.createUser(user, userRole);

		UserDetails userDetails = new MyUserDetailsService().loadUserByUsername(username);
		UsernamePasswordAuthenticationToken auth = new UsernamePasswordAuthenticationToken(userDetails,
				encryptedPassword, userDetails.getAuthorities());
		SecurityContextHolder.getContext().setAuthentication(auth);

		model.addAttribute("accountCreated", true);
		return "home";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model)
	{
		return "loginForm";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutPage(HttpServletRequest request, HttpServletResponse response)
	{
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null)
		{
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "home";
	}

	@RequestMapping(value = "/accept", method = RequestMethod.GET)
	public String accept(Model model)
	{
		return "accept";
	}

	@RequestMapping(value = "/display", method = RequestMethod.GET)
	public String display(Model model)
	{
		DAO dao = new DAO();
		model.addAttribute("customerList", dao.getCustomerList());
		return "displayCustomer";
	}

	// was gettng a 403 favicon error after login in so I redirected it to go to
	// accept.jsp
	@RequestMapping(value = "/favicon.ico", method = RequestMethod.GET)
	public String favicon(Model model)
	{
		return "accept";
	}

	@RequestMapping(value = "/form", method = RequestMethod.GET)
	public String form(Model model)
	{
		model.addAttribute("customer", new Customer());
		return "form";
	}

	@RequestMapping(value = "/saveCustomer", method = RequestMethod.POST)
	public String saveCustomer(Model model, @ModelAttribute Customer customer)
	{
		DAO dao = new DAO();
		dao.saveCustomer(customer);
		model.addAttribute("studentList", dao.getCustomerList());
		return "saveCustomer";
	}

	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public String delete(Model model, @PathVariable int id)
	{
		DAO dao = new DAO();
		dao.deleteCustomer(id);

		List<Customer> customerList = null;
		customerList = dao.getCustomerList();
		model.addAttribute("customerList", customerList);
		return "deleteCustomer";
	}

	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public String edit(Model model, @PathVariable int id)
	{
		DAO dao = new DAO();
		Customer customer = new Customer();
		customer = dao.getByID(id);
		model.addAttribute("customer", customer);
		return "update";
	}

	@RequestMapping(value = "/modify/{id}", method = RequestMethod.POST) // change
																			// back
																			// to
																			// post
	public String modifyCustomer(Model model, @PathVariable int id, @ModelAttribute Customer customer)
	{
		DAO dao = new DAO();
		List<Customer> customerList = null;
		dao.saveCustomer(customer);
		customerList = dao.getCustomerList();
		model.addAttribute("customerList", customerList);

		return "modifyCustomer";
	}

	@RequestMapping(value = "/inventory", method = RequestMethod.GET)
	public String inventory(Model model)
	{

		return "displayAngular";
	}

	@RequestMapping(value = "/saveItem", method = RequestMethod.POST)
	public String saveItem(Model model, @ModelAttribute Inventory inventory)
	{
		DAO dao = new DAO();
		dao.saveItem(inventory);
		model.addAttribute("inventory", dao.getItemList());
		return "saveItem";
	}

	@RequestMapping(value = "/displayItem", method = RequestMethod.GET)
	public String displayItem(Model model)
	{
		DAO dao = new DAO();
		model.addAttribute("inventory", dao.getItemList());
		return "displayItem";
	}

	@RequestMapping(value = "/createItem", method = RequestMethod.GET)
	public String createItem(Model model)
	{
		model.addAttribute("inventory", new Inventory());
		return "createItem";
	}

	@RequestMapping(value = "/deleteItem/{id}", method = RequestMethod.GET)
	public String deleteItem(Model model, @PathVariable int id)
	{
		DAO dao = new DAO();
		dao.deleteInventory(id);

		List<Inventory> inventoryList = null;
		inventoryList = dao.getItemList();
		model.addAttribute("customerList", inventoryList);
		return "deleteItem";
	}

	@RequestMapping(value = "/editItem/{id}", method = RequestMethod.GET)
	public String editItem(Model model, @PathVariable int id)
	{
		DAO dao = new DAO();
		Inventory inventory = new Inventory();
		inventory = dao.getInventoryById(id);
		model.addAttribute("inventory", inventory);
		return "updateItem";
	}

	@RequestMapping(value = "/modifyItem/{id}", method = RequestMethod.POST) // change
																				// back
																				// to
																				// post
	public String modifyItem(Model model, @PathVariable int id, @ModelAttribute Inventory inventory)
	{
		DAO dao = new DAO();
		List<Inventory> inventoryList = null;
		dao.saveItem(inventory);
		inventoryList = dao.getItemList();
		model.addAttribute("inventoryList", inventoryList);

		return "modifyItem";
	}

	@RequestMapping(value="/saveLayout/", method=RequestMethod.POST, consumes={"application/json"})
	public String test(@RequestBody Map map)
	{
		
		return "Succes";
		
	}
}
