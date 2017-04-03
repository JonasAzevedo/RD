unit Pg2;

interface

uses
  Classes, comctrls;

type
  TMyThread = class(TThread)
  private
    PB : TProgressBar;   // Reference to ProgressBar
    procedure InitProgressBar; // Setup ProgressBar
    procedure UpdateProgressBar; // Update ProgressBar
  protected
    procedure Execute; override; // Main thread execution
  published
    constructor CreateIt(PriorityLevel: cardinal; ProgBar : TProgressBar);
    destructor Destroy; override;
  end;

implementation

uses
 windows, Pg1;

constructor TMyThread.CreateIt(PriorityLevel: cardinal; ProgBar : TProgressBar);
begin
  inherited Create(true);      // Create thread suspended
  Priority := TThreadPriority(PriorityLevel); // Set Priority Level
  FreeOnTerminate := true; // Thread Free Itself when terminated
  PB := ProgBar;    // Set reference
  Synchronize(InitProgressBar); // Setup the ProgressBar
  Suspended := false;         // Continue the thread
end;

destructor TMyThread.Destroy;
begin
   PostMessage(form1.Handle,wm_ThreadDoneMsg,self.ThreadID,0);
   {
     This posts a message to the main form, tells us when and which thread
     is done executing.
   }
   inherited destroy;
end;


procedure TMyThread.Execute; // Main execution for thread
var
 i : cardinal;
begin
  i := 1;
  while ((Terminated = false) and (i < 100000)) do
  begin
      Synchronize(UpdateProgressBar); // Update ProgressBar, uses sychronize because ProgressBar is in another thread
      Inc(i);
      // if Terminated is true, this loop exits prematurely so the thread will terminate
  end;
end;

procedure TMyThread.InitProgressBar; // setup/initialize the ProgressBar
begin
  PB.Min := 1;  // minimum value for bar
  PB.Max := 100000; // maximum value for bar
  PB.Step := 1;   // size will be used by each call to StepIt
  PB.Position := 1; // set position to begining
end;


procedure TMyThread.UpdateProgressBar; // Updates the ProgressBar
begin
  PB.StepIt; // step the bar
end;


end.
