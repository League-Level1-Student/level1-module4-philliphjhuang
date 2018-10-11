import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;

public class TemperatureConverter implements MouseListener {

	JFrame f = new JFrame();
	JPanel p = new JPanel();
	JButton b = new JButton();
	JLabel l = new JLabel();
	JLabel l1 = new JLabel();
	JTextField tf = new JTextField(5);
	double y;
	String x;
	
	
	public static void main(String[] args) {
	TemperatureConverter TC = new TemperatureConverter();	
	TC.setUp();
	}
	
	public void setUp() {
		f.add(p);
		f.setVisible(true);
		p.add(b);
		p.add(l);
		p.add(l1);
		p.add(tf);
		l1.setText("0");
		
	
		b.setText("Convert");
		f.setTitle("Temperature Converter");
		l.setText("fahrenheit to celsius            ");
		
		b.addMouseListener(this);
		f.pack();
		
	}

	@Override
	public void mouseClicked(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void mousePressed(MouseEvent e) {
		// TODO Auto-generated method stub
		
		if(e.getSource()==b) {
			y = Double.parseDouble(tf.getText());
			y = (5.0/9.0)*(y-32.0);
			x = Double.toString(y);
			l1.setText(x);
		}
		
		
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
