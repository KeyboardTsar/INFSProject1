/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package eventable.pkgfor.students;

import javafx.scene.control.TextField;

/**
 *
 * @author AriSurfacePro
 */
public class Utils {
    public static String extractString(TextField field){
        return field.toString().trim();
    }
    
    public static boolean extractStringIsEmpty(TextField field){
        return field.toString().trim().isEmpty();
    }
}
