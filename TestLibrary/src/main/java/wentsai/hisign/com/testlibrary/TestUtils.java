package wentsai.hisign.com.testlibrary;

/**
 * Created by hongzhen on 2017/11/24.
 */

public class TestUtils {
    static {
        System.loadLibrary("Test");
    }
    public static native void getName();
}
