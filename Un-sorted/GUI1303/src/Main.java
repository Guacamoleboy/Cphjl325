import javafx.application.Application;
import javafx.event.*;
import javafx.scene.control.Button;
import javafx.scene.*;
import javafx.scene.layout.StackPane;
import javafx.stage.Stage;

public class Main extends Application { // Client class

    // Global attributes

    Button button;

    public static void main(String[] args) {

        // Use swing or fx in 2025?

        launch(args);

    } // Main end

    // ______________________________________________________________

    @Override
    public void start(Stage primaryStage) throws Exception {

        primaryStage.setTitle("Some title");

        button = new Button();
        button.setText("Click on me..");

        StackPane layout = new StackPane(); // puts the button in the middle
        layout.getChildren().add(button); // Adds button

        // Visuals
        layout.setStyle("-fx-background: black");

        Scene scene = new Scene(layout, 900, 600);

        primaryStage.setScene(scene); // Window
        primaryStage.show(); // Displays to the user


    }

} // Client class end