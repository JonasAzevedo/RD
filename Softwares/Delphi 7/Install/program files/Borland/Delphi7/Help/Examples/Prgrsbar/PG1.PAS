unit Pg1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, Pg2;

const
  WM_ThreadDoneMsg = WM_User + 8;

type
  TForm1 = class(TForm)
    ProgressBar1: TProgressBar;
    ProgressBar2: TProgressBar;
    Button1: TButton;
    Button2: TButton;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    MyThread1 : TMyThread; // thread number 1
    MyThread2 : TMyThread; // thread number 2
    Thread1Active : boolean; // used to test if thread 1 is active
    Thread2Active : boolean; // used to test if thread 2 is active
    procedure ThreadDone(var AMessage : TMessage); message WM_ThreadDoneMsg; // Message to be sent back from thread when its done
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject); // Create Thread 1
{ The thread will destroy iteself when it is done executing because FreeOnTerminate is set to true.
The first paramter is the priority, and the second is the progressbar to update.
}
begin
   if (MyThread1 = nil) or (Thread1Active = false) then // make sure its not already running
   begin
     MyThread1 := TMyThread.CreateIt(TrackBar1.Position, ProgressBar1);
     Thread1Active := true;
   end
   else
     ShowMessage('Thread still executing');
end;

procedure TForm1.Button2Click(Sender: TObject); // Create Thread 2
begin
   if (MyThread2 = nil) or (Thread2Active = false) then  // make sure its not already running
   begin
     MyThread2 := TMyThread.CreateIt(TrackBar2.Position, ProgressBar2);
     Thread2Active := true;
   end
   else
     ShowMessage('Thread still executing');
end;

procedure TForm1.Button3Click(Sender: TObject); // Terminate Thread 1
begin
  if (MyThread1 <> nil) and (Thread1Active = true) then  // check to see if it is running
    MyThread1.Terminate
  else
   ShowMessage('Thread not started');
end;

procedure TForm1.Button4Click(Sender: TObject); // Terminate Thread 2
begin
  if (MyThread2 <> nil) and (Thread2Active = true) then  // check to see if it is running
    MyThread2.Terminate
  else
    ShowMessage('Thread not started');
end;

procedure TForm1.ThreadDone(var AMessage: TMessage); // keep track of when and which thread is done executing
begin
  if ((MyThread1 <> nil) and (MyThread1.ThreadID = cardinal(AMessage.WParam))) then
  begin
      Thread1Active := false;
  end;
  if ((MyThread2 <> nil) and (MyThread2.ThreadID = cardinal(AMessage.WParam))) then
  begin
      Thread2Active := false;
  end;
end;


procedure TForm1.FormCreate(Sender: TObject); // initialize to zero
begin
  Thread1Active := false;
  Thread2Active := false;
end;


procedure TForm1.TrackBar1Change(Sender: TObject); // set Thread 1 Priority
begin
  if (MyThread1 <> nil) and (Thread1Active = true) then
     MyThread1.priority := TThreadPriority(TrackBar1.Position);
end;

procedure TForm1.TrackBar2Change(Sender: TObject); // set Thread 2 Priority
begin
  if (MyThread2 <> nil) and (Thread2Active = true) then
    MyThread2.priority := TThreadPriority(TrackBar2.Position);
end;


procedure TForm1.FormDestroy(Sender: TObject); // Terminate any threads still running
begin
   if (MyThread1 <> nil) and (Thread1Active = true) then
   begin
     MyThread1.Terminate;
     MyThread1.WaitFor;  // wait for it to terminate
   end;
   if (MyThread2 <> nil) and (Thread2Active = true) then
   begin
     MyThread2.Terminate;
     MyThread2.WaitFor;
   end;
end;

end.
