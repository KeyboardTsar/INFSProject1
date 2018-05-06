/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package eventable.pkgfor.students;

import static eventable.pkgfor.students.DBController.closeConnection;
import static eventable.pkgfor.students.DBController.openConnection;
import static eventable.pkgfor.students.StudentScreenEvents_FavouritesController.conn;
import static eventable.pkgfor.students.StudentScreenEvents_FavouritesController.statement;
import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.application.Application;
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

public class SignUp1Controller extends Application implements Initializable {

    @FXML
    Stage stage;
    Parent root;
    
    @FXML
    private Button next;
    private TextField password, confirmPassword;
    public TextField email;
    private Text errorText, errorText2, errorText3, errorText4, errorText5, errorText6, errorText7, errorText8, errorText9;

    char ch;
    
    public static Connection conn;

    public String currentQuery;

    public static ResultSet rs;

    public static Statement statement;

    public String userPassword;

    @Override
    public void initialize(URL location, ResourceBundle resources) {
    }

    public Boolean validatePassword() throws SQLException {
        errorText.setVisible(false);
        errorText2.setVisible(false);
        errorText3.setVisible(false);
        errorText4.setVisible(false);
        errorText5.setVisible(false);
        errorText6.setVisible(false);
        errorText7.setVisible(false);
        errorText8.setVisible(false);
        errorText9.setVisible(false);

        if (Utils.extractStringIsEmpty(email)) {
            errorText.setVisible(true);
            return false;
        }
        if (Utils.extractStringIsEmpty(password)) {
            errorText.setVisible(false);
            errorText2.setVisible(true);
            return false;
        }
        if (Utils.extractStringIsEmpty(confirmPassword)) {
            errorText.setVisible(false);
            errorText2.setVisible(false);
            errorText3.setVisible(true);
            return false;
        }
        if (!confirmPassword.getText().equals(password.getText())) {
            errorText.setVisible(false);
            errorText2.setVisible(false);
            errorText3.setVisible(false);
            errorText4.setVisible(true);
            return false;
        } else {
            userPassword = password.getText();
            //Check password length
            if (userPassword.length() < 8) {
                errorText.setVisible(false);
                errorText2.setVisible(false);
                errorText3.setVisible(false);
                errorText4.setVisible(false);
                errorText5.setVisible(true);
                return false;
            }
            //Check lowerCase;
            if (!(Character.isLowerCase(ch))) {
                for (int i = 1; i < userPassword.length(); i++) {
                    ch = userPassword.charAt(i);
                    if (!Character.isLowerCase(ch)) {
                        errorText.setVisible(false);
                        errorText2.setVisible(false);
                        errorText3.setVisible(false);
                        errorText4.setVisible(false);
                        errorText5.setVisible(false);
                        errorText6.setVisible(true);
                        return false;
                    }
                }
            }
            //Check upperCase:
            if (!(Character.isUpperCase(ch))) {
                for (int i = 1; i < userPassword.length(); i++) {
                    ch = userPassword.charAt(i);
                    if (!Character.isUpperCase(ch)) {
                        errorText.setVisible(false);
                        errorText2.setVisible(false);
                        errorText3.setVisible(false);
                        errorText4.setVisible(false);
                        errorText5.setVisible(false);
                        errorText6.setVisible(false);
                        errorText7.setVisible(true);
                        return false;
                    }
                }
            }
            //Check if password contains number
            String patternNumber = "(?=.*[0-9])";
            if (!userPassword.matches(patternNumber)) {
                errorText.setVisible(false);
                errorText2.setVisible(false);
                errorText3.setVisible(false);
                errorText4.setVisible(false);
                errorText5.setVisible(false);
                errorText6.setVisible(false);
                errorText7.setVisible(false);
                errorText8.setVisible(true);
                return false;
            }
            //Check if password contains special character
            String patternSpecialCharacter = "(?=.*[@#$%^&+=])";
            if (!userPassword.matches(patternSpecialCharacter)) {
                errorText.setVisible(false);
                errorText2.setVisible(false);
                errorText3.setVisible(false);
                errorText4.setVisible(false);
                errorText5.setVisible(false);
                errorText6.setVisible(false);
                errorText7.setVisible(false);
                errorText8.setVisible(false);
                errorText9.setVisible(true);
                return false;
            }
        }
        //Inputting details into database
        int userPasswordHashed = userPassword.hashCode();
        String userPasswordHashedString = userPasswordHashed + "";
        statement = openConnection();
        currentQuery = "INSERT INTO APP_USER(email, password) VALUES('" + email.getText() + "', '" + userPasswordHashedString + "'";
        int update = statement.executeUpdate(currentQuery);
        return true;
    }
    
    @FXML
    private void nextButton(ActionEvent event) throws SQLException {
        if (validatePassword()) {
            System.out.print("Entered nextButton method");
        closeConnection(conn, rs, statement);
        loadNext("SignUp2.fxml");
    }
    }

    public void loadNext(String destination) {
        stage = (Stage) next.getScene().getWindow();
        try {
            root = FXMLLoader.load(getClass().getResource(destination));
        } catch (IOException ex) {
            Logger.getLogger(HomeController.class.getName()).log(Level.SEVERE, null, ex);
        }
        Scene scene = new Scene(root);
        stage.setScene(scene);
        stage.show();
    }

    @Override
    public void start(Stage primaryStage) throws Exception {
        stage = (Stage) next.getScene().getWindow(); //NEED TO FIX UP LINE
        Scene scene = new Scene(root);
        stage.setScene(scene);
        stage.show();
    }
}

//    @FXML
//    private void SignInButton(ActionEvent event) throws Exception{
//        DBController auth = new DBController();
//        SignInError.setVisible(false);
//        InjectionError.setVisible(false);
//        
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
