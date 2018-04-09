package com.tma.tt.api.common;

import java.text.ParseException;

import org.apache.commons.lang3.StringUtils;

public class CommonJsonApiUtils {
	
	public static final String COMPOSITE_ID_SEPARATOR = "-";
	
    public static String getStringValue(Object value) {
        if(value == null){
            throw new IllegalArgumentException("Value cannot be null");
        }
        if(value instanceof String){
            if(StringUtils.isBlank((String)value)) {
                throw new IllegalArgumentException("Value cannot be blank");
            }
            return (String)value;
        } else if(value instanceof Integer) {
            return String.valueOf(value);
        } else if(value instanceof Long) {
            return Long.toString((Long)value);
        } else {
            throw new IllegalArgumentException("The datatype of " + value + " is not supported.");
        }

    }
    
    public static Object[] getValuesFromDelimitedString(String delimitedString, String delimiter, Class<?>[] types){
        boolean correctFormat = false;
        Object[] ids = new Object[types.length];
        Exception fe = null;
        if(StringUtils.contains(delimitedString, delimiter)){
            String[] idStrings = StringUtils.split(delimitedString, delimiter);
            if(idStrings.length == types.length){
                try {
                    for(int i=0; i<types.length; i++) {
                        if(StringUtils.isBlank(idStrings[i])) {
                            throw new NumberFormatException("Value cannot be blank");
                        }
                        if(types[i]==String.class) {
                            ids[i] = idStrings[i];
                        } else if(types[i]==Integer.class) {
                            ids[i] = Integer.parseInt(idStrings[i]);
                        } else if(types[i]==Long.class) {
                            ids[i] = Long.parseLong(idStrings[i]);
                        } else{
                            throw new ParseException("Datatype of the value is not supported.", 0);
                        }
                    }
                    correctFormat = true;
                } catch(NumberFormatException | ParseException ex) {
                    fe = ex;
                }
            }
        }
        if(!correctFormat){
            if(fe!=null) {
                throw new IllegalArgumentException("Cannot obtain " + types.length + " values from delimited string: " + delimitedString, fe);
            }else{
                throw new IllegalArgumentException("Cannot obtain " + types.length + " values from delimited string: " + delimitedString);
            }
        }
        return ids;
    }

}
