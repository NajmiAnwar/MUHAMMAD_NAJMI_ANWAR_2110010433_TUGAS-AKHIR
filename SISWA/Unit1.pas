unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    con1: TZConnection;
    zqry1: TZQuery;
    con2: TADOConnection;
    qry1: TADOQuery;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    lbl1: TLabel;
    edt1: TEdit;
    lbl2: TLabel;
    edt2: TEdit;
    cbb1: TComboBox;
    lbl3: TLabel;
    lbl4: TLabel;
    dtp1: TDateTimePicker;
    lbl5: TLabel;
    edt3: TEdit;
    btn1: TButton;
    btn2: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into output values("'+edt1.Text+'","'+edt2.Text+'",null,null,"'+edt3.Text+'")');
zqry1.ExecSQL ;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from output');
zqry1.Open;
end;

end.
