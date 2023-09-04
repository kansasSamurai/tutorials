package com.baeldung.wrapper;

import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.baeldung.domain.Order;
import com.baeldung.domain.OrderForm;
import com.baeldung.domain.OrderFullForm;

@Controller
public class DemoController {

	@Autowired
	private InternalResourceViewResolver ivr;

	@GetMapping(value = "/")
	public String root(Model model) {
//		ivr.removeFromCache("index", Locale.getDefault());
		return "index";
	}

	@GetMapping(value = "/menu")
	public String index(Model model) {
		return thymeleaf("menu");
	}

	@GetMapping(value = "/index")
	public String demo(Model model) {
		return thymeleaf("index");
	}

	@GetMapping(value = "/jquery")
	public String jquery(Model model) {
		return thymeleaf("ajax");
	}

	@GetMapping(value = "/welcome")
	public String welcome(Model model) {
		model.asMap().put("time", new Date());
		model.asMap().put("message", "Hello World!");

		// A variable to enable runtime modification via debugger
		String viewname = "welcome";
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

	/* Works with following client side javascript:
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
