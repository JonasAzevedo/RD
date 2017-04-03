unit ColorMemo;

{ TODO -oshausle : WordWrap does not paint correct }
interface
uses
  SysUtils, Types, Classes, QGraphics, QControls, QForms, QDialogs,
  QStdCtrls, qt;

type
  // uses Zero based line numbers (same as memo.Lines)
  TSyntaxBlockDrawMode = (dmFontOnly, dmBgOnly, dmBoth);
  TSyntaxBlock = record
    StartLine, EndLine : Integer;
    FontColor : TColor;
    BgColor : TColor;
    DrawMode : TSyntaxBlockDrawMode;
    Enabled : boolean;
  end;

  TBlockMemo = class(TMemo)
  private
    FrameCanvas: TQtCanvas;
    FShowLineNum: boolean;
    FModified: boolean;
    FRescanNeeded: boolean;
    function  GetAdjustedLine(index : integer):String;
    procedure KeyPress(var Key: Char); override;
  public
    SyntaxBlock : TSyntaxBlock;
    constructor Create(AOwner : TComponent); override;
    function EventFilter(Sender: QObjectH; Event: QEventH): Boolean; override;
    property ShowLineNumbers :boolean read FShowLineNum write FShowLineNum;
    procedure SelectBlock(SyntaxBlock :TSyntaxBlock);
    procedure GotoTop;
    property Modified :boolean read FModified write FModified;
    property RescanNeeded :boolean read FRescanNeeded write FRescanNeeded;
  end;

implementation
constructor TBlockMemo.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  //FrameCanvas := TQtCanvas.Create;
  FShowLineNum := false;
  SyntaxBlock.DrawMode := dmFontOnly;
  SyntaxBlock.Enabled := false;

end;

// EventFilter stub from MDuncan.
function TBlockMemo.EventFilter(Sender: QObjectH; Event: QEventH): Boolean;
var
  i, posX, posy, topCell, lastCell, cellHeight: Integer;
  offsetx,offsety : integer;
  aRect : TRect;
  aPRect : pRect;
  aBrush : QBrushH;
begin
  { normal processing. This is imperative...}
    Result := inherited EventFilter(Sender, Event);
  {check the event is a paint event, and the intended recipient is the frame part of the form}
  // if enabled
  // if syntaxBlockVisible
 if ((QEvent_type(Event) = QEventType_Paint) or (QEvent_type(Event) = QEventType_MouseButtonPress)
    or(QEvent_type(Event) = QEventType_MouseButtonRelease))
    and (Sender = Handle) then
  begin
    { create a canvas to draw on the frame part; the Form's Canvas actually
      paints on the viewport by default }
    try
      FrameCanvas := TQtCanvas.Create;
      FrameCanvas.QtHandle := Handle;
      posX :=4; // Left Margin
      posY :=2; // Top Margin

      // only scan if enabled;
      if SyntaxBlock.Enabled then
      begin
        // a Cell is synonamous to memo.lines[i]
        cellHeight := QOpenTableView_cellHeight(Handle);
        TopCell  := QOpenTableView_topCell(Handle);       // First Visible Cell
        LastCell := QOpenTableView_lastRowVisible(Handle);// Last Visible Cell
        // Get the offsets of the visible area
        offsety := QOpenTableView_yOffset(Handle);
        offsetx := QOpenTableView_xOffset(Handle);
        // set posY to pos of FirstVisibleCell
        posY := posY + (TopCell * cellHeight);

        for i := TopCell   to LastCell do
        begin
          //FrameCanvas.TextOut(tx-offsetx,ty-offsety, GetAdjustedLine(i));
          if (i>=SyntaxBlock.StartLine) and (i<=SyntaxBlock.EndLine) then
          begin
            // Clear the old text and paint the BGcolor if used
            aRect.Left := posx-offsetx;
            aRect.Top := posY-offsety;
            aRect.right := QOpenTableView_cellWidth(Handle,i);
            aRect.Bottom := aRect.Top + QOpenTableView_CellHeight(Handle,0);
            if (SyntaxBlock.DrawMode = dmBgOnly) or (SyntaxBlock.DrawMode = dmBoth) then
              FrameCanvas.brush.Color := SyntaxBlock.BgColor;
            FrameCanvas.Brush.Style := bsSolid;
            FrameCanvas.FillRect(aRect);
            //aBrush := QPainter_brush(FrameCanvas.Handle);
           // QPainter_fillRect(FrameCanvas.Handle,@aRect,aBrush);
            //FrameCanvas.TextRect(aRect,posX-offsetx,posY-offsety, GetAdjustedLine(i));

            // Draw the Text using the new color;
            FrameCanvas.Font.Color := SyntaxBlock.FontColor;
            FrameCanvas.TextOut(posX-offsetx,posY-offsety, GetAdjustedLine(i));
            //FrameCanvas.TextExtent(self.Lines[i],aRect);
            //DrawShadeRect(FrameCanvas,aRect,false,1,1, Palette.colorgroup(cgActive) );
          end;
          // inc pos marker
          inc(posY, cellHeight);
        end;  // end for i
      end; // end if enabled;
      { do your painting here. It will be clipped by the viewport, as it should }
    finally
      FrameCanvas.Free;
    end;
  end;
end;

function TBlockMemo.GetAdjustedLine(index: integer): String;
begin
  if ShowLineNumbers then
    result := inttostr(index) + ': ' + self.lines[index]
  else
    result := self.lines[index];
end;

procedure TBlockMemo.GotoTop;
begin
  QOpenTableView_setTopCell(Handle,0);
  Self.Repaint;
end;

procedure TBlockMemo.KeyPress(var Key: Char);
begin
  // Set Modified state
  Modified := true;

  // set rescan state
  if Key=#13 then RescanNeeded := true;

  // are we in a Highlight Block ?
  if (CaretPos.Line>=SyntaxBlock.StartLine) and (CaretPos.Line<=SyntaxBlock.EndLine) then
  begin
    // set rescan state
    RescanNeeded:=true;
    // handle a new line
    if Key=#13 then
      inc(SyntaxBlock.EndLine);
  end;

  inherited;
end;

procedure TBlockMemo.SelectBlock(SyntaxBlock: TSyntaxBlock);
var
  cpos : TCaretPos;
begin
  self.SyntaxBlock := SyntaxBlock;
  cpos.Line := SyntaxBlock.StartLine;
  cpos.Col := 0;
  Self.Lines.BeginUpdate;
    self.CaretPos := cpos;
  Self.Lines.EndUpdate;
  QOpenTableView_setTopCell(Handle,SyntaxBlock.StartLine -1);
  Self.Repaint;
end;

end.
