program LinkedListPascal;

{$mode objfpc}
{$m+}

type
    Nod = Record
        valor : integer;
        next : ^Nod;
    end;

    LinkedList = class
	private
        nr_elemente : integer; static;
        first : ^Nod;
        c : ^Nod;
        last : ^Nod;

	public
	    constructor create;
	    destructor destroy; override;
	    procedure add(x : integer);
	    procedure remove();
	    procedure search(x : integer);
	    procedure displayList();
        procedure getElements;
    end;

{LinkedList Class}
constructor LinkedList.create;
begin
    nr_elemente := 0;
    first := nil;
    c := nil;
    last := nil;
end;

destructor LinkedList.destroy;
begin
    Writeln('Adio obiect :)');
    freemem(first);
end;

procedure LinkedList.add(x : integer);

begin
    if(nr_elemente = 0) then
    begin
        c := getmem(1);
        c^.valor := x;
        c^.next := nil;
        first := c;
    end
    else
    begin
        last := getmem(1);
        last^.valor := x;
        last^.next := nil;
        c^.next := last;
        c := c^.next;
    end;

    inc(nr_elemente);
end;

procedure LinkedList.remove;
begin

end;

procedure LinkedList.search(x : integer);
begin

end;

procedure LinkedList.displayList;
var aux : ^Nod;
begin

aux := first;

    while aux <> nil do
    begin
        writeln(aux^.valor);
        aux := aux^.next;
    end;

end;

procedure LinkedList.getElements;
begin
    writeln(nr_elemente);
end;
{End LinkedList}

{Global Variables}
var ll : LinkedList;

begin
    ll := LinkedList.create;
    ll.add(40);
    ll.add(50);
    ll.add(60);
    ll.add(70);
    ll.add(80);
    ll.displayList;
    ll.getElements;
end.
