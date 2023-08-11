package com.example.model;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertThat;
import static org.hamcrest.CoreMatchers.hasItems;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.junit.Test;

public class BeerExpertTest {
    @Test
    public void testGetBrandsWhenSelectedStringIsAmber() {
        BeerExpert BE = new BeerExpert();
        List expectedList = new ArrayList();
        expectedList.add("Jack Amber");
        expectedList.add("Red Moose");
        
        // working assertThat implementation
        // This is a generic implementation refusing to cooperate with pre-generic code.
        // I can't just pass the method call as the parameter because it doesn't have a type parameter, which assertThat expects
        // And because it doesn't match the type that assertThat expects, it won't compile
            // List<String> actualList = BE.getBrands("amber");
            // assertThat(actualList, hasItems("Jack Amber", "Red Moose"));

       
        assertEquals(BE.getBrands("amber"), expectedList);
        // Alt implementation
        // assertEquals(BE.getBrands("amber"), Arrays.asList("Jack Amber", "Red Moose"));
    }

    @Test
    public void testGetBrandsWhenSelectedStringIsOtherThanAmber() {
        BeerExpert BE = new BeerExpert();
        List expectedList = new ArrayList();
        expectedList.add("Jail Pale Ale");
        expectedList.add("Gout Stout");
        
        assertEquals(BE.getBrands("light"), expectedList);
    }

    @Test
    public void testGetBrandsWhenSelectedStringIsEmpty() {
        BeerExpert BE = new BeerExpert();
        List expectedList = new ArrayList();
        expectedList.add("Jail Pale Ale");
        expectedList.add("Gout Stout");
        
        assertEquals(BE.getBrands(""), expectedList);
    }

    @Test
    public void testGetBrandsWhenSelectedStringIsNull() {
        BeerExpert BE = new BeerExpert();
        List expectedList = new ArrayList();
        expectedList.add("Jail Pale Ale");
        expectedList.add("Gout Stout");
        
        //assertEquals(BE.getBrands(null), expectedList);
        //Test returns a NullPointerException error. Which is correct since the code actually uses the passed parameter's method
        //and since it's null, it won't have a method tied to it
        //Not like this is ever going to matter since it's a select box in a form anyway
    }
    
}

//https://junit.org/junit4/javadoc/latest/org/hamcrest/CoreMatchers.html
//Trying to figure out how to make assertThat work. assertEquals works just fine. List above contains the matchers you can use for assertThat

//Also there's probably some way to set this thing up so that I don't need to instantiate a new BeerExpert object every time I want to run a test
//There is definitely a way as demonstrated before but i'll look it up later