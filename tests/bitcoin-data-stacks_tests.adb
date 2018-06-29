
with AUnit.Assertions; use AUnit.Assertions;
pragma Elaborate_All (AUnit);
pragma Elaborate_All (AUnit.Assertions);

with Bitcoin.Data.Stacks;
with Bitcoin.Test_Utilities.Common; use Bitcoin.Test_Utilities.Common;

package body Bitcoin.Data.Stacks_Tests is

  package String_Stacks is new Bitcoin.Data.Stacks (Positive, String, "=");
  use String_Stacks;

  --------------------
  -- Register_Tests --
  --------------------
  procedure Register_Tests (T : in out TC) is
    use AUnit.Test_Cases.Registration;
  begin
    Register_Routine (T, Test_Top_Index'Access,   "Top_Index");
    Register_Routine (T, Test_Size'Access,        "Size");
    Register_Routine (T, Test_Get'Access,         "Get");
    Register_Routine (T, Test_Peek'Access,        "Peek");
    Register_Routine (T, Test_Push'Access,        "Push");
    Register_Routine (T, Test_Pop'Access,         "Pop (function)");
    Register_Routine (T, Test_Pop_Ignored'Access, "Pop (procedure)");
    Register_Routine (T, Test_Swap'Access,        "Swap");
    Register_Routine (T, Test_Delate'Access,      "Delete");
  end Register_Tests;

  procedure Top_Index_Of_Empty_Stack is Ignore : Positive; Stack : Stack_Type; begin Ignore := Top_Index (Stack); end;

  --------------------
  -- Test_Top_Index --
  --------------------
  procedure Test_Top_Index (Test : in out Test_Cases.Test_Case'Class) is
    Stack : Stack_Type;
  begin
    Assert_Exception (Top_Index_Of_Empty_Stack'Access, "Expected Top_Index of an empty stack to throw an error.");
    Push (Stack, "foo");
    Assert_Positives_Equal (Expected => 1, Actual => Top_Index (Stack));
    Push (Stack, "bar");
    Assert_Positives_Equal (Expected => 2, Actual => Top_Index (Stack));
    Pop (Stack);
    Assert_Positives_Equal (Expected => 1, Actual => Top_Index (Stack));
  end;

  ---------------
  -- Test_Size --
  ---------------
  procedure Test_Size (Test : in out Test_Cases.Test_Case'Class) is
    Stack : Stack_Type;
  begin
    Assert_Naturals_Equal (Expected => 0, Actual => Size (Stack));
    Push (Stack, "foo");
    Assert_Naturals_Equal (Expected => 1, Actual => Size (Stack));
    Push (Stack, "bar");
    Assert_Naturals_Equal (Expected => 2, Actual => Size (Stack));
    Pop (Stack);
    Assert_Naturals_Equal (Expected => 1, Actual => Size (Stack));
  end;

  --------------
  -- Test_Get --
  --------------
  procedure Test_Get (Test : in out Test_Cases.Test_Case'Class) is
    Stack : Stack_Type;
  begin
    Push (Stack, "foo");
    Push (Stack, "bar");
    Push (Stack, "baz");
    Assert_Strings_Equal (Expected => "foo", Actual => Get (Stack, 1));
    Assert_Strings_Equal (Expected => "bar", Actual => Get (Stack, 2));
    Assert_Strings_Equal (Expected => "baz", Actual => Get (Stack, 3));
  end;

  ---------------
  -- Test_Peek --
  ---------------
  procedure Test_Peek (Test : in out Test_Cases.Test_Case'Class) is
    Stack : Stack_Type;
  begin
    null;
  end;

  ---------------
  -- Test_Push --
  ---------------
  procedure Test_Push (Test : in out Test_Cases.Test_Case'Class) is
    Stack : Stack_Type;
  begin
    null;
  end;

  --------------
  -- Test_Pop --
  --------------
  procedure Test_Pop (Test : in out Test_Cases.Test_Case'Class) is
    Stack : Stack_Type;
  begin
    null;
  end;

  ----------------------
  -- Test_Pop_Ignored --
  ----------------------
  procedure Test_Pop_Ignored (Test : in out Test_Cases.Test_Case'Class) is
    Stack : Stack_Type;
  begin
    null;
  end;

  ---------------
  -- Test_Swap --
  ---------------
  procedure Test_Swap (Test : in out Test_Cases.Test_Case'Class) is
    Stack : Stack_Type;
  begin
    null;
  end;

  -----------------
  -- Test_Delate --
  -----------------
  procedure Test_Delate (Test : in out Test_Cases.Test_Case'Class) is
    Stack : Stack_Type;
  begin
    null;
  end;

end;
