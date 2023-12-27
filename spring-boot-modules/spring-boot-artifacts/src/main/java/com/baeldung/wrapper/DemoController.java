package com.baeldung.wrapper;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baeldung.domain.Order;
import com.baeldung.domain.OrderForm;
import com.baeldung.domain.OrderFullForm;
import com.baeldung.web.data.Link;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class DemoController {

	private static final Logger logger = LoggerFactory.getLogger(DemoController.class);

	private static final ObjectMapper mapper = new ObjectMapper();

//	@Autowired
//	private InternalResourceViewResolver ivr;

	@GetMapping(value = "/")
	public String root(Model model) {
		logger.info("context root (/) is mapped to index");

		final Map<String,Link> linkMap = new HashMap<>();
		model.addAttribute("linkMap", linkMap);
		// As of DEC 2023, linkMap is no longer directly used in the JSP/view

		Link link = new Link("JSP", "https://docs.oracle.com/javaee/5/tutorial/doc/bnagy.html");
		linkMap.put("JSP", link);

		link = new Link("Thymeleaf", "https://www.thymeleaf.org/doc/tutorials/3.0/thymeleafspring.html#views-and-view-resolvers-in-spring-mvc");
		linkMap.put("Thymeleaf", link);

		try {
			model.addAttribute("LINKS", mapper.writeValueAsString(linkMap));
		} catch (JsonProcessingException e) {
			logger.error("", e);
		}
		
//		ivr.removeFromCache("index", Locale.getDefault());

		return "index";
		// Note that this will be handled by a JSP due to the following config:
		// spring.mvc.view.view-names=index,jsp/*
	}

	@GetMapping(value = "/menu")
	public String menu(Model model) {
		return thymeleaf("menu");
	}

	@GetMapping(value = "/index")
	public String index(Model model) {
		return thymeleaf("index");
	}

	@GetMapping(value = "/jquery")
	public String jquery(Model model) {
		return thymeleaf("ajax");
	}

	@GetMapping(value = "/hello")
	public String hello(Model model) {
		model.asMap().put("time", new Date());
		model.asMap().put("message", "Hello World!");

		// A variable to enable runtime modification via debugger
		String viewname = "hello";
		return jsp(viewname);
	}

	/**
	 * A utility to create thymeleaf view based on
	 * matching configuration in application.properties.
	 * 
	 * @param name
	 * @return
	 */
	private String thymeleaf(String name) {
		return "thymeleaf/" + name; 
	}

	private String jsp(String name) {
		name = "jsp/" + name;
//		ivr.removeFromCache(name, Locale.getDefault());
		return name;
	}

	/* ========================================================================
	 * The rest of this controller are AJAX methods
	 * ========================================================================
	 * 
	 * Works with following client side javascript:
	 * 
		let data = { customerId: 5, poNumber: 'ACME-123'} ;
		$.ajax( {
			url : 'ajax',
			method : 'POST',
			contentType: 'application/json',
			data: JSON.stringify(data)
		}).done(function(response) {
			$(this).addClass("done");
		});
	 * 
	 * 
	 */
	@ResponseBody
	@PostMapping(value = "ajax")
	public Map<String, Object> ajax(@RequestBody Order order) {
		final Map<String, Object> ret = new HashMap<>();
		ret.put("result", "good");
		return ret;
	}

	@ResponseBody
	@PostMapping(value = "ajaxform")
	public Map<String, Object> ajaxform(@RequestBody OrderForm form) {
		final Map<String, Object> ret = new HashMap<>();
		ret.put("result", "good");
		return ret;
	}

	@ResponseBody
	@PostMapping(value = "ajaxfullform")
	public Map<String, Object> ajaxfullform(@RequestBody OrderFullForm form) {
		final Map<String, Object> ret = new HashMap<>();
		ret.put("result", "good");
		return ret;
	}

}
