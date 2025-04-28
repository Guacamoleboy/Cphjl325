package org.example;

import org.abstractica.javacsg.Geometry2D;
import org.abstractica.javacsg.Geometry3D;
import org.abstractica.javacsg.JavaCSG;
import org.abstractica.javacsg.JavaCSGFactory;

public class Main {

    public static void main(String[] args) {
        JavaCSG csg = JavaCSGFactory.createDefault();

        MineDeezNuts mdn = new MineDeezNuts(csg);
        Geometry3D c1 = mdn.createSquare(25, 25, 70, false);
        Geometry3D c2 = mdn.createSquare(25, 25, 70, false);
        Geometry3D c3 = mdn.createSquare(25, 51, 70, false);
        Geometry3D c4 = mdn.createSquare(25, 20, 60, false);
        Geometry3D c5 = mdn.createSquare(25, 20, 60, false);
        Geometry3D c6 = mdn.createSquare(50, 50, 50, false);
        c2 = csg.translate3DY(26).transform(c2);
        c3 = csg.translate3DY(13).transform(c3);
        c3 = csg.translate3DZ(50).transform(c3);
        c4 = csg.translate3DY(50).transform(c4);
        c4 = csg.translate3DZ(60).transform(c4);
        c5 = csg.translate3DY(-25).transform(c5);
        c5 = csg.translate3DZ(60).transform(c5);
        c6 = csg.translate3DY(13).transform(c6);
        c6 = csg.translate3DZ(120).transform(c6);
        Geometry3D result = csg.union3D(c1, c2, c3, c4, c5, c6);
        csg.view(result);

    }

}