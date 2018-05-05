/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package eventable.pkgfor.students;
import javafx.beans.property.SimpleStringProperty;

public class FavouriteSocieties {
    
    public SimpleStringProperty societyName, societyDescription;

    public String getSocietyName() {
        return societyName.get();
    }
    
    public void setSocietyName(String societyName) {
        this.societyName.set(societyName);
    }
    
    public String getSocietyDescription() {
        return societyDescription.get();
    }
    
     public void setSocietyDescription(String societyDescription) {
        this.societyDescription.set(societyDescription);
    }

    public FavouriteSocieties(String societyNames, String societyDescriptions) {
        societyName = new SimpleStringProperty(societyNames);
        societyDescription = new SimpleStringProperty(societyDescriptions);
    }
}