
//
//
//
//import javax.servlet.ServletContextEvent;
//import javax.servlet.ServletContextListener;
//import javax.servlet.annotation.WebListener;
//import java.sql.SQLException;
//
//@WebListener
//public class Initializer implements ServletContextListener {
//    DatabaseManager databaseManager = DatabaseManager.getInstance();
//
//
//    @Override
//    public void contextInitialized(ServletContextEvent sce) {
//
//        try {
//            databaseManager.setup();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }

//
//          //setting up a new supplier
//                  Supplier blahaGsm = new Supplier("Blaha GSM ", "Minden ami mobil,tablet nem lopott eredeti áru");
//                  databaseManager.addSupplier(blahaGsm);
//                  Supplier blahaHand = new Supplier("Blaha Hand", "Legkomolyabb hely ha second hand kell, if ju nó wat áj mín ;)");
//                  databaseManager.addSupplier(blahaHand);
//                  Supplier gyros = new Supplier("Blaha Gyros", "Gyros");
//                  databaseManager.addSupplier(gyros);
//                  Supplier meki = new Supplier("Meki", "Meki");
//                  databaseManager.addSupplier(meki);
//
//                  //setting up a new product category
//                  ProductCategory notStolen = new ProductCategory("Nem Lopott", "Hardware", "Esku nem lopott tesam", "not_stolen");
//                  databaseManager.addCategory(notStolen);
//                  ProductCategory blahaOriginals = new ProductCategory("Blaha Originals", "Minden ami blaha!", "Töltött cigitől a használt bkk jegyik mindent megtalálsz", "blaha_originals");
//                  databaseManager.addCategory(blahaOriginals);
//                  ProductCategory food = new ProductCategory("Kaja", "Food", "Finom gyros hagyma csipos?", "food");
//                  databaseManager.addCategory(food);
//
//                  //setting up products and printing it
//                  databaseManager.addProduct(new Product("Amazon Fire", 49, "USD", "Fantastic price. Large content ecosystem. Good parental controls. Helpful technical support.", notStolen, blahaGsm));
//                  databaseManager.addProduct(new Product("Lenovo IdeaPad Miix 700", 479, "USD", "Keyboard cover is included. Fanless Core m5 processor. Full-size USB ports. Adjustable kickstand.", notStolen, blahaGsm));
//                  databaseManager.addProduct(new Product("Amazon Fire HD 8", 89, "USD", "Amazon's latest Fire HD 8 tablet is a great value for media consumption.", notStolen, blahaHand));
//                  databaseManager.addProduct(new Product("Blahas Gyros", 499, "HUF", "Legfinomabb gyros a vilagon", food, gyros));
//                  databaseManager.addProduct(new Product("Sajtbuci herballal", 300, "HUF", "EkiMeki special", food, meki));
//                  databaseManager.addProduct(new Product("Tőtött cigi", 120, "HUF", "Zamatos hungária dohánnyal töltött C", blahaOriginals, blahaHand));
//                  databaseManager.addProduct(new Product("Rolex Submarine", 50000, "HUF", "Teljesen eredeti hiddmárel hogy nem lopott tesóm.", blahaOriginals, blahaHand));
//                  databaseManager.addProduct(new Product("Armani parfüm", 6000, "HUF", "Eredeti armani parfüm, csak neked nagyon olcsón.", blahaOriginals, blahaHand));
//                  databaseManager.addProduct(new Product("Apple iPhone 6", 20000, "HUF", "Szinte új alig használt, nem dohányzó első tulajos telefon, csak töltő van hozzá, ha most elviszed egy tokot is adok mellé!", blahaOriginals, blahaGsm));
//
//    }
//}
