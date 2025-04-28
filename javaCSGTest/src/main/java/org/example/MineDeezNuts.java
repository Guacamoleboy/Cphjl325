package org.example;

import org.abstractica.javacsg.Geometry3D;
import org.abstractica.javacsg.JavaCSG;

public class MineDeezNuts {

    // Attrtibutes
    private final JavaCSG csg;

    // _________________________________________

    public MineDeezNuts(JavaCSG csg){
        this.csg = csg;
    }

    // _________________________________________

    public Geometry3D createSquare(double x, double y, double z, boolean centerZ){
        return csg.box3D(x, y, z, centerZ);
    }


}
