package org.as3commons.logging.impl {
	import org.as3commons.logging.ILogTarget;
	import org.as3commons.logging.LogLevel;

	import flash.errors.IllegalOperationError;

	/**
	 * Abstract base class for ILogger implementations.
	 *
	 * @author Christophe Herreman
	 */
	public class AbstractLogger implements ILogTarget {
		
		/**
		 * @inheritDoc
		 */
		public function debug( name: String, timeMs: Number, message:String, params: Array ):void {
			log(name,LogLevel.DEBUG_ONLY, timeMs, message, params);
		}
		
		/**
		 * @inheritDoc
		 */
		public function info( name: String, timeMs: Number, message:String, params: Array ):void {
			log(name,LogLevel.INFO_ONLY, timeMs, message, params);
		}
		
		/**
		 * @inheritDoc
		 */
		public function warn( name: String, timeMs: Number, message:String, params: Array ):void {
			log(name,LogLevel.WARN_ONLY, timeMs, message, params);
		}
		
		/**
		 * @inheritDoc
		 */
		public function error( name: String, timeMs: Number, message:String, params: Array ):void {
			log(name,LogLevel.ERROR_ONLY, timeMs, message, params);
		}
		
		/**
		 * @inheritDoc
		 */
		public function fatal( name: String, timeMs: Number, message:String, params: Array ):void {
			log(name,LogLevel.FATAL_ONLY, timeMs, message, params);
		}
		
		/**
		 * @inheritDoc
		 */
		public function get debugEnabled():Boolean {
			return true;
		}
		
		/**
		 * @inheritDoc
		 */
		public function get infoEnabled():Boolean {
			return true;
		}
		
		/**
		 * @inheritDoc
		 */
		public function get warnEnabled():Boolean {
			return true;
		}
		
		/**
		 * @inheritDoc
		 */
		public function get errorEnabled():Boolean {
			return true;
		}
		
		/**
		 * @inheritDoc
		 */
		public function get fatalEnabled():Boolean {
			return true;
		}
		
		/**
		 * Subclasses must override this method and provide a concrete log implementation.
		 */
		protected function log(name: String, level:LogLevel, timeMs: Number, message:String, params:Array):void {
			throw new IllegalOperationError("The 'log' method is abstract and must be overridden in '" + this + "'");
		}
	}
}