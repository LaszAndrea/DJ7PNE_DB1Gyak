package dj7pne;

import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

public class DJ7PNE_03_07 implements Serializable {

	public static void main(String[] args) {

		hf4();
		hf5();
		
	}
	
	private static final long serialVersionUID = 1L;
	String rsz;
	String tipus;
	int ar;

	public DJ7PNE_03_07(String r, String t, int a) {
		this.rsz = r;
		this.tipus = t;
		this.ar = a;
	}

	public static void hf4() {
		DJ7PNE_03_07[] autoim = { new DJ7PNE_03_07("R11", "Opel", 333), new DJ7PNE_03_07("R12", "Fiat", 233),
				new DJ7PNE_03_07("R14", "Skoda", 364) };
		try {
			ObjectOutputStream kifile = new ObjectOutputStream(new FileOutputStream("Autok.dat"));
			for (DJ7PNE_03_07 auto : autoim) {
				kifile.writeObject(auto);
			}
			kifile.close();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("File nyitasi hiba");
		}
		System.out.println("OK");
	}

	public static void hf5() {
		DJ7PNE_03_07 ma;
		try {
			File fn = new File("Autok.dat");
			if (fn.exists()) {
				ObjectInputStream kifile = new ObjectInputStream(new FileInputStream("Autok.dat"));
				try {
					while (true) {
						ma = (DJ7PNE_03_07) kifile.readObject();
						if (ma.ar > 300) {
							System.out.println("rendszam=" + ma.rsz);
						}
					}
				} catch (EOFException ee) {
					ma = null;
				}
				kifile.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("File nyitasi hiba");
		}
		System.out.println("OK2");
	}

}
