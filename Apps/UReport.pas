unit UReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, frxpngimage, QuickRpt, ExtCtrls, jpeg;

type
  TFReport = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape1: TQRShape;
    QRLabel4: TQRLabel;
    QRShape2: TQRShape;
    QRDBText1: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText5: TQRDBText;
    QRShape5: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape6: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText7: TQRDBText;
    QRShape7: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText8: TQRDBText;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FReport: TFReport;

implementation

uses
  DataModule, UKwintansi;

{$R *.dfm}

end.
