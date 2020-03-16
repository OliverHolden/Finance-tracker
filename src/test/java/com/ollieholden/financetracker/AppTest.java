package com.ollieholden.financetracker;

import static org.junit.Assert.assertTrue;
import com.ollieholden.financetracker.App;

import org.junit.Test;

/**
 * Unit test for simple App.
 */
public class AppTest 
{
    /**
     * Rigorous Test :-)
     */
    @Test
    public void shouldAnswerWithTrue()
    {
        assertTrue( true );
    }

    @Test
    public void testAdd() {
        assertTrue(2 == App.add(1, 1));
    }
}
