#pragma checksum "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\EventPage\Delete.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "2bfd2bd93b11ccc21302064ad78d6bc9dee5ae71"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(EventManagementFPT.Pages.EventPage.Pages_EventPage_Delete), @"mvc.1.0.razor-page", @"/Pages/EventPage/Delete.cshtml")]
namespace EventManagementFPT.Pages.EventPage
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\_ViewImports.cshtml"
using EventManagementFPT;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"2bfd2bd93b11ccc21302064ad78d6bc9dee5ae71", @"/Pages/EventPage/Delete.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"ad8911db19a2f4f67e8ba363f5e3e568b23507ce", @"/Pages/_ViewImports.cshtml")]
    #nullable restore
    public class Pages_EventPage_Delete : global::Microsoft.AspNetCore.Mvc.RazorPages.Page
    #nullable disable
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("type", "hidden", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-page", "./Index", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("method", "post", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.InputTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\n");
#nullable restore
#line 4 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\EventPage\Delete.cshtml"
  
    ViewData["Title"] = "Delete";

#line default
#line hidden
#nullable disable
            WriteLiteral("\n<div class=\"container py-5\">\n    <h1>Delete</h1>\n\n    <h3>Are you sure you want to delete this?</h3>\n    <div>\n        <h4>Event</h4>\n        <hr/>\n        <dl class=\"row\">\n            <dt class=\"col-sm-2\">\n                ");
#nullable restore
#line 17 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\EventPage\Delete.cshtml"
           Write(Html.DisplayNameFor(model => model.Event.Name));

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </dt>\n            <dd class=\"col-sm-10\">\n                ");
#nullable restore
#line 20 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\EventPage\Delete.cshtml"
           Write(Html.DisplayFor(model => model.Event.Name));

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </dd>\n            <dt class=\"col-sm-2\">\n                ");
#nullable restore
#line 23 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\EventPage\Delete.cshtml"
           Write(Html.DisplayNameFor(model => model.Event.ImageUrl));

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </dt>\n            <dd class=\"col-sm-10\">\n                ");
#nullable restore
#line 26 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\EventPage\Delete.cshtml"
           Write(Html.DisplayFor(model => model.Event.ImageUrl));

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </dd>\n            <dt class=\"col-sm-2\">\n                ");
#nullable restore
#line 29 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\EventPage\Delete.cshtml"
           Write(Html.DisplayNameFor(model => model.Event.Description));

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </dt>\n            <dd class=\"col-sm-10\">\n                ");
#nullable restore
#line 32 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\EventPage\Delete.cshtml"
           Write(Html.DisplayFor(model => model.Event.Description));

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </dd>\n            <dt class=\"col-sm-2\">\n                ");
#nullable restore
#line 35 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\EventPage\Delete.cshtml"
           Write(Html.DisplayNameFor(model => model.Event.CreateDate));

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </dt>\n            <dd class=\"col-sm-10\">\n                ");
#nullable restore
#line 38 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\EventPage\Delete.cshtml"
           Write(Html.DisplayFor(model => model.Event.CreateDate));

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </dd>\n            <dt class=\"col-sm-2\">\n                ");
#nullable restore
#line 41 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\EventPage\Delete.cshtml"
           Write(Html.DisplayNameFor(model => model.Event.StartDate));

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </dt>\n            <dd class=\"col-sm-10\">\n                ");
#nullable restore
#line 44 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\EventPage\Delete.cshtml"
           Write(Html.DisplayFor(model => model.Event.StartDate));

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </dd>\n            <dt class=\"col-sm-2\">\n                ");
#nullable restore
#line 47 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\EventPage\Delete.cshtml"
           Write(Html.DisplayNameFor(model => model.Event.EndDate));

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </dt>\n            <dd class=\"col-sm-10\">\n                ");
#nullable restore
#line 50 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\EventPage\Delete.cshtml"
           Write(Html.DisplayFor(model => model.Event.EndDate));

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </dd>\n            <dt class=\"col-sm-2\">\n                ");
#nullable restore
#line 53 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\EventPage\Delete.cshtml"
           Write(Html.DisplayNameFor(model => model.Event.VenueId));

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </dt>\n            <dd class=\"col-sm-10\">\n                ");
#nullable restore
#line 56 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\EventPage\Delete.cshtml"
           Write(Html.DisplayFor(model => model.Event.VenueId));

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </dd>\n            <dt class=\"col-sm-2\">\n                ");
#nullable restore
#line 59 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\EventPage\Delete.cshtml"
           Write(Html.DisplayNameFor(model => model.Event.Status));

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </dt>\n            <dd class=\"col-sm-10\">\n                ");
#nullable restore
#line 62 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\EventPage\Delete.cshtml"
           Write(Html.DisplayFor(model => model.Event.Status));

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </dd>\n            <dt class=\"col-sm-2\">\n                ");
#nullable restore
#line 65 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\EventPage\Delete.cshtml"
           Write(Html.DisplayNameFor(model => model.Event.CanComment));

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </dt>\n            <dd class=\"col-sm-10\">\n                ");
#nullable restore
#line 68 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\EventPage\Delete.cshtml"
           Write(Html.DisplayFor(model => model.Event.CanComment));

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </dd>\n            <dt class=\"col-sm-2\">\n                ");
#nullable restore
#line 71 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\EventPage\Delete.cshtml"
           Write(Html.DisplayNameFor(model => model.Event.CategoryNavigation));

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </dt>\n            <dd class=\"col-sm-10\">\n                ");
#nullable restore
#line 74 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\EventPage\Delete.cshtml"
           Write(Html.DisplayFor(model => model.Event.CategoryNavigation.Name));

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </dd>\n        </dl>\n\n        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("form", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "2bfd2bd93b11ccc21302064ad78d6bc9dee5ae7112138", async() => {
                WriteLiteral("\n            ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("input", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.SelfClosing, "2bfd2bd93b11ccc21302064ad78d6bc9dee5ae7112407", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.InputTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper);
                __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper.InputTypeName = (string)__tagHelperAttribute_0.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
#nullable restore
#line 79 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\EventPage\Delete.cshtml"
__Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper.For = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.Event.EventId);

#line default
#line hidden
#nullable disable
                __tagHelperExecutionContext.AddTagHelperAttribute("asp-for", __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper.For, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral("\n            <input type=\"submit\" value=\"Delete\" class=\"btn btn-danger\"/> |\n            ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "2bfd2bd93b11ccc21302064ad78d6bc9dee5ae7114237", async() => {
                    WriteLiteral("Back to List");
                }
                );
                __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
                __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Page = (string)__tagHelperAttribute_1.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral("\n        ");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Method = (string)__tagHelperAttribute_2.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_2);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\n    </div>\n</div>\n");
        }
        #pragma warning restore 1998
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<EventManagementFPT.Pages.EventPage.DeleteModel> Html { get; private set; } = default!;
        #nullable disable
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.ViewDataDictionary<EventManagementFPT.Pages.EventPage.DeleteModel> ViewData => (global::Microsoft.AspNetCore.Mvc.ViewFeatures.ViewDataDictionary<EventManagementFPT.Pages.EventPage.DeleteModel>)PageContext?.ViewData;
        public EventManagementFPT.Pages.EventPage.DeleteModel Model => ViewData.Model;
    }
}
#pragma warning restore 1591
