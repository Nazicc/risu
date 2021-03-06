# Copyright (c) 2010-2017 Jacob Hammack.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NON INFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.


module Risu
	module Parsers
		module Nessus
			module PostProcess
				class CiscoAnyConnectPatchRollup < Risu::Base::PostProcessBase

					#
					def initialize
						@info =
						{
							:description => "Cisco AnyConnect Client Patch Rollup",
							:plugin_id => -99961,
							:plugin_name => "Update to the latest Cisco AnyConnect Client",
							:item_name => "Update to the latest Cisco AnyConnect Client",
							:plugin_ids => [
								76491,
								81978,
								86302,
								78676,
								81671,
								82270,
								85266,
								85267,
								85541,
								87894,
								88100,
								54954,
								59820,
								93382,
								71464,
								


							]
						}
					end
				end
			end
		end
	end
end
