#pragma checksum "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\UserPage\Details.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "8cb8b650a56f536e461e029ee9cedd75362ee4e8"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(EventManagementFPT.Pages.UserPage.Pages_UserPage_Details), @"mvc.1.0.razor-page", @"/Pages/UserPage/Details.cshtml")]
namespace EventManagementFPT.Pages.UserPage
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"8cb8b650a56f536e461e029ee9cedd75362ee4e8", @"/Pages/UserPage/Details.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"ad8911db19a2f4f67e8ba363f5e3e568b23507ce", @"/Pages/_ViewImports.cshtml")]
    #nullable restore
    public class Pages_UserPage_Details : global::Microsoft.AspNetCore.Mvc.RazorPages.Page
    #nullable disable
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-page", "./Edit", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-page", "./Index", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
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
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\n");
#nullable restore
#line 4 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\UserPage\Details.cshtml"
  
    ViewData["Title"] = "Details";

#line default
#line hidden
#nullable disable
            WriteLiteral("<div class=\"container py-5\">\n    <h1>Details</h1>\n\n    <div>\n        <h4>User</h4>\n        <hr/>\n        <dl class=\"row\">\n            <dt class=\"col-sm-2\">\n                ");
#nullable restore
#line 15 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\UserPage\Details.cshtml"
           Write(Html.DisplayNameFor(model => model.User.Name));

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </dt>\n            <dd class=\"col-sm-10\">\n                ");
#nullable restore
#line 18 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\UserPage\Details.cshtml"
           Write(Html.DisplayFor(model => model.User.Name));

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </dd>\n            <dt class=\"col-sm-2\">\n                ");
#nullable restore
#line 21 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\UserPage\Details.cshtml"
           Write(Html.DisplayNameFor(model => model.User.Email));

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </dt>\n            <dd class=\"col-sm-10\">\n                ");
#nullable restore
#line 24 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\UserPage\Details.cshtml"
           Write(Html.DisplayFor(model => model.User.Email));

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </dd>\n            <dt class=\"col-sm-2\">\n                ");
#nullable restore
#line 27 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\UserPage\Details.cshtml"
           Write(Html.DisplayNameFor(model => model.User.Password));

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </dt>\n            <dd class=\"col-sm-10\">\n                ");
#nullable restore
#line 30 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\UserPage\Details.cshtml"
           Write(Html.DisplayFor(model => model.User.Password));

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </dd>\n            <dt class=\"col-sm-2\">\n                ");
#nullable restore
#line 33 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\UserPage\Details.cshtml"
           Write(Html.DisplayNameFor(model => model.User.PhoneNumber));

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </dt>\n            <dd class=\"col-sm-10\">\n                ");
#nullable restore
#line 36 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\UserPage\Details.cshtml"
           Write(Html.DisplayFor(model => model.User.PhoneNumber));

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </dd>\n            <dt class=\"col-sm-2\">\n                ");
#nullable restore
#line 39 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\UserPage\Details.cshtml"
           Write(Html.DisplayNameFor(model => model.User.Avatar));

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </dt>\n            <dd class=\"col-sm-10\">\n                ");
#nullable restore
#line 42 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\UserPage\Details.cshtml"
           Write(Html.DisplayFor(model => model.User.Avatar));

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </dd>\n            <dt class=\"col-sm-2\">\n                ");
#nullable restore
#line 45 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\UserPage\Details.cshtml"
           Write(Html.DisplayNameFor(model => model.User.IsBlocked));

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </dt>\n            <dd class=\"col-sm-10\">\n                ");
#nullable restore
#line 48 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\UserPage\Details.cshtml"
           Write(Html.DisplayFor(model => model.User.IsBlocked));

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </dd>\n            <dt class=\"col-sm-2\">\n                ");
#nullable restore
#line 51 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\UserPage\Details.cshtml"
           Write(Html.DisplayNameFor(model => model.User.Role));

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </dt>\n            <dd class=\"col-sm-10\">\n                ");
#nullable restore
#line 54 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\UserPage\Details.cshtml"
           Write(Html.DisplayFor(model => model.User.Role));

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </dd>\n            <dt class=\"col-sm-2\">\n                ");
#nullable restore
#line 57 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\UserPage\Details.cshtml"
           Write(Html.DisplayNameFor(model => model.User.IsGoogleAuthenticate));

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </dt>\n            <dd class=\"col-sm-10\">\n                ");
#nullable restore
#line 60 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\UserPage\Details.cshtml"
           Write(Html.DisplayFor(model => model.User.IsGoogleAuthenticate));

#line default
#line hidden
#nullable disable
            WriteLiteral("\n            </dd>\n        </dl>\n    </div>\n    <div>\n        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "8cb8b650a56f536e461e029ee9cedd75362ee4e89908", async() => {
                WriteLiteral("Edit");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Page = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            if (__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues == null)
            {
                throw new InvalidOperationException(InvalidTagHelperIndexerAssignment("asp-route-id", "Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper", "RouteValues"));
            }
            BeginWriteTagHelperAttribute();
#nullable restore
#line 65 "D:\FPT-FALL-2022\PRN221\Project\PRN221\EventManagement-main\EventManagementFPT\Pages\UserPage\Details.cshtml"
                               WriteLiteral(Model.User.UserId);

#line default
#line hidden
#nullable disable
            __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"] = __tagHelperStringValueBuffer;
            __tagHelperExecutionContext.AddTagHelperAttribute("asp-route-id", __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"], global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral(" |\n        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "8cb8b650a56f536e461e029ee9cedd75362ee4e812092", async() => {
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<EventManagementFPT.Pages.UserPage.DetailsModel> Html { get; private set; } = default!;
        #nullable disable
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.ViewDataDictionary<EventManagementFPT.Pages.UserPage.DetailsModel> ViewData => (global::Microsoft.AspNetCore.Mvc.ViewFeatures.ViewDataDictionary<EventManagementFPT.Pages.UserPage.DetailsModel>)PageContext?.ViewData;
        public EventManagementFPT.Pages.UserPage.DetailsModel Model => ViewData.Model;
    }
}
#pragma warning restore 1591