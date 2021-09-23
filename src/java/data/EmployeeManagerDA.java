/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import business.Person;
import java.time.LocalDate;
import java.time.Month;
import java.util.ArrayList;

/**
 *
 * @author fssco
 */
public class EmployeeManagerDA {
    
    public static ArrayList<Person> getAllEmployees(){
        ArrayList<Person> all = new ArrayList<>();
        all.add(new Person("Aaron", "A", "Aaronson", 65,
                           LocalDate.of(1980, Month.JANUARY, 1), LocalDate.of(2013, Month.JANUARY, 2)));
        
        all.add(new Person("Erin", "E", "Erinson", 66,
                           LocalDate.of(1980, Month.JANUARY, 1), LocalDate.of(2012, Month.JANUARY, 1)));
        
        all.add(new Person("Beatrix", "", "Kiddo", 1313,
                           LocalDate.of(1976, Month.FEBRUARY, 28), LocalDate.of(2003, Month.OCTOBER, 10)));
        
        all.add(new Person("Paul", "Muad'Dib", "Atreides", 2000,
                           LocalDate.of(1965, Month.APRIL, 4), LocalDate.of(1984, Month.MAY, 5)));
        //Nice Dune Reference
        all.add(new Person("Marty", "", "McFly", 1985,
                           LocalDate.of(1968, Month.JUNE, 12), LocalDate.of(1885, Month.JANUARY, 1)));
        
        all.add(new Person("Daisy", "", "Domergue", 2015,
                           LocalDate.of(1840, Month.JULY, 2), LocalDate.of(1870, Month.APRIL, 21)));
        
        all.add(new Person("Molly", "", "Millions", 1337,
                           LocalDate.of(1984, Month.JULY, 1), LocalDate.of(2000, Month.APRIL, 18)));
        
        all.add(new Person("Christopher", "A", "Lif", 184673,
                           LocalDate.of(1995, Month.MAY, 12), LocalDate.of(2021, Month.APRIL, 28)));
        
        all.add(new Person("Mallory", "J", "Paul", 12345,
                           LocalDate.of(1994, Month.DECEMBER, 15), LocalDate.of(2019, Month.FEBRUARY, 16)));
        
        return all;
    }
    
    
        public static ArrayList<Person> search(LocalDate searchDate) {
            
        ArrayList<Person> temp = new ArrayList<Person>(); //temp list to add found employees to
        ArrayList<Person> all = getAllEmployees(); //gets all of the employees from the other method

        //adds the employee from all at index 0 to the temp list
        temp.add(all.get(0));

        return temp;
    }
}
