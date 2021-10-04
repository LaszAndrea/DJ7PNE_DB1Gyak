package dj7pne;

import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

public class DJ7PNE_03_09 implements Serializable {

	private static int db = 0;

	public static void main(String[] args) {

		beir();
		try {
			atlag();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		try {
			piros();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		try {
			legdragabb();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		

	}

	private static final long serialVersionUID = 1L;
	String rsz;
	String tipus;
	int ar;

	public DJ7PNE_03_09(String r, String t, int a) {
		this.rsz = r;
		this.tipus = t;
		this.ar = a;
	}

	public static void beir() {
		DJ7PNE_03_09[] autoim = { new DJ7PNE_03_09("R11", "piros", 333), new DJ7PNE_03_09("R12", "fehér", 233),
				new DJ7PNE_03_09("R14", "kék", 364) };

		db = autoim.length;

		try {
			ObjectOutputStream kifile = new ObjectOutputStream(new FileOutputStream("Autok.dat"));
			for (DJ7PNE_03_09 auto : autoim) {
				kifile.writeObject(auto);
			}
			kifile.close();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("File nyitasi hiba");
		}
		System.out.println("OK");
	}

	public static void atlag() throws FileNotFoundException {

		int szum = 0;
		DJ7PNE_03_09 ma;
		try {
			File fn = new File("Autok.dat");
			if (fn.exists()) {
				ObjectInputStream kifile = new ObjectInputStream(new FileInputStream("Autok.dat"));
				try {
					while (true) {
						ma = (DJ7PNE_03_09) kifile.readObject();
						szum = szum + ma.ar;
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
		
		System.out.println("Az autok atlagara: " + szum/db);

	}
	
	public static void piros() throws FileNotFoundException {

		int pirosak =0;
		DJ7PNE_03_09 ma;
		try {
			File fn = new File("Autok.dat");
			if (fn.exists()) {
				ObjectInputStream kifile = new ObjectInputStream(new FileInputStream("Autok.dat"));
				try {
					while (true) {
						ma = (DJ7PNE_03_09) kifile.readObject();
						if(ma.tipus.equalsIgnoreCase("piros")) {
							pirosak++;
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
		
		System.out.println("A piros autok szama: " + pirosak);

	}
	
	public static void legdragabb() throws FileNotFoundException {

		DJ7PNE_03_09 ma;
		try {
			File fn = new File("Autok.dat");
			if (fn.exists()) {
				DJ7PNE_03_09 max;
				ObjectInputStream kifile = new ObjectInputStream(new FileInputStream("Autok.dat"));
				max = (DJ7PNE_03_09)kifile.readObject();
				try {
					while (true) {
						ma = (DJ7PNE_03_09) kifile.readObject();
						if(ma.ar>max.ar) {
							max = ma;
						}
					}
				} catch (EOFException ee) {
					ma = null;
				}
				kifile.close();
				System.out.println("A legdragabb auto rendszama: " + max.rsz + " és az ára " + max.ar);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("File nyitasi hiba");
		}
		

	}

}
