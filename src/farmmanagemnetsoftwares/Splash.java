package farmmanagemnetsoftwares;/*JVM reaches only till source packages after it we need to tell it to go inside farm management softwares inside it splsah class is present*/
import javax.swing.*;/* Java extended package to import Jframe*/
import java.awt.*;/*for Color fucntion*/

public class Splash extends JFrame{
    /* wee want that after class runs we can instantly see the frame.when a class runs first its main mehotd i s classed*/
    /*we need to add all code for frame in Splash constructor*/
    /* use Jframe class to create Frame.JFRmae class is inside Swing*/
    Splash(){
        getContentPane().setBackground(Color.WHITE);/*to change frame color*/ /*get content pane is to access the pane first*/
        setSize(1170,650);/*tell size of frame to make frame*/
        /* frame is made but we cant see it yet bcz its visibilty by default  is hidden*/
        setLocation(200,50);
         /* first argument is distance from left,second argument is distance from top*/
        setVisible(true);/*frame opens but opens at top left by default because it is origin*/
        /*to change that location use setlocation*/
        
    }
    public static void main(String args[]){
        new Splash();/* creating object of Splash class constructor of this calsss will be called*/
    }
}
