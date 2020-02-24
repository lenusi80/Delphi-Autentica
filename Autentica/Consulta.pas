unit Consulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Mask, Buttons, DB, ADODB, DBCtrls, FR_DSet,
  FR_DBSet, FR_Class;

type
  TFrm_Consulta = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    DataSource1: TDataSource;
    QrTotal: TADOQuery;
    QrTotalTotal: TBCDField;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    ComboBox1: TComboBox;
    Label4: TLabel;
    Button1: TButton;
    frReport1: TfrReport;
    frDBDataSet1: TfrDBDataSet;
    Label5: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Consulta: TFrm_Consulta;

implementation

uses Principal;

{$R *.dfm}

procedure TFrm_Consulta.BitBtn1Click(Sender: TObject);
begin

if ComboBox1.Text <> 'Todos' then
begin
FrmPrincipal.Qr_Registros.Close;
FrmPrincipal.Qr_Registros.SQL.Clear;
FrmPrincipal.Qr_Registros.SQL.Add('select * from tb_registros where data between :data1 and :data2 and especie = "' + ComboBox1.Text + '" order by data desc');
FrmPrincipal.Qr_Registros.Parameters[0].Value := MaskEdit1.Text;
FrmPrincipal.Qr_Registros.Parameters[1].Value := MaskEdit2.Text;
FrmPrincipal.Qr_Registros.Open;

QrTotal.Close;
QrTotal.SQL.Clear;
QrTotal.SQL.Add('select sum(valor) as total from tb_registros where data between :data1 and :data2 and especie = "' + ComboBox1.Text + '"');
QrTotal.Parameters[0].Value := MaskEdit1.Text;
QrTotal.Parameters[1].Value := MaskEdit2.Text;
QrTotal.Open;
end

else
begin
FrmPrincipal.Qr_Registros.Close;
FrmPrincipal.Qr_Registros.SQL.Clear;
FrmPrincipal.Qr_Registros.SQL.Add('select * from tb_registros where data between :data1 and :data2 order by data desc');
FrmPrincipal.Qr_Registros.Parameters[0].Value := MaskEdit1.Text;
FrmPrincipal.Qr_Registros.Parameters[1].Value := MaskEdit2.Text;
FrmPrincipal.Qr_Registros.Open;

QrTotal.Close;
QrTotal.SQL.Clear;
QrTotal.SQL.Add('select sum(valor) as total from tb_registros where data between :data1 and :data2');
QrTotal.Parameters[0].Value := MaskEdit1.Text;
QrTotal.Parameters[1].Value := MaskEdit2.Text;
QrTotal.Open;
end;
MaskEdit1.SetFocus;
end;

procedure TFrm_Consulta.Button1Click(Sender: TObject);
begin
frReport1	.LoadFromFile('c:\autentica\relatorio.frf');
frReport1.ShowReport;
end;

procedure TFrm_Consulta.DBGrid1DblClick(Sender: TObject);
begin
if not FrmPrincipal.Qr_Registros.IsEmpty then
begin
FrmPrincipal.Tb_Registros.locate('Codigo',FrmPrincipal.Qr_Registros.FieldByName('Codigo').AsInteger,[locaseinsensitive]);
FrmPrincipal.Show;
Frm_Consulta.Close;
end;
end;

procedure TFrm_Consulta.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
begin
      Key := #0;
      PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
end;
end;

procedure TFrm_Consulta.FormShow(Sender: TObject);
begin
MaskEdit1.Text := DateToStr(date);
MaskEdit2.Text := DateToStr(date + 30);

FrmPrincipal.Qr_Registros.Requery([]);
QrTotal.Requery([]);

MaskEdit1.SetFocus;
end;

end.
