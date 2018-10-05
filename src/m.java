import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.SwingUtilities;

public class m implements MouseListener {

	JFrame f = new JFrame();
	JPanel p = new JPanel();
	JLabel l = new JLabel();
	JButton b1 = new JButton();
	JButton b2 = new JButton();
	JTextField tf = new JTextField(20);
	
	
	/* http://level1.jointheleague.org/Level1%20Students.html*/
	/* You are a noob */
	
	public static void main(String [] args) {
	m mmm = new m();
	mmm.run();
		
	}
	public void run() {
		f.setVisible(true);
		f.add(p);
		b1.setText("Submit");
		b2.setText("Hint");
		l.setText("What is Draven's name?");
		p.add(tf);
		p.add(b1);
		p.add(b2);
		p.add(l);
		b1.addMouseListener(this);
		b2.addMouseListener(this);
		f.pack();
	}
	@Override
	public void mouseClicked(MouseEvent e) {
		// TODO Auto-generated method stub
		if(e.getSource()==b1) {
			if(tf.getText().equalsIgnoreCase("draven")) {
				System.out.println("Correct");
			} else {
				System.out.println("Incorrect");
			}
		} else {
			System.out.println("The first four leters are 'Drave'");
		}
	}
	@Override
	public void mousePressed(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void mouseReleased(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void mouseEntered(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void mouseExited(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}
	
}
