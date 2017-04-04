package ca.sheridancollege.controllers;

import java.util.List;

import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ca.sheridancollege.beans.MyUserDetailsService;
import ca.sheridancollege.beans.User;
import ca.sheridancollege.beans.UserRole;
import ca.sheridancollege.beans.Wiki;
import ca.sheridancollege.dao.DAO;

@Controller
public class HomeController
{
	private DAO dao = new DAO();
	private Wiki wiki = new Wiki();

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model)
	{
		return "index";
	}
	@RequestMapping(value = "home", method = RequestMethod.GET)
	public String homeURL(Model model)
	{
		return "index";
	}

	@RequestMapping(value = "/secure", method = RequestMethod.GET)
	public String secure(Model model)
	{
		return "secure";
	}

	@RequestMapping(value = "/createAccount", method = RequestMethod.GET)
	public String createAccount(Model model)
	{
		return "createAccount";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(Model model, @RequestParam String username, @RequestParam String password)
	{

		String encryptedPassword = new BCryptPasswordEncoder().encode(password);
		User user = new User(username, encryptedPassword, true);

		UserRole userRole = new UserRole(user, "ROLE_USER");
		user.getUserRole().add(userRole);

		DAO dao = new DAO();
		dao.createUser(user);

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

	@RequestMapping(value = "/form", method = RequestMethod.GET)
	public String form(Model model)
	{
		model.addAttribute("wiki", new Wiki());
		return "form";
	}

	@RequestMapping(value = "/saveWiki", method = RequestMethod.POST)
	public String saveWiki(Model model, @ModelAttribute Wiki wiki)
	{

		dao.saveWiki(wiki);
		List<Wiki> wikiList = null;
		wikiList = dao.getWikiList();
		model.addAttribute("wikiList", wikiList);

		return "displayWiki";
	}

	@RequestMapping(value = "/display", method = RequestMethod.GET)
	public String display(Model model, @ModelAttribute Wiki wiki)
	{
		List<Wiki> wikiList = null;
		wikiList = dao.getWikiList();
		model.addAttribute("wikiList", wikiList);
		return "displayWiki";
	}

	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public String delete(Model model, @PathVariable int id)
	{
		dao.deleteWiki(id);
		List<Wiki> wikiList = null;
		wikiList = dao.getWikiList();
		model.addAttribute("wikiList", wikiList);
		return "displayWiki";

	}

	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public String edit(Model model, @PathVariable int id)
	{
		dao.updateWiki(id);
		dao.deleteWiki(id);

		model.addAttribute("wiki", new Wiki());
		return "form";

	}
	
	@RequestMapping(value="/query/{subject}", method = RequestMethod.GET)
	public String query (Model model, @PathVariable String subject)
	{
		dao.querybySubject(subject);
		List<Wiki> wikiList=null;
		wikiList =dao.getWikiList();
		model.addAttribute("wiki", new Wiki());
		return "subject";
		
	}

}
