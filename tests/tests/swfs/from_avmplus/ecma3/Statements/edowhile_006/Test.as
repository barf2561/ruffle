/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */
package {
import flash.display.MovieClip; public class Test extends MovieClip {}
}

import com.adobe.test.Assert;
//     var SECTION = "dowhile-006";
//     var VERSION = "ECMA_2";
//     var TITLE   = "do...while";


    var testcases = getTestCases();
    
    
function getTestCases() {
    var array = new Array();
    var item = 0;

    DoWhile( new DoWhileObject( false, false, 10 ) );
    DoWhile( new DoWhileObject( true, false, 2 ) );
    DoWhile( new DoWhileObject( false, true, 3 ) );
    DoWhile( new DoWhileObject( true, true, 4 ) );

    
    function looping( object ) {
        object.iterations--;
    
        if ( object.iterations <= 0 ) {
            return false;
        } else {
            return true;
        }
    }
    function DoWhileObject( breakOut, breakIn, iterations, loops ) {
        this.iterations = iterations;
        this.loops = loops;
        this.breakOut = breakOut;
        this.breakIn  = breakIn;
        this.looping  = looping;
    }
    function DoWhile( object ) {
        var result1 = false;
        var result2 = false;
    
        outie: {
            innie: {
                do {
                    if ( object.breakOut )
                        break outie;
    
                    if ( object.breakIn )
                        break innie;
    
                } while ( looping(object) );
    
                //  statements should be executed if:
                //  do...while exits normally
                //  do...while exits abruptly with no label
    
                result1 = true;
    
            }
    
            //  statements should be executed if:
            //  do...while breaks out with label "innie"
            //  do...while exits normally
            //  do...while does not break out with "outie"
    
            result2 = true;
        }
    
        array[item++] = Assert.expectEq(
            
            "hit code after loop in inner loop",
            ( object.breakIn || object.breakOut ) ? false : true ,
            result1 );
    
        array[item++] = Assert.expectEq(
            
            "hit code after loop in outer loop",
            ( object.breakOut ) ? false : true,
            result2 );
            
      
    }
    return array;
}
