package com.baeldung.domain;

import java.util.List;

public class OrderFullForm {

	private Order order;
	
	private List<OrderLineItem> lineItems;

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public List<OrderLineItem> getLineItems() {
		return lineItems;
	}

	public void setLineItems(List<OrderLineItem> lineItems) {
		this.lineItems = lineItems;
	}
}
