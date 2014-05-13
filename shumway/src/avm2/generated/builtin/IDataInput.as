/* ***** BEGIN LICENSE BLOCK *****
 * Version: MPL 1.1/GPL 2.0/LGPL 2.1
 *
 * The contents of this file are subject to the Mozilla Public License Version
 * 1.1 (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 * http://www.mozilla.org/MPL/
 *
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
 * for the specific language governing rights and limitations under the
 * License.
 *
 * The Original Code is [Open Source Virtual Machine.].
 *
 * The Initial Developer of the Original Code is
 * Adobe System Incorporated.
 * Portions created by the Initial Developer are Copyright (C) 2004-2006
 * the Initial Developer. All Rights Reserved.
 *
 * Contributor(s):
 *   Adobe AS3 Team
 *
 * Alternatively, the contents of this file may be used under the terms of
 * either the GNU General Public License Version 2 or later (the "GPL"), or
 * the GNU Lesser General Public License Version 2.1 or later (the "LGPL"),
 * in which case the provisions of the GPL or the LGPL are applicable instead
 * of those above. If you wish to allow use of your version of this file only
 * under the terms of either the GPL or the LGPL, and not to allow others to
 * use your version of this file under the terms of the MPL, indicate your
 * decision by deleting the provisions above and replace them with the notice
 * and other provisions required by the GPL or the LGPL. If you do not delete
 * the provisions above, a recipient may use your version of this file under
 * the terms of any one of the MPL, the GPL or the LGPL.
 *
 * ***** END LICENSE BLOCK ***** */

package flash.utils
{
  // Need to include this because IDataInput.as is not included into builtin.as.
  include "api-versions.as";

  public interface IDataInput
  {
    function readBytes(bytes:ByteArray,
                       offset:uint=0,
                       length:uint=0):void;
    function readBoolean():Boolean;
    function readByte():int;
    function readUnsignedByte():uint;
    function readShort():int;
    function readUnsignedShort():uint;
    function readInt():int;
    function readUnsignedInt():uint;
    function readFloat():Number;
    function readDouble():Number;
    function readMultiByte(length:uint, charSet:String):String;
    function readUTF():String;
    function readUTFBytes(length:uint):String;
    function get bytesAvailable():uint;
    function readObject():*;

    function get objectEncoding():uint;
    function set objectEncoding(version:uint):void;

    function get endian():String;
    function set endian(type:String):void;
  }

  /**
   * Like IDataInput but provides readFloat4() additionally.
   */
  //[API(CONFIG::SWF_16)]
  CONFIG::VMCFG_FLOAT
  public interface IDataInput2 extends IDataInput
  {
    function readFloat4(): float4;
  }

}
