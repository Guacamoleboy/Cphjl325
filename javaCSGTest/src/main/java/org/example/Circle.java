package org.example;

import org.abstractica.javacsg.Geometry2D;
import org.abstractica.javacsg.JavaCSG;
import org.abstractica.javacsg.Vector2D;

import java.util.ArrayList;

public class Circle {

    // Attribute
    private final JavaCSG csg;

    // _______________________________________________

    public Circle(JavaCSG csg) {
        this.csg = csg;
    }

    // _______________________________________________

    public Geometry2D circle(double diameter, int angularResolution) {
        double radius = diameter / 2 ;
        double v = Math.PI * 2 / angularResolution;
        ArrayList<Vector2D> points = new ArrayList<>();
        for (int i = 0; i < angularResolution; i++) {
            double x = Math.cos(v*i) * radius;
            double y = Math.sin(v*i) * radius;
            Vector2D point = csg.vector2D(x, y);
            points.add(point);
        }
        return csg.polygon2D(points);
    }

}