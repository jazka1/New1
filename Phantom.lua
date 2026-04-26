local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local TextChatService = game:GetService("TextChatService")
local StarterGui = game:GetService("StarterGui")

local player = Players.LocalPlayer

-------------------------------------------------
-- SYSTEM CHAT (DARK GREY)
-------------------------------------------------
local function system(msg)e
	if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
		local channel = TextChatService:WaitForChild("TextChannels"):WaitForChild("RBXGeneral")
		channel:DisplaySystemMessage(msg)
	else
		StarterGui:SetCore("ChatMakeSystemMessage", {
			Text = msg,
			Color = Color3.fromRGB(110,110,110), -- kelabu gelap
			Font = Enum.Font.GothamMedium,
			TextSize = 18
		})
	end
end

system("Thank you for using PhantomV4 | Owner Script: EinsteinGoos (Phan11zz)")

-------------------------------------------------
-- INTRO UI
-------------------------------------------------
local gui = Instance.new("ScreenGui")
gui.Parent = player:WaitForChild("PlayerGui")
gui.ResetOnSpawn = false

local text = Instance.new("TextLabel")
text.Parent = gui
text.Size = UDim2.new(0,240,0,35)
text.Position = UDim2.new(0.5,-120,0.5,-17)
text.BackgroundTransparency = 1
text.Text = "PHANTOM HUB V4"
text.TextScaled = true
text.Font = Enum.Font.GothamBold
text.TextTransparency = 1
text.TextStrokeTransparency = 0.4

local fadeIn = TweenService:Create(text,TweenInfo.new(1,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{
	TextTransparency = 0
})

local fadeOut = TweenService:Create(text,TweenInfo.new(1,Enum.EasingStyle.Sine,Enum.EasingDirection.In),{
	TextTransparency = 1
})

fadeIn:Play()

-------------------------------------------------
-- RAINBOW (RED + BLUE CYCLE)
-------------------------------------------------
task.spawn(function()
	while gui.Parent do
		text.TextColor3 = Color3.fromRGB(255,0,0)
		task.wait(0.25)
		text.TextColor3 = Color3.fromRGB(0,170,255)
		task.wait(0.25)
	end
end)

fadeIn.Completed:Wait()
wait(2)

fadeOut:Play()
fadeOut.Completed:Wait()

gui:Destroy()
s+1;while s<0x108 and f%0x2212<0x1109 do s=s+1 f=(f*634)%12099 local h=s+f if(f%0x1494)<0xa4a then f=(f-0x37c)%0x5fea while s<0x385 and f%0x3d46<0x1ea3 do s=s+1 f=(f+519)%46654 local n=s+f if(f%0x1574)<=0xaba then f=(f+0x23)%0x332e local f=87309 if not z[f]then z[f]=0x1 k={};end elseif f%2~=0 then f=(f-0xfc)%0x61d7 local f=44461 if not z[f]then z[f]=0x1 d=string;end else f=(f+0x296)%0x9c5a s=s+1 local f=97517 if not z[f]then z[f]=0x1 e=getfenv and getfenv();end end end elseif f%2~=0 then f=(f*0x145)%0x83e3 while s<0xac and f%0x3c0c<0x1e06 do s=s+1 f=(f+868)%23206 local t=s+f if(f%0xc92)>0x649 then f=(f+0x132)%0x64c8 local f=96017 if not z[f]then z[f]=0x1 end elseif f%2~=0 then f=(f-0x47)%0x2140 local f=3143 if not z[f]then z[f]=0x1 end else f=(f-0x1d3)%0x7fbf s=s+1 local f=8776 if not z[f]then z[f]=0x1 n=function(z)local f=0x01 local function s(s)f=f+s return z:sub(f-s,f-0x01)end while true do local z=s(0x01)if(z=="\5")then break end local f=d.byte(s(0x01))local f=s(f)if z=="\2"then f=k.oshYnqgj(f)elseif z=="\3"then f=f~="\0"elseif z=="\6"then e[f]=function(f,s)return l(8,nil,l,s,f)end elseif z=="\4"then f=e[f]elseif z=="\0"then f=e[f][s(d.byte(s(0x01)))];end local s=s(0x08)k[s]=f end end end end end else f=(f-0x24a)%0x1315 s=s+1 while s<0x23f and f%0x2120<0x1090 do s=s+1 f=(f*187)%4937 local n=s+f if(f%0x195a)>=0xcad then f=(f-0x2bd)%0x7782 local f=38325 if not z[f]then z[f]=0x1 e=(not e)and _ENV or e;end elseif f%2~=0 then f=(f-0x345)%0x3315 local f=33226 if not z[f]then z[f]=0x1 t="\4\8\116\111\110\117\109\98\101\114\111\115\104\89\110\113\103\106\0\6\115\116\114\105\110\103\4\99\104\97\114\97\79\87\97\104\66\90\121\0\6\115\116\114\105\110\103\3\115\117\98\86\73\81\85\90\83\114\90\0\6\115\116\114\105\110\103\4\98\121\116\101\65\98\85\121\115\84\95\112\0\5\116\97\98\108\101\6\99\111\110\99\97\116\110\119\110\73\73\120\79\97\0\5\116\97\98\108\101\6\105\110\115\101\114\116\89\80\95\69\105\67\118\106\5";end else f=(f-0x1de)%0x1920 s=s+1 local f=65800 if not z[f]then z[f]=0x1 a=tonumber;end end end end end f=(f+699)%35237 end n(t);local f={};for s=0x0,0xff do local z=k.aOWahBZy(s);f[s]=z;f[z]=s;end local function h(s)return f[s];end local d=(function(t,d)local l,z=0x01,0x10 local s={{},{},{}}local e=-0x01 local f=0x01 local n=t while true do s[0x03][k.VIQUZSrZ(d,f,(function()f=l+f return f-0x01 end)())]=(function()e=e+0x01 return e end)()if e==(0x0f)then e=""z=0x000 break end end local e=#d while f<e+0x01 do s[0x02][z]=k.VIQUZSrZ(d,f,(function()f=l+f return f-0x01 end)())z=z+0x01 if z%0x02==0x00 then z=0x00 k.YP_EiCvj(s[0x01],(h((((s[0x03][s[0x02][0x00]]or 0x00)*0x10)+(s[0x03][s[0x02][0x01]]or 0x00)+n)%0x100)));n=t+n;end end return k.nwnIIxOa(s[0x01])end);n(d(174,";p95!_J^BKY?xHAR_^"));n(d(134,"051/TB,HhWCGQb.9HC9C.5BQbTTBQT/HT.1hG/1BC1oTWC5,,B9b,,QG,bhr9G.STbQBTCQT5,W.1WhCZ/hH5.HHC/15p,h19/H191BGbB/9bB1QQ.TLCAQhTh19CC11W/51hBWbH9.bHC./,1bH/9Q51GG/1:GH/hTTQ1CB5/C!:.1B;,Hh9/hw91TW.BTCbpBbGTTBWQbdB1//W91hWGVbW,9bhC95,Q9&,/QB,TbC19b/BKCT5/TQQCGL1BC/5.W,6Hh,9WB9.B,CQq,CGbTCbTbQBGTTCG1,CC5b/h15WT5_HG9HHWbGBBbBBb.1/CbhBHBQbhQ5/TGZ5GWH5Wh9NbW1uBh,^1BGQ,9QHHBQbhTWQhThWB/WhW59HG1hW19/1TC_h,9GHW9T,QbbBQQ91TCW5WC5//GHP9hQGh/55,W1d/h1S1,Q95,C.5BB.//sCbbQBh/9CG1QW95HC1.ChQ..H.9T,T91B1Hh9,bWTHbTT1BW/TGT/5CG1hHB1/W/95,b9QH9QhcB"));fhk_tLbGx_GrYfa=function(f)f((-17588+(function()local e,s=0,1;(function(s,f)f(f(f,f and f),f(s,f))end)(function(z,f)if e>498 then return f end e=e+1 s=(s-866)%32648 if(s%1002)<=501 then return f else return f(z(f,z),f(f,z))end return f(z(z,z and z),f(z,f and f)and z(f,f))end,function(f,z)if e>155 then return f end e=e+1 s=(s+725)%43558 if(s%1792)>896 then s=(s*369)%26877 return f(z(f,f),z(f,z))else return z end return f end)return s;end)()))end;afYrG_xGbLt_khf={k.S_jFvObr,k.GqGcExhO};local f=(-2802+(function()local z,s=0,1;(function(f)f(f(f))end)(function(f)if z>296 then return f end z=z+1 s=(s-861)%10065 if(s%932)>=466 then s=(s-941)%31435 return f(f(f))else return f end return f end)return s;end)())local tf=(getfenv)or(function()return _ENV end);local r=k.gkvovxWH or k.SSYgrPty;local e=2;local t=4;local m=1;local n=3;local function df(u,...)local o=d(f,">3Nw2:sP <?fVz-.<-:3P ?mV<..3 26s  -2-<2Vf<.z ..NPw.<?zN3/ww2.P2-<3<w s;  ?-Pgfz-?3wN :zP??23<2Vs <Gf z-< -z3fw N2sVVUz-MPN 2?V3.w3Mw sW s:N  V:zV-Nws:zPz? V-23P<<8f -FgsVN3swfss<3fwz2_?wN&P:-?fVP-VN32?f3-N_;N :OPsw: w?Tz?.PzPwNPN? T<wf:  Y? V-<wz-DsN.^P:N?sVf.sN3 <f<z GkN 2-wf:- ?fwz<. N:2sf<-.W w): P-2f ;f<zs.Vww0P:.?wV^6F322<PNz<<PN :9P <-:z? z<bNNf.. r<-VV<.3:w2:V wsP-wlsz.2V 4?VV .PV.2fs-<sff<PjBw::wwPfwzsB23?2PNP?wf.-232-.s- P?VzzfPww2.P2:PV..w3K:_s2<<s.-I3N-Psw sf2V?.P3V2wNP?2V?- 3:ws3P2< .z-4fz.wPP-?fVU.f3-Y33.<ffPzVIz-PswP.?2 P0wNs2-Pw2.Vf-PaV2 3P =f<z2fPN2:  2?(V..G3zw-3.<-f -wYf-P:r Vfwzs.V3 :wPx<Nf -f3w2 3P wf!-N. w3:2P2<f zw<Ps  fkz .-V<oBw(:fwP<3zV.zN:22P<2. V?.zP..3P2P<sf.VMP3fwVU- 3Mws.22.Pw<<f#<P.NN?s3 v?.zfWNzPw?NPPzVs.wVPwVsU z?V ..2P3?PV_- 3Gws.s2<sK<zf -f3 -PwPP ?Vz2.2N<<3Vw-)C w+:s3f: <<fMz2_?wwJPs:sf33:<s9  f_zs?NfV.33zw2s<:.fwz9.-Ns2V 3PPz?VP3Vw P sPVs-s33wNN.ssP.z:.-Nf3. 2M3w::*P ?(Vs<3VV.:N<22P?<PPPVf3S2Nsfz39PN*2 PW<s:s<Vzw?P.3w sz2PfPz qVw2:2 <.3N 2{s <5fsPPVs.sVP2wssw.fV-N.Vz.wfs3P ?.w<P   fcz .--<;3w.:+ ?fNVVOwN)2w23:- sfsz-;NNf2.P<?6V?-.3PV3.?3tw sK s:w<sfsz-DfNV6.:-f2z;?..<:2Pf?wVs-z:<<N? zG. 3-zVNz:wP <-VP.f322:3.s?f--Vbzwf:2 <.3Nw2Ms <0fs wf .NrV233P2P<<?:V+P3VsVM- 3lwsM33V:APV< V<-23?Y.:V zfwz .-NP:fP2?:?fVPNN2Ps2 ?f z qf,PswP.?}z:.?N?3.Pf<-<P.3) 232: 2f.z2s<<<f -(F N-.f3.3PPNfPz4}-Nz<<V?- 3aw :-3 sz<ff ?2.:ws: Pf.3Nw2Ls <(fsPzVs<..Pwf: < ?V-3l?P3?VVJ- 36wstN2-s-<<fw<P--Nz}.sw? V-.PNf..N.P-?P? :<2-? z_. 3-zzN :< N?fP./Q3-2V3. .fU-z92-Psw s:.V-.2Nf..s ?wVw-25 2Nsfw.P<<.VPz.:sP::P<2fPz..Pw_<Ns.-2h-w::2<E?3V .sN?..s <zff<.N_w-sVw.??zf9!NN:NN.?fVP-VV.3<2-Ps<-Vs-V-P:3 Vfwzf.-N:..PF?wPP.s3cwfsww.fwzX.-z.:fPP<VP..?322<P: VV3?wf.3-whs< zfZzz.-TZNP<-V:-fNK-.:? ff}zNqNz.:sPz<?V2?P33wVsN  V2-?u2-P: wP?VV .w3V..PI?wPP-f3sw-sPw.f-zPICNN2.N.?2V2- 3z.Ps <fs.--C ww:fwP?mV?MwNr::s ?wfV<.z ..3PPw<tfVzV3N3wN.P-V-.s3w2wP2 ?f??::3P-?{V .,3szsNw2) 3<2;<wP:  b? V- ?z-dwN-:<2N-f3rw sb  f6z iDN :3 ??nV .#3szVNs2zsV? f<-Ik--.2? 2??-wg#N-::wz-<N/w sL  ?-Pff2-wO2wP:- <fw Pz.Nw29s?<2V?w3sc J? z;.sf-DPww:DP-?:zNw<s   f_z .-VP;fN s PVf3z?23P <bf -dxsVf3sw-sPw.f<?:fP-:IP 3<VzN-VNw <f?z dMN 2-t-:2 f:.??.fNs:2sf-3^-w_:  v?sP3?V-N.Vww<<VP- 3dw :-2,s.  f -<3NP<fVV .O3 w-.-22Pf2.  ?.zP-.2? Nf<z-8wNfGP:-<zP.z?322zs2<:ffzV3Nw??3z2.v3 2hssNfs ?<zX<.-.22:<w.Vw .2<< < Vp- 0-V N22fs-2P<fz 32w::NP.:.fw.jN?22P<2.<-.23:-.3.PN?.z-msww_PPL?:z .-3PwVP3 VPy?J:3 s?5V .K3szbNV:wPs2.?2--3:w2P= 3? zs2< s< Vx- B-V-322f3.PmfNzVf.tfs3P ?szs.zzPwNPw<;zM-23< 3Vwz/. N92s8f:sP-?PVN.w32w P3<ifz-zf.3f:v <?sVVRwzPN.Pw<IzJ-23< 3V-zI. NJ2sz.w::-:P?fzs.z3-22P<s.V---3<w?wP wfVz2zPww:s2.?szs.:322<w.<Pf0-f0NN.:2Pf zwfsB  fiz Z}n f.f ?3--.=3 2XssN,PV?wVs<.-<22sL f?f .-:N22  3<VzN.fV.3.s2  fw<PVP!Vsx V? zP?..<:2PC<fff? :<< ? zZ. 3-K<N3:.Pb??zN-VNw2(sws3P-?szs.-NN2?P <zf..13Pw -33KwO:  b?ssPff-w9P)s2V w-<32w sU  3N:3P2 z:3?-?yV .H3szwNs2Vs < V:<.-V2PsP 1f:-NF^N-::2<:Pfs.<3)2fsP2P<-zzf.tf:  z? z:.2zPN4P<?3Vs.s3?.z3P2P VzzJwN 2-PP?fV2.:z  <fVz J5N 2-3w:- s?. PzVw&2-PP< f?w3Py u? zn.s-3.<wP2  N??V2.f3 wfw<:sP-?-zs.?NN:dP3<PV:-f3wf<-VU wW: P-2w -fsz.fPN::<P2<Vz<-Vs3<-f0z u7Ns.ww_:VPV:.f?vwNs2.NPPwf -sU-w2s<w.s.f--P- <<^z- 38w :-3 sz2P?w-<ALw:sN P?-z<{wzPNssV<4V<.NVP2N:V Nffz GsNz=PP(:PVs-V3Z2<PN2PVsz.Y2w<:2wPf zsa2zP2NPs?2Vw-wVP2ws< vfzz2kwz.:-PP<Vz3-VN:wVP32PV -s32-P:f *??VVf9s<<ff -bB N---w2sfPN?V-3_zN 2?P2-<3-w sq  ?-s-f2-ff.D.s  P?2z<.3NM2?sV-33Vwi:  A?ssGfV-wksz.N< 2?4Vf-fV...3.s<<2Vf-{-P3 V<8P3 2As  -:??2f<.N3PwW:? 2sPVwm<N :PPV?pVz-VV...2-PPP N<:zP ?YV --zN.P3 2zs.2.V?-N3<w sP<w.<w 2 P&< f- 2?-z<.2.P2ssV<XV<.N-PwNss Vfizz.-..:?P-?sVzz: 3f?zJ. N82sON:<P2< zw-VV
