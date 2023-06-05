	
package com.goodskpopstore.entity;


public class Parameter {

    private Object value;
    private int type;

    public Parameter() {
    }

    public Parameter(Object value, int type) {
        this.value = value;
        this.type = type;
    }

    public Object getValue() {
        return value;
    }

    public int getType() {
        return type;
    }

    public void setValue(Object value) {
        this.value = value;
    }

    public void setTypes(int type) {
        this.type = type;
    }
}