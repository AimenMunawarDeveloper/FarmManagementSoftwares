package farmmanagemnetsoftwares;/*JVM reaches only till source packages after it we need to tell it to go inside farm management softwares inside it splsah class is present*/
import javax.swing.*;/* Java extended package to import Jframe*/
import java.awt.*;/*for Color fucntion*/

public class Splash extends JFrame {

    /* wee want that after class runs we can instantly see the frame.when a class runs first its main mehotd i s classed*/
 /*we need to add all code for frame in Splash constructor*/
 /* use Jframe class to create Frame.JFRmae class is inside Swing*/
    Splash() {
        getContentPane().setBackground(Color.WHITE);/*to change frame color*/ /*get content pane is to access the pane first*/
        setLayout(null);/*sayt hat we dont wnat to use pre-default swing layouts*/
        JLabel heading = new JLabel("Farm Management System");/* Jlabel class is used to write on code.We are cerating an object of JLabel class*/
        heading.setBounds(150, 30, 1200, 30);
        /* first two tell where we need to place our label.80 from frame left ,30 from frame top*/
 /* next two tell the length and width of label itself*/
 /* 30<80 because at top first there is frame heading so we mention distance relevant to that*/
        heading.setFont(new Font("serif", Font.PLAIN, 25));/* create fucntion of font class.First argument is font family,second is how we want to show it,thirs is its font size*/
        heading.setForeground(Color.DARK_GRAY);
        add(heading);/* to show componet on frame we need to add it using add fucntion*/
 /*There are certain layouts to controls how to put components on the frame.There are certain guidelines of swing for that e.g to place around border use border layout(by default).to place one after another use flow layout*/


        ImageIcon i1 = new ImageIcon(ClassLoader.getSystemResource("icons/Farm.jpg"));
        /*creating object of image icon class ,use classloader to load images*/
        Image i2 = i1.getImage().getScaledInstance(1170, 700, Image.SCALE_DEFAULT);
        /* to scale the image here did default scale and because it returns an image class object we stored that into i2*/
        ImageIcon i3 = new ImageIcon(i2);
        JLabel image = new JLabel(i3);/* we converted image into image icon again because we ultimately had to pass image into JLabel and we cant do that with an image class object*/
        image.setBounds(50, 100, 1050, 500);
        add(image);/* cant do it directly so created Jlabel*/
 /* again we need to convert it into image icon*/


        JButton clickhere = new JButton("Click here to continue");
        clickhere.setBounds(400, 400, 300, 70);
        image.add(clickhere);
        /* so that button is added on top of image*/
        clickhere.setBackground(Color.DARK_GRAY);
        clickhere.setForeground(Color.WHITE);

        setSize(1170, 650);/*tell size of frame to make frame*/
 /* frame is made but we cant see it yet bcz its visibilty by default  is hidden*/
        setLocation(200, 50);
        /* first argument is distance from left,second argument is distance from top*/
        setVisible(true);/*frame opens but opens at top left by default because it is origin*/
 /*to change that location use setlocation*/

        while (true) {
            heading.setVisible(false);
            try {
                Thread.sleep(500);
            } catch (Exception e) {

            }

            heading.setVisible(true);
            try {
                Thread.sleep(500);
            } catch (Exception e) {

            }
        }
    }
    public static void main(String args[]) {
        new Splash();/* creating object of Splash class constructor of this calsss will be called*/
    }
}
