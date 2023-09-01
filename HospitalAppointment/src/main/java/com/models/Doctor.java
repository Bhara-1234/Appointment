package com.models;

public class Doctor {
	int doc_id,doc_exp;
	String doc_name,doc_qual,doc_spec,doc_img;
	
	public Doctor() {
		
	}
	
	
	public int getDoc_id() {
		return doc_id;
	}
	public int getDoc_exp() {
		return doc_exp;
	}
	public String getDoc_name() {
		return doc_name;
	}
	public String getDoc_qual() {
		return doc_qual;
	}
	public String getDoc_spec() {
		return doc_spec;
	}
	public String getDoc_img() {
		return doc_img;
	}
	public void setDoc_id(int doc_id) {
		this.doc_id = doc_id;
	}
	public void setDoc_exp(int doc_exp) {
		this.doc_exp = doc_exp;
	}
	public void setDoc_name(String doc_name) {
		this.doc_name = doc_name;
	}
	public void setDoc_qual(String doc_qual) {
		this.doc_qual = doc_qual;
	}
	public void setDoc_spec(String doc_spec) {
		this.doc_spec = doc_spec;
	}
	public void setDoc_img(String doc_img) {
		this.doc_img = doc_img;
	}

}
