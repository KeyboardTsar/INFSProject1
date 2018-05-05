/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package eventable.pkgfor.students;

import static eventable.pkgfor.students.DBController.closeConnection;
import static eventable.pkgfor.students.DBController.openConnection;
import static eventable.pkgfor.students.LoginController.conn;
import static eventable.pkgfor.students.LoginController.rs;
import static eventable.pkgfor.students.LoginController.statement;
import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.application.Application;
import javafx.beans.property.SimpleStringProperty;
import javafx.beans.value.ObservableValue;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Group;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableColumn.CellDataFeatures;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.VBox;
import javafx.scene.text.Font;
import javafx.scene.text.Text;
import javafx.stage.Stage;
import javafx.util.Callback;

public class StudentScreenEvents_FavouritesController extends Application implements Initializable {

    @FXML
    Stage stage;
    Parent root;
    
    @FXML
    private Text society;
    @FXML
    private Text code;
    @FXML
    private Text events;
    @FXML
    private Text feedback;
    @FXML
    private Text profile;
    @FXML
    private Text all;
    @FXML
    private Text favourites;
    @FXML
    private Text going;
    @FXML
    private Text past;
    @FXML
    public TableView<FavouriteSocieties> tableofFavouriteSocieties;
    @FXML
    public TableColumn<FavouriteSocieties, String> societyName;
    @FXML
    public TableColumn<FavouriteSocieties, String> societyDescription;

    ObservableList<FavouriteSocieties> societyData;

    public static Connection conn;

    public String currentQuery;

    public static ResultSet rs;

    public static Statement statement;

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
    public void populateTableView() throws SQLException {
        String loggedInUser = LoginController.loggedInUser;
        statement = openConnection();
        currentQuery = "SELECT society_name, society_description FROM society JOIN favourites f USING (society_id) WHERE f.email = '"+ loggedInUser + "'";
        ResultSet rs = statement.executeQuery(currentQuery);

        societyName.setCellValueFactory(new PropertyValueFactory<>("societyName"));
        societyDescription.setCellValueFactory(new PropertyValueFactory<>("societyDescription"));

        //Data added to observable List
        societyData = FXCollections.observableArrayList();
        
        try {
            while (rs.next()) {
                int i = 1;
                societyData.add(new FavouriteSocieties(rs.getString(i), rs.getString(i + 1)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentScreenEvents_FavouritesController.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        //Data added to TableView
        try {
            tableofFavouriteSocieties.setItems(societyData);
            tableofFavouriteSocieties.setFixedCellSize(60.0);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection(conn, rs, statement);
        }
    }
    
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        try {
            populateTableView();
        } catch (SQLException ex) {
            Logger.getLogger(StudentScreenEvents_FavouritesController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @FXML
    private void bottomNavSocietyButton(MouseEvent event) throws SQLException {
        loadNext("StudentScreenSociety_All.fxml");
    }

    @FXML
    private void bottomNavCodeButton(MouseEvent event) throws SQLException {
        loadNext("StudentScreenCode.fxml");
    }

    @FXML
    private void bottomNavEventsButton(MouseEvent event) throws SQLException {
        loadNext("StudentScreenEvents_All.fxml");
    }

    @FXML
    private void bottomNavFeedbackButton(MouseEvent event) throws SQLException {
        loadNext("StudentScreenFeedback_Feedback.fxml");
    }

    @FXML
    private void bottomNavProfileButton(MouseEvent event) throws SQLException {
        loadNext("StudentScreenProfile.fxml");
    }

    @FXML
    private void topNavAll(MouseEvent event) throws SQLException {
        loadNext("StudentScreenEvents_All.fxml");
    }

    @FXML
    private void topNavFavourites(MouseEvent event) throws SQLException {
        loadNext("StudentScreenEvents_Favourites.fxml");
    }

    @FXML
    private void topNavGoing(MouseEvent event) throws SQLException {
        loadNext("StudentScreenEvents_Going.fxml");
    }

    @FXML
    private void topNavPast(MouseEvent event) throws SQLException {
        loadNext("StudentScreenEvents_Past.fxml");
    }
    
    public void loadNext(String destination) {
        stage = (Stage) society.getScene().getWindow();
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
        stage = (Stage) society.getScene().getWindow();
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
