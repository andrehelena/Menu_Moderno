unit View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, Vcl.WinXCtrls, Vcl.CategoryButtons;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    ImageList1: TImageList;
    SV_Menu: TSplitView;
    CategoryButtons_Principal: TCategoryButtons;
    CategoryButtons_Sair: TCategoryButtons;
    SV_SubMenu: TSplitView;
    CategoryButtons_Cadastro: TCategoryButtons;
    CategoryButtons_Compras: TCategoryButtons;
    procedure Image1Click(Sender: TObject);
    procedure CategoryButtons_SairCategories0Items0Click(Sender: TObject);
    procedure CategoryButtons_PrincipalCategories0Items0Click(Sender: TObject);
    procedure CategoryButtons_PrincipalCategories0Items1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CategoryButtons_ComprasCategories0Items0Click(Sender: TObject);
  private
    procedure closeSubMenu(Sender: TObject);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.CategoryButtons_ComprasCategories0Items0Click(Sender: TObject);
begin
  	SV_Menu.Close;
    SV_SubMenu.Close;
end;

procedure TForm1.CategoryButtons_PrincipalCategories0Items0Click(Sender: TObject);
begin
	closeSubMenu(SV_SubMenu);
	CategoryButtons_Cadastro.Visible := True;
	CategoryButtons_Cadastro.Enabled := True;
end;

procedure TForm1.CategoryButtons_PrincipalCategories0Items1Click(Sender: TObject);
begin
	closeSubMenu(SV_SubMenu);
	CategoryButtons_Compras.Visible := True;
	CategoryButtons_Compras.Enabled := True;
end;

procedure TForm1.CategoryButtons_SairCategories0Items0Click(Sender: TObject);
begin
	Close;
end;

procedure TForm1.closeSubMenu(Sender: TObject);
begin
  CategoryButtons_Cadastro.Visible := False;
	CategoryButtons_Compras.Visible := False;
	CategoryButtons_Cadastro.Enabled := False;
	CategoryButtons_Compras.Enabled:= False;
	if TSplitView(Sender).Opened then
		TSplitView(Sender).Close
	else
		TSplitView(Sender).Open;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
	SV_Menu.AnimationDelay := 0;
  SV_Menu.AnimationStep := 0;
	SV_SubMenu.AnimationDelay := 0;
  SV_SubMenu.AnimationStep := 0;
	SV_Menu.Close;
  SV_SubMenu.Close;
	SV_SubMenu.AnimationDelay := 15;
  SV_SubMenu.AnimationStep := 20;
	SV_Menu.AnimationDelay := 15;
  SV_Menu.AnimationStep := 20;
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
	if SV_Menu.Opened then
  begin
  	SV_Menu.Close;
    SV_SubMenu.Close;
  end else
	  SV_Menu.Open;
end;

end.
