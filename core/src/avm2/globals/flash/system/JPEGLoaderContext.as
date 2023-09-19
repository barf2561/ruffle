// The initial version of this file was autogenerated from the official AS3 reference at
// https://help.adobe.com/en_US/FlashPlatform/reference/actionscript/3/flash/system/JPEGLoaderContext.html
// by https://github.com/golfinq/ActionScript_Event_Builder
// It won't be regenerated in the future, so feel free to edit and/or fix

package flash.system
{
    public class JPEGLoaderContext extends LoaderContext
    {
        // Specifies the strength of the deblocking filter.
        public var deblockingFilter: Number = 0.0;

        public function JPEGLoaderContext(deblockingFilter:Number = 0.0, checkPolicyFile:Boolean = false, applicationDomain:ApplicationDomain = null, securityDomain:SecurityDomain = null)
        {
            super(checkPolicyFile,applicationDomain,securityDomain);
            this.deblockingFilter = deblockingFilter;
        }
    }
}
