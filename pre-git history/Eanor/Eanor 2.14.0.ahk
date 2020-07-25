SetNumLockState, AlwaysOn

CapsLock::send {Return}

+Capslock::send {SHIFTDOWN}{RETURN}{SHIFTUP}


#IfWinNotActive, snow@ziggy
`::
send {BACKSPACE}
return

F1::/

::cci::customer called in
::ccic::customer called in to confirm appt
::ccim::customer called in off missed call
::ccir::customer called in to reschedule
::ccis::customer called in to schedule

::cciwe::customer called in for service. claims IW. will email in receipt

::tt::talked to
::td::told

::hu::hung up
::cb::call back

::ph::phone

::uif::unidentified female
::uim::unidentified male
::uip::unidentified person
::pif::paid in full

::pu::picked up

::vm::voice mail
::num::number

::noa::called to schedule, line kept ringing, call released

::im::ice maker
::imn::ice maker not making ice
::imnfro::ice maker not making ice, frosting over

::lm::called to schedule lmom
::lm1::called to schedule lmom 1a
::lm2::called to schedule lmom 2a
::lm3::called to schedule lmom 3a
::lm4::called to schedule lmom 4a
::lm5::called to schedule lmom 5a

::slm::called for symptoms lmom

::ck::check call
::clm::check call lmom
::cl1::check call lmom 1a
::cl2::check call lmom 2a
::cl3::check call lmom 3a

::novm::called to schedule, no voice mail, no message left
::vmnsu::called to schedule, voice mail not set up, no message left
::vmf::called to schedule, voice mail full, no message left
::mbf::called to schedule, voice mail full, no message left
::linb::called to schedule, line busy, no message left

::sne::called for s/n. cx will reply to email
::snt::called for s/n. cx will reply to text
::sncb::called for s/n. cx will call back with that info

::ccisne::customer called in. didn't have s/n. will reply to email
::ccisnt::customer called in. didn't have s/n. will reply to email
::ccisnc::customer called in. didn't have s/n. will call back

::cxu::cx understood

::dis::called to schedule, number not in service, no message left
::rej::called to schedule, call rejected, no message left
::nml::no message left

::ss::Samsung
::extw::extended warranty
::acco::accommodations

::fr::fridge
::fz::freezer

::cp::control panel

::ccl::complete cooling loss
::chl::complete heating loss
::pcl::partial cooling loss
::phl::partial heating loss
::ncl::no cooling loss
::nhl::no heating loss
::ncl::no cooling loss
::cpl::complete power loss
::ps::power cycling
::fro::frosting over

::con::confirmed contact information
::upd::updated contact information

::tf::time frame
::rs::reschedule

::;oow::customer agreed to oow costs via cc
::dec::customer declined oow costs
::;otw::advised cx of OTWER limitations

::pref::customer preferred later date

::mor::cx requested morning appt
::eve::cx requested evening appt

::dif::cx requesting different technician
::noi::no other issues

::spa::cx requested spanish. advised spanish agent would call back

::soo::called to offer sooner appt. no answer, no message left
::sooacc::called to offer sooner appt. cx accepted
::soodec::called to offer sooner. cx declined

::cts::called to schedule
::cta::called to schedule
::ctr::called to reschedule

::ccins::customer called in for service. advised to call Samsung for new ticket. cx understood
::ccine::customer called in for service. advised to call extended warranty for new ticket. cx understood

::ssciu::Samsung called in for update on ticket
::extwciu::extended warranty called in for update on ticket
::cciu::customer called in for update on ticket

::ssci::Samsung called in
::extwci::extended warranty called in

::tun::
temp := clipboard
x := "cx has two units "
y := clipboard
z := x y
clipboard := z
send {SPACE}^v
clipboard := temp
return

::;vid::https://app.clipchamp.com/

::dmg::
send 1) What was damaged, and how was it damaged?
send {RETURN}2) When did you first see the damage, and was the technician notified on-site?
send {RETURN}3) What is your desired outcome for this claim? 
send {RETURN}Please have cx send pictures of the damage and its surrounding area to email: voc@servicequick.com
return

::;Ana::2 per dar

::;Atl::1 per day

::;Bos::2 per day

::;Cin::2 per day

::;Cle::4 per week

::;Col::2 per day

::;Chi::1 per day

::;Gre::1 per day

::;Haw::1 per day

::;LA::2 per day

::;Mur::1 per day

::;NJ::3 per day per Zone

::;Ont::1 per day

::;Pho::2 per day

::;Pit::2 per day

::;Ral::1 per day

::;SD::2 per day

::;SF::2 per day

::;Vall::1 per day

::;Vir::1 per day

::sAtl::zone avail

::sBos::zone avail

::sMur::zone avail

::sCin::zone avail

::sCle::zone avail

::sHaw::zone avail

::sPit::zone avail except C

::sNJ::zone avail

::sAna::total avail

::sLA::total avail

::sOnt::total avail

::sSD::total avail

::sVall::total avail

::sCol::total avail

::sChi::total avail

::sPho::total avail

::sSF::total avail

::hq::877 412 1665

::nscnum::424 226 6866 ext 2496 or 2500

::nscsamaritannum::989 832 7986

::nscchambersnum::309 829 6750

::nsclanes::517 393 1102

::nscphillips::269 270 3467

::nscds::847 534 6741

::nscnec::314 486 8557

::nscbeatty::217 787 4747

::nscbelson::716 708 8442

::ssnum::800 726 7864

#IfWinNotActive
