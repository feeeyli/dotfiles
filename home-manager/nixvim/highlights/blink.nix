{ color, ... }:

{
  highlight = {
    BlinkCmpLabel.fg = color "04";
    BlinkCmpLabelDeprecated = {
      fg = color "02";
      strikethrough = true;
    };
    BlinkCmpKind.fg = color "0D";
    BlinkCmpMenu.link = "Pmenu";
    BlinkCmpDoc.link = "NormalFloat";
    BlinkCmpLabelMatch.link = "PmenuMatch";
    BlinkCmpMenuSelection = {
      bg = color "01";
      bold = true;
    };
    BlinkCmpScrollBarGutter.bg = color "01";
    BlinkCmpScrollBarThumb.bg = color "02";
    BlinkCmpLabelDescription.link = "PmenuExtra";
    BlinkCmpLabelDetail.link = "PmenuExtra";
    BlinkCmpSignatureHelpBorder.link = "FloatBorder";
    BlinkCmpMenuBorder.link = "FloatBorder";
    BlinkCmpDocBorder.link = "FloatBorder";

    BlinkCmpKindText.fg = color "0B";
    BlinkCmpKindMethod.fg = color "06";
    BlinkCmpKindFunction.fg = color "0C";
    BlinkCmpKindConstructor.fg = color "0D";
    BlinkCmpKindField.fg = color "06";
    BlinkCmpKindVariable.fg = color "0F";
    BlinkCmpKindClass.fg = color "0D";
    BlinkCmpKindInterface.fg = color "09";
    BlinkCmpKindModule.fg = color "0F";
    BlinkCmpKindProperty.fg = color "06";
    BlinkCmpKindUnit.fg = color "0B";
    BlinkCmpKindValue.fg = color "06";
    BlinkCmpKindEnum.fg = color "09";
    BlinkCmpKindKeyword.fg = color "0E";
    BlinkCmpKindSnippet.fg = color "0F";
    BlinkCmpKindColor.fg = color "0E";
    BlinkCmpKindFile.fg = color "0B";
    BlinkCmpKindReference.fg = color "0B";
    BlinkCmpKindFolder.fg = color "0B";
    BlinkCmpKindEnumMember.fg = color "09";
    BlinkCmpKindConstant.fg = color "0B";
    BlinkCmpKindStruct.fg = color "09";
    BlinkCmpKindEvent.fg = color "0C";
    BlinkCmpKindOperator.fg = color "0B";
    BlinkCmpKindTypeParameter.fg = color "09";
  };
}
