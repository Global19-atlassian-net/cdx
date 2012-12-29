if not window.$CDX
  window.$CDX = {}
$CDX = window.$CDX
if not $CDX.Models
  $CDX.Models = {}
if not $CDX.Collections
  $CDX.Collections = {}

#console.log("value of Continuum.HasParent", Continuum.HasParent)

class $CDX.Models.CDXPlotContext extends Continuum.HasParent
  type : 'CDXPlotContext',
  default_view : $CDX.Views.CDXPlotContextView
  url : () ->
    return super()
  defaults :
    children : []
    render_loop : true

class $CDX.Collections.CDXPlotContexts extends Backbone.Collection
  model : $CDX.Models.CDXPlotContext

Continuum.Collections.CDXPlotContext = new $CDX.Collections.CDXPlotContexts()