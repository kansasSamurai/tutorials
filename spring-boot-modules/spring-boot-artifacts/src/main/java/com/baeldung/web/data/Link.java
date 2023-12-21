package com.baeldung.web.data;

public class Link {

	String href = "#"; // just some default value
	String text = "LINK"; // just some default value
	String target = "_blank"; // default to open in new window/tab

	public Link(String txt, String url) {
		this.text = txt;
		this.href = url;
	}

	public String getHref() {
		return href;
	}

	public void setHref(String href) {
		this.href = href;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getTarget() {
		return target;
	}

	public void setTarget(String target) {
		this.target = target;
	}
}
