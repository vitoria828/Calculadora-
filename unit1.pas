unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    Visor: TEdit;
    Quatro: TSpeedButton;
    Multiplicar: TSpeedButton;
    Cinco: TSpeedButton;
    Dois: TSpeedButton;
    Menos: TSpeedButton;
    Dividir: TSpeedButton;
    Um: TSpeedButton;
    Igual: TSpeedButton;
    Sete: TSpeedButton;
    Tres: TSpeedButton;
    Oito: TSpeedButton;
    Zero: TSpeedButton;
    Nove: TSpeedButton;
    Mais: TSpeedButton;
    Seis: TSpeedButton;
    Limpar: TSpeedButton;
    procedure CincoClick(Sender: TObject);
    procedure DividirClick(Sender: TObject);
    procedure DoisClick(Sender: TObject);
    procedure IgualClick(Sender: TObject);
    procedure LimparClick(Sender: TObject);
    procedure MaisClick(Sender: TObject);
    procedure MenosClick(Sender: TObject);
    procedure MultiplicarClick(Sender: TObject);
    procedure NoveClick(Sender: TObject);
    procedure OitoClick(Sender: TObject);
    procedure QuatroClick(Sender: TObject);
    procedure SeisClick(Sender: TObject);
    procedure SeteClick(Sender: TObject);
    procedure TresClick(Sender: TObject);
    procedure UmClick(Sender: TObject);
  private
     { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  valor1 : real;
  valor2 : real;
  funcao : integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.UmClick(Sender: TObject);
begin
  visor.Text := visor.Text + (Sender as TSpeedButton).Caption
end;

procedure TForm1.DoisClick(Sender: TObject);
begin
  visor.Text := visor.Text + (Sender as TSpeedButton).Caption
end;

procedure TForm1.IgualClick(Sender: TObject);
var
   soma: real;
begin
  valor2:=StrToFloat(visor.Text);
  case (funcao) of
  1:
  begin
    soma:=valor1+valor2;
    visor.text:=FloatToStr(soma);
  end;
  2:
  begin
    soma:=valor1-valor2;
    visor.text:=FloatToStr(soma);
  end;
  3:
  begin
    soma:=valor1*valor2;
    visor.text:=FloatToStr(soma);
  end;
  4:
  begin
    if(valor2<>0)then
      begin
        soma:=valor1/valor2;
        visor.text:=FloatToStr(soma);
      end
    else
      begin
        SHowMessage('Divisão por zero!!');
        visor.Text:='ERRO';
      end
    end
end;  //finaliza o  case
end;

procedure TForm1.LimparClick(Sender: TObject);
begin
  visor.Text:='';
end;

procedure TForm1.MaisClick(Sender: TObject);
begin
  valor1 := StrToFloat(visor.Text);
  visor.Text := '';
  funcao := 1;
end;

procedure TForm1.MenosClick(Sender: TObject);
begin
  valor1 := StrToFloat(visor.Text);
  visor.Text := '';
  funcao := 2;
end;

procedure TForm1.MultiplicarClick(Sender: TObject);
begin
   valor1 := StrToFloat(visor.Text);
  visor.Text := '';
  funcao := 3;
end;

procedure TForm1.NoveClick(Sender: TObject);
begin
  visor.Text := visor.Text + (Sender as TSpeedButton).Caption
end;

procedure TForm1.OitoClick(Sender: TObject);
begin
  visor.Text := visor.Text + (Sender as TSpeedButton).Caption
end;

procedure TForm1.CincoClick(Sender: TObject);
begin
  visor.Text := visor.Text + (Sender as TSpeedButton).Caption
end;

procedure TForm1.DividirClick(Sender: TObject);
begin
    valor1 := StrToFloat(visor.Text);
  visor.Text := '';
  funcao := 4;
end;

procedure TForm1.QuatroClick(Sender: TObject);
begin
  visor.Text := visor.Text + (Sender as TSpeedButton).Caption
end;

procedure TForm1.SeisClick(Sender: TObject);
begin
  visor.Text := visor.Text + (Sender as TSpeedButton).Caption
end;

procedure TForm1.SeteClick(Sender: TObject);
begin
  visor.Text := visor.Text + (Sender as TSpeedButton).Caption
end;

procedure TForm1.TresClick(Sender: TObject);
begin
  visor.Text := visor.Text + (Sender as TSpeedButton).Caption
end;

end.

