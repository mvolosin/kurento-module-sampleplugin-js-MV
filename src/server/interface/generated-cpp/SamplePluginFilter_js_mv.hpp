/* Autogenerated with kurento-module-creator */

#ifndef __SAMPLE_PLUGIN_FILTER_JS_MV_HPP__
#define __SAMPLE_PLUGIN_FILTER_JS_MV_HPP__

#include <jsoncpp/json/json.h>
#include <jsonrpc/JsonRpcException.hpp>
#include <memory>
#include <vector>
#include "Filter.hpp"

namespace kurento
{
namespace module
{
namespace sampleplugin-js-mv
{
class SamplePluginFilter_js_mv;
} /* sampleplugin-js-mv */
} /* module */
} /* kurento */

namespace kurento
{
class JsonSerializer;
void Serialize (std::shared_ptr<kurento::module::sampleplugin-js-mv::SamplePluginFilter_js_mv> &object, JsonSerializer &serializer);
}

namespace kurento
{
class MediaPipeline;
} /* kurento */

namespace kurento
{
namespace module
{
namespace sampleplugin-js-mv
{
class SamplePluginFilter_js_mv : public virtual Filter
{

public:
  SamplePluginFilter_js_mv () {};
  virtual ~SamplePluginFilter_js_mv () {};

  virtual void setFilterType (int filterType) = 0;
  virtual void setEdgeThreshold (int edgeValue) = 0;

  virtual std::string getType () const {
    return "SamplePluginFilter_js_mv";
  }

  virtual std::string getModule () const {
    return "sampleplugin-js-mv";
  }

  virtual void Serialize (JsonSerializer &serializer) = 0;

};

} /* sampleplugin-js-mv */
} /* module */
} /* kurento */

#endif /*  __SAMPLE_PLUGIN_FILTER_JS_MV_HPP__ */