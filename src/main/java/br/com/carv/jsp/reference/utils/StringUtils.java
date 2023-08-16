package br.com.carv.jsp.reference.utils;

public class StringUtils {
	
	public static Boolean isValid(String value) {
		if (value.isBlank() || value.isEmpty()) {
			return false;
		}
		return true;
	}

}
