package dj7pne;

import java.io.FileOutputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

public class DJ7PNE_03_06 implements Serializable {

	public static void main(String[] args) {

		hf4();
		
	}
	
	
	private static final long serialVersionUID = 1L;
	String rsz;
	String tipus;
	int ar;

	public DJ7PNE_03_06(String r, String t, int a) {
		this.rsz = r;
		this.tipus = t;
		this.ar = a;
	}

	public static void hf4() {
		DJ7PNE_03_06[] autoim = { new DJ7PNE_03_06("R11", "Opel", 333), new DJ7PNE_03_06("R12", "Fiat", 233),
				new DJ7PNE_03_06("R14", "Skoda", 364) };
		try {
			ObjectOutputStream kifile = new ObjectOutputStream(new FileOutputStream("Autok.dat"));
			for (DJ7PNE_03_06 auto : autoim) {
				kifile.writeObject(auto);
			}
			kifile.close();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("File nyitasi hiba");
		}
		System.out.println("OK");
	}

}
