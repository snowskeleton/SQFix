CapsLock::Send {Return}

+Capslock::send {SHIFTDOWN}{RETURN}{SHIFTUP}

`::
send {BACKSPACE}
return

::cu::cx

::cci::customer called in

::tt::talked to

::sd::said

::hu::hung up

::cb::call back

::im::ice maker

::acc::ticket

::lm::called to schedule lmom

::lm1::called to schedule lmom 1a

::lm2::called to schedule lmom 2a

::lm3::called to schedule lmom 3a

::lm4::called to schedule lmom 4a

::lm5::called to schedule lmom 5a

::ck::check call

::cl::check call lmom

::cl1::check call lmom 1a

::cl2::check call lmom 2a

::cl3::check call lmom 3a

::novm::called to schedule, no voice mail, no message left

::vmnsu::called to schedule, voice mail not set up, no message left

::vmf::called to schedule, voice mail full, no message left

::ss::Samsung

::fr::fridge

::fz::freezer

::con::confirmed contact information

::upd::updated contact information

::;oow::customer agreed to oow costs via cc

::dec::customer declined oow costs

::pref::customer preferred later date

::cts::called to schedule

::cta::called to schedule

!q::  ; submit a work order
send {CTRLDOWN}f{CTRLUP}
sleep, 20
send spe
send {ESC}
sleep, 20
send {TAB}
sleep, 20
send {CTRLDOWN}v{CTRLUP}
sleep, 20
send {CTRLDOWN}f{CTRLUP}
sleep, 20
send cre
send {ESC}
sleep, 20
send {TAB}{SHIFTDOWN}{TAB}{SHIFUP}
sleep, 20
send {SPACE}
return

!v:: ; for regular 9-6 scheduling
send 9
sleep, 20
send {TAB}
sleep, 20
send 18
sleep, 20
send {CTRLDOWN}f{CTRLUP}
send technician
sleep, 20
send {ESC}
sleep, 20
send {TAB}
sleep, 20
send {DOWN}
sleep, 20
send {CTRLDOWN}f{CTRLUP}
send Diagnosis
sleep, 20
send {ESC}
sleep, 20
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
sleep, 500
send {SPACE}
sleep, 20
send {TAB}
sleep, 500
send {SPACE}
return

!+v:: ; for checking boxes that got unchecked
send {CTRLDOWN}f{CTRLUP}
send Diagnosis
sleep, 20
send {ESC}
sleep, 20
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
sleep, 20
send {SPACE}
sleep, 20
send {TAB}
sleep, 20
send {SPACE}
return

!+x::
send {CTRLDOWN}f{CTRLUP}
send Submit
sleep, 20
send, {ESC}
sleep, 20
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
send {SPACE}
return

!a::
send {CTRLDOWN}f{CTRLUP}
send ent Ans
sleep, 20
send {ESC}
sleep, 20
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
sleep, 20
send {SPACE}
return

!s::
send {CTRLDOWN}f{CTRLUP}
send ule Fol
sleep, 20
send {ESC}
sleep, 20
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
sleep, 20
send {SPACE}
return

!z::
send {CTRLDOWN}f{CTRLUP}
send ule Fol
sleep, 20
send {ESC}
sleep, 20
send {TAB}
sleep, 20
send {SPACE}
return

!t::
send {CTRLDOWN}f{CTRLUP}
send ept no
sleep, 20
send {ESC}
sleep, 20
send {SHIFTDOWN}{TAB}{SHIFTUP}
sleep, 20
send {SPACE}
return

!w::
send {CTRLDOWN}f{CTRLUP}
send New Ser
sleep, 20
send {ESC}
sleep, 20
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
sleep, 20
send {SPACE}
return

!g::
send {CTRLDOWN}f{CTRLUP}
send Update GSPN Status
sleep, 20
send {ESC}
sleep, 20
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
sleep, 20
send {SPACE}
return

!e::
send {CTRLDOWN}f{CTRLUP}
send e cx le
sleep, 20
send {ESC}
sleep, 20
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
sleep, 20
send {SPACE}
return

; for regular 9-6 scheduling without sending
^'::
send 9
sleep, 400
send {TAB}
sleep, 400
send 18
sleep, 400
send {TAB} {TAB} {TAB} {TAB} {TAB} {TAB}
sleep, 400
send {down}
sleep, 400
send {SPACE}
sleep, 400
send {TAB}
sleep, 400
send {SPACE}
Return

^!+p::
send {ALTDOWN}{TAB}{ALTUP}
sleep, 200
send {ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}
sleep, 200
send {ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}
sleep, 200
send {ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}
sleep, 200
send {ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}
sleep, 200
send {ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}
sleep, 200
send {ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}
sleep, 200
send {ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}
sleep, 200
send {ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}
sleep, 200
send {ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}
sleep, 200
send {ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}
sleep, 200
send {ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}{ALTDOWN}{TAB}{ALTUP}
return

+~::
send ^a
sleep, 10
send ^c
return

::dmg::
send 1) Is the damage on the unit or home property?
send {RETURN}
send a) What part of unit/home property is damaged?
send {RETURN}
send 2) What kind of damage?
send {RETURN}
send (scratches, dents, etc.)
send {RETURN}
send 3) Did you see when the damage was made?
send {RETURN}
send       a) If no, when was the damage first noticed?
send {RETURN}
send       b) If yes, was damage notified to the technician on-site?
send {RETURN}
send 4) What is your desired outcome for this claim?
send {RETURN}
send (monetary compensation, damage repair, etc.)
send {RETURN}
send * Please have cx send pictures of the damage and its surrounding area to email: voc@servicequick.com
return
