public class Temperature {
    public static Decimal FToC(Decimal fh){
        Decimal C = (fh-32)* 5/9;
        return C.setScale(2);
    }
}