/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package eventable.pkgfor.students;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.PasswordField;
import javafx.scene.control.RadioButton;
import javafx.scene.control.TextField;
import javafx.scene.control.ToggleGroup;
import javafx.scene.image.ImageView;
import javafx.scene.input.MouseEvent;
import javafx.scene.text.Text;

import javafx.stage.Stage;
import javax.swing.JOptionPane;

/**
 *
 * @author edhopkins
 */
public class LoginController implements Initializable {

    @FXML
    Stage stage;
    Parent root;

    @FXML
    private Button loginButton;
    
    @FXML
    private TextField email, password;
    
    @FXML
    private Text errorText;

//    @FXML 
//    private ImageView home;
//    
//    @FXML
//    private TextField username;
//    
//    @FXML
//    private PasswordField password;
//    
//    @FXML
//    private Text SignInError, InjectionError;
//    
//    public static String loggedInUser;
//
//    DBController d = new DBController(); //Establish a connection to the db
    @Override
    public void initialize(URL location, ResourceBundle resources) {

    }

    //check special characters
    public boolean sanitise(String username, String password){
        Pattern p = Pattern.compile("[^a-z0-9 ]", Pattern.CASE_INSENSITIVE);
        Matcher m1 = p.matcher(username);
        Matcher m2 = p.matcher(password);
        boolean b1 = m1.find();
        boolean b2 = m2.find();
        if (b1 || b2){
            return false;
        }
        return true;
    }
    
    //Authenticate
    public boolean authenticate(String username, String password){//, Boolean staff){
        java.sql.Statement statement = null;
        currentQuery = "SELECT EMAIL FROM APP_USER WHERE EMAIL = '" + username + "' AND PASSWORD = '" + password + "'";
        openConnection();
        try {
            statement = conn.createStatement();
            ResultSet rs = statement.executeQuery(currentQuery);
            if (rs.next()){
                statement.close();
                conn.commit();
                return true;
            }
            else {
                statement.close();
                conn.commit();
                return false;
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(DBController.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
    
    @FXML
    private void loginButton(ActionEvent event) throws Exception {
//        //Check if there are empty fields
//        if (Utils.extractStringIsEmpty(email)) {
//            //TODO: Alert the user to some error (there is an empty field that is required...)
//            
//            //Error is found. Aborts the rest of the code execution
//            return;
//        }
//        if (Utils.extractStringIsEmpty(password)) {
//            //TODO: Alert the user to some error (there is an empty field that is required...)
//            
//            //Error is found. Aborts the rest of the code execution
//            return;
//        }
//        if (Utils.extractStringIsEmpty(confirmPassword)) {
//            //TODO: Alert the user to some error (there is an empty field that is required...)
//            
//            //Error is found. Aborts the rest of the code execution
//            return;
//        }
//        
//        //Check if the inputted passwords match
//        if (Utils.extractString(password).hashCode() != Utils.extractString(confirmPassword).hashCode()) {
//            //TODO: Alert the user to some error (the passwords entered do not match)
//
//            //Error is found. Aborts the rest of the code execution
//            return;
//        }
        
        //code below checks if either box is emptys
        errorText.setVisible(false);
        System.out.println("FLAG1");
        if((email.getText().isEmpty()) || (password.getText().isEmpty())){
            errorText.setVisible(true);
        }
        else{
            loadNext("StudentScreenEvents_All.fxml");
        }
    }

    public void loadNext(String destination) {
        stage = (Stage) loginButton.getScene().getWindow();
        try {
            root = FXMLLoader.load(getClass().getResource(destination)); //putting it to 'Seek a Ride' for now, before we know what type of user each person is
        } catch (IOException ex) {
            Logger.getLogger(HomeController.class.getName()).log(Level.SEVERE, null, ex);
        }
        Scene scene = new Scene(root);
        stage.setScene(scene);
        stage.show();
    }

//    @FXML
//    private void SignInButton(ActionEvent event) throws Exception{
//        DBController auth = new DBController();
//        SignInError.setVisible(false);
//        InjectionError.setVisible(false);
//        
//        if (auth.sanitise(username.getText(), password.getText())){
//            //InjectionError.setVisible(false);
//                if (auth.authenticate(username.getText(), password.getText())){
//                    loggedInUser = username.getText();
//                    //userType = Integer.parseInt(d.returnSingleQuery("SELECT USERTYPE FROM USER WHERE USERNAME LIKE '" + loggedInUser + "'"));
//                    loadNext("Seek a Ride.fxml"); //Change this to the main report page
//
//                }
//                else {
//                    SignInError.setVisible(true);
//                }
//        }
//        else {
//            InjectionError.setVisible(true);
//        }
//
//    }
//    
//    //Saves duplicates
//    public void loadNext(String destination){
//        SignInError.setVisible(false);
//        stage=(Stage) SignIn.getScene().getWindow();
//        try {
//            root = FXMLLoader.load(getClass().getResource(destination)); //putting it to 'Seek a Ride' for now, before we know what type of user each person is
//        } catch (IOException ex) {
//            Logger.getLogger(SignInController.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        Scene scene = new Scene(root);
//        stage.setScene(scene);
//        stage.show();
//    }
//    
//    public static String getUser(){
//        return loggedInUser;
//    } 
}
