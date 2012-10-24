



import DateTagLib;
import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.web.GroovyPageUnitTestMixin} for usage instructions
 */
//@TestFor(DateTagLib)
//class DateTagLibTests {
//
//    void testSomething() {
//        fail "Implement me"
//    }
//}



class DateTagLibTests extends GroovyTestCase {
def dateTagLib

void setUp(){
dateTagLib = new DateTagLib()
}

void testThisYear() {
String expected = Calendar.getInstance().get(Calendar.YEAR)
assertEquals("the years don't match", expected, dateTagLib.thisYear())
}
}