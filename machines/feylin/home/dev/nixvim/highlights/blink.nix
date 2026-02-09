{ hmConfig, ... }:

let
  colors = hmConfig.theme.colorscheme;
in
{
  highlight = {
    BlinkCmpLabel.fg = colors.gray;
    BlinkCmpLabelDeprecated = {
      fg = colors.dark-gray;
      strikethrough = true;
    };
    BlinkCmpKind.fg = colors.blue;
    BlinkCmpMenu.link = "Pmenu";
    BlinkCmpDoc.link = "NormalFloat";
    BlinkCmpLabelMatch.link = "PmenuMatch";
    BlinkCmpMenuSelection = {
      bg = colors.dark-gray;
      bold = true;
    };
    BlinkCmpScrollBarGutter.bg = colors.dark-gray;
    BlinkCmpScrollBarThumb.bg = colors.dark-gray;
    BlinkCmpLabelDescription.link = "PmenuExtra";
    BlinkCmpLabelDetail.link = "PmenuExtra";
    BlinkCmpSignatureHelpBorder.link = "FloatBorder";
    BlinkCmpMenuBorder.link = "FloatBorder";
    BlinkCmpDocBorder.link = "FloatBorder";

    BlinkCmpKindText.fg = colors.green;
    BlinkCmpKindMethod.fg = colors.lighter-gray;
    BlinkCmpKindFunction.fg = colors.cyan;
    BlinkCmpKindConstructor.fg = colors.blue;
    BlinkCmpKindField.fg = colors.lighter-gray;
    BlinkCmpKindVariable.fg = colors.purple;
    BlinkCmpKindClass.fg = colors.blue;
    BlinkCmpKindInterface.fg = colors.orange;
    BlinkCmpKindModule.fg = colors.purple;
    BlinkCmpKindProperty.fg = colors.lighter-gray;
    BlinkCmpKindUnit.fg = colors.green;
    BlinkCmpKindValue.fg = colors.lighter-gray;
    BlinkCmpKindEnum.fg = colors.red;
    BlinkCmpKindKeyword.fg = colors.pink;
    BlinkCmpKindSnippet.fg = colors.purple;
    BlinkCmpKindColor.fg = colors.pink;
    BlinkCmpKindFile.fg = colors.green;
    BlinkCmpKindReference.fg = colors.green;
    BlinkCmpKindFolder.fg = colors.green;
    BlinkCmpKindEnumMember.fg = colors.orange;
    BlinkCmpKindConstant.fg = colors.green;
    BlinkCmpKindStruct.fg = colors.orange;
    BlinkCmpKindEvent.fg = colors.cyan;
    BlinkCmpKindOperator.fg = colors.green;
    BlinkCmpKindTypeParameter.fg = colors.orange;
  };
}
