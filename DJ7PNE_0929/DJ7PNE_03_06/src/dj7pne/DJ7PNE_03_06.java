package dj7pne;

import java.io.FileOutputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

public class DJ7PNE_03_06 implements Serializable {

	public static void main(String[] args) {

		hf4();
		try {
			visszaolvas();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		
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
	
	public static void visszaolvas() throws FileNotFoundException {
		
		Scanner sc = new Scanner(System.in);
		System.out.println("Hanyadik rekordot szeretne visszaolvasni? Eddig " + db + " adat van");
		boolean ok = true;
		int olvas = 0;
		do {
			try {
				ok = true;
				olvas = sc.nextInt();
				if (olvas <= 0 || olvas > 10) {
					System.out.println("nem jo szamot adott meg");
					ok = false;
				}
			} catch (NumberFormatException e) {
				System.out.println(e);
				ok = false;
			}
		} while (!ok);
		
		sc.close();
		
		int sor =1;
		DJ7PNE_03_06 ma;
		try {
			File fn = new File("Autok.dat");
			if (fn.exists()) {
				ObjectInputStream kifile = new ObjectInputStream(new FileInputStream("Autok.dat"));
				try {
					while (true) {
						ma = (DJ7PNE_03_06) kifile.readObject();
						if (sor==olvas) {
							System.out.println("rendszam=" + ma.rsz);
							System.out.println("tipus=" + ma.tipus);
							System.out.println("ar=" + ma.ar);
						}
						sor++;
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
		
		sc.close();

		
		
	}

}
