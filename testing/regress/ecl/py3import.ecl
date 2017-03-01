/*##############################################################################

    HPCC SYSTEMS software Copyright (C) 2014 HPCC Systems.

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
############################################################################## */

//class=embedded

import python3;
string pcat(string a, string b) := IMPORT(Python3, '/opt/HPCCSystems/examples/embed/python_cat.cat':time);
pcat('Hello ', 'world!');

integer padd(integer a, integer b) := EMBED(Python3 :time)
   return a + b
ENDEMBED;
padd(1, 2)*5;
