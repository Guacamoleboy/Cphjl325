import javax.swing.*;
import java.awt.*; // Colors
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class GUI implements ActionListener {

    private int count = 0;
    private JLabel label;
    private JFrame frame;
    private JPanel panel;
    private JButton button;

    public GUI(){

        frame = new JFrame();
        panel = new JPanel(new GridBagLayout());
        button = new JButton("Button");
        button.addActionListener(this);
        label = new JLabel("Number of clicks: 0");

        // Empty space around panels content
        panel.setBorder(BorderFactory.createEmptyBorder(50, 50, 50, 50));

        // Color
        panel.setBackground(Color.ORANGE);

        GridBagConstraints gbc = new GridBagConstraints();
        gbc.gridx = 0;
        gbc.gridy = 0;
        gbc.anchor = GridBagConstraints.CENTER;
        gbc.insets = new Insets(10, 10, 10, 10); // Spacing around each object.
        panel.add(button, gbc);

        gbc.gridy = 1; // Label under button
        panel.add(label, gbc);

        frame.add(panel, BorderLayout.CENTER); // Adds our panel to the frame
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); // Closes our frame
        frame.setTitle("Guacamoleboy | GUI Test using Swing in Java | Date: 13-03/2025"); // Title of our window

        //frame.pack(); // Sets it to match a certain size
        frame.setSize(900, 600);
        frame.setLocationRelativeTo(null);
        frame.setVisible(true); // Visible

    }

    @Override
    public void actionPerformed(ActionEvent e) {
        count++;
        label.setText("Number of clicks: " + count);
    }
}
