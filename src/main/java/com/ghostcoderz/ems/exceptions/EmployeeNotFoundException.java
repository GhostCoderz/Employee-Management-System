package com.ghostcoderz.ems.exceptions;

public class EmployeeNotFoundException extends Exception {
	
	private String message;

	private static final long serialVersionUID = 1L;
	
	public EmployeeNotFoundException(String msg) {
		this.message=msg;
	}

	@Override
	public String toString() {
		return "EmployeeNotFoundException occured : " + message;
	}
	
	

}
