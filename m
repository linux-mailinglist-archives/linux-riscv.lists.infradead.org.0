Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 194637B715
	for <lists+linux-riscv@lfdr.de>; Wed, 31 Jul 2019 02:22:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=URW0mZUjYZNFavhW1SFYRHPodOIxOVrGCYe0Q1YNR9I=; b=sWiuf4gfxuTavJrGIR9QW0xVw
	55KeFGv5qtRemPZCdGOg2UWNtAYrmwVsNBWJdtxUfgvMscZ03sw7ZGWgvbevlwnSU9HjBD8LrNTUm
	nEft3lz6d5yNEIKOWZP61uwHdllmC80WbzxQV9dUdoIyMRQHhlHWIG7TeYNo1TLNJOZ8cjCfd1yE4
	2ZzvQ4OUXZ8N+bvzVXXbJqq9kYwVwfbgvA/lp/DZdkDjKNselddBeBqYUMxk318sDYLw904acnD/C
	CT6K1xoY/zQc2H8855MxJm8jSjyjq1s0EHROK1XM8/UqSLRtGY1JnN/CoGgjcz0yc7RDxaCuCelQA
	MAcmy048g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hscNb-0006g1-Ao; Wed, 31 Jul 2019 00:22:07 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hscNY-0006fT-7C
 for linux-riscv@lists.infradead.org; Wed, 31 Jul 2019 00:22:05 +0000
Received: by mail-ot1-x342.google.com with SMTP id x21so2803860otq.12
 for <linux-riscv@lists.infradead.org>; Tue, 30 Jul 2019 17:22:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=T3pbFVklPI8CS5jA6d2Lz9ZbL3qtXs9tl4jwqnSCERY=;
 b=lo+EjkS/pc1fVXeuq9FC7irR4SbKsloOX0d4J+FqR3WguC4QUQG7OwCmNoZ76hjFvt
 JmXLQH54/3U5eFc9XyhlBve4G2UOnWbjz4W0x4viLgkZTsCpds2GUlVk+Kv8KxCOfdZj
 b0F4N5ndVdKCgDAGZdd2CSvEq4UifUpGxhW8NHd5K7Q5n3nQojOSXWx/gTyGBmgbABd9
 7WPbweBbf/s2O9B88+c1GaAXOX16b78W6yvyi6mwVZ/iuaacPQCLz4jnDNF/fJTZy7tZ
 Ol3tSs9PWu9dxmdx1Gn+rluVtiDmKZbxelW11n9VanwDM5G6HvWyO+rrqRjF8yd+4BY1
 GjjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=T3pbFVklPI8CS5jA6d2Lz9ZbL3qtXs9tl4jwqnSCERY=;
 b=eRxjqMgYs5/xKFkZm/pQJpIBr0U3+LbwI+kFEcM/IzWgTHdGg7IeP0NTLzQoFub2SY
 VgsDpMNXscBmWhTX9nb6LPsjZus52HoCrDhogM1we8kHurj3qCs/y6860lmSIbnnz5m6
 2xda3f54yGtcwbqDLea+4s1YySsePAn1k5gb4z85RSXe3eTI1gAiE2CNTr4mWC7a6rAp
 EQ3FQxMpCrD9JqSOJs3W58UlfHJki10CVJhgifBGhwGL+NU8h/S/1vhD/TYO3jMk4sB3
 uDaRucpdvxGVhrRLFWiu7VVPfSztJMgYABXopsFeuAF4MfclHZ8EJXG9HSsdpoB3/oPz
 rEXA==
X-Gm-Message-State: APjAAAWYpLqZRb9kPEndFQaSgcTn8RTEKAwswI6RX8JuGV7LCwdR1Eq5
 OAcpBjlvEXl4p5y4TSiQ55d6Y3YQXIM=
X-Google-Smtp-Source: APXvYqwug/wxAsjnCV0nBhefJ5MRiydiqaHYwfVMmtODsX9SxITHVqHaAEtp+W6CYJDo60PfHtuQmg==
X-Received: by 2002:a9d:7ccb:: with SMTP id r11mr17825569otn.80.1564532523202; 
 Tue, 30 Jul 2019 17:22:03 -0700 (PDT)
Received: from localhost ([2600:100e:b005:6ca0:a8bb:e820:e6d3:8809])
 by smtp.gmail.com with ESMTPSA id i63sm23294762oih.18.2019.07.30.17.22.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 30 Jul 2019 17:22:02 -0700 (PDT)
Date: Tue, 30 Jul 2019 17:22:01 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Andreas Schwab <schwab@suse.de>
Subject: Re: Random memory corruption with v5.2
In-Reply-To: <mvm1ry8au3f.fsf@suse.de>
Message-ID: <alpine.DEB.2.21.9999.1907301709510.4874@viisi.sifive.com>
References: <mvm8sshcdwc.fsf@suse.de>
 <CAEn-LTpM-0TMxkNNh6nnLH9Bnr9Zm+VFLf=z1y9sER6RXrQooQ@mail.gmail.com>
 <mvm1ry8au3f.fsf@suse.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-166457291-1564532521=:4874"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_172204_270877_07943199 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: linux-riscv@lists.infradead.org,
 David Abdurachmanov <david.abdurachmanov@gmail.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-166457291-1564532521=:4874
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: QUOTED-PRINTABLE

On Tue, 30 Jul 2019, Andreas Schwab wrote:

> On Jul 30 2019, David Abdurachmanov <david.abdurachmanov@gmail.com> wrote=
:
>=20
> > On Mon, Jul 29, 2019 at 1:51 PM Andreas Schwab <schwab@suse.de> wrote:
> >>
> >> Since switching to 5.2 kernels I'm seeing random crashes and
> >> misbehaviors on the HiFive, for example while building gcc or glibc.
> >> Perhaps missing TLB flushes?
> >
> > Do you have some examples of crashes?
>=20
> While building glibc:
>=20
> an_ES.UTF-8...realloc(): invalid pointer
> /bin/sh: line 1:  7841 Aborted                 (core dumped) I18NPATH=3D.=
 GCONV_PATH=3D/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/iconvdata LC_A=
LL=3DC /home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/elf/ld-linux-riscv64-=
lp64d.so.1 --library-path /home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base:/h=
ome/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/math:/home/abuild/rpmbuild/BUI=
LD/glibc-2.29/cc-base/elf:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/dl=
fcn:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/nss:/home/abuild/rpmbuil=
d/BUILD/glibc-2.29/cc-base/nis:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-ba=
se/rt:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/resolv:/home/abuild/rp=
mbuild/BUILD/glibc-2.29/cc-base/mathvec:/home/abuild/rpmbuild/BUILD/glibc-2=
=2E29/cc-base/support:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/nptl /=
home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/locale/localedef $flags --ali=
as-file=3D../intl/locale.alias -i locales/$input -f charmaps/$charset --pre=
fix=3D/home/abuild/rpmbuild/BUILDROOT/glibc-2.29-0.riscv64 $locale
> make[2]: *** [Makefile:422: install-archive-an_ES.UTF-8/UTF-8] Error 134
>=20
> While building gcc:
>=20
> ../../gcc/ada/exp_aggr.adb: In function 'Exp_Aggr.Expand_N_Aggregate':
> ../../gcc/ada/exp_aggr.adb:5311:21: warning: 'Csiz' may be used uninitial=
ized in this function [-Wmaybe-uninitialized]
> ../../gcc/ada/exp_aggr.adb:5220:10: note: 'Csiz' was declared here
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3DGNAT BUG DETECTED=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D+
> | 10.0.0 20190727 (experimental) [trunk revision 273844] (riscv64-suse-li=
nux) |
> | Storage_Error stack overflow or erroneous memory access                =
  |
> | Error detected at output.ads:39:8                                      =
  |
> realloc(): invalid pointer

I personally haven't seen these issues; but then again, I haven't done any=
=20
glibc or gcc builds on v5.2.  Will take a closer look.

Reflecting on the recent commits, there weren't too many recent=20
RISC-V-specific changes that could have an impact here.  So if these=20
problems are relatively repeatable, and they didn't happen with v5.1,=20
there are a few patches that might be worth reverting to see if the=20
situation improves.  Here would be my short list:

- Commit bf587caae305ae3b4393077fb22c98478ee55755 ("riscv: mm: synchronize=
=20
MMU after pte change")=20

- Commit 6dd91e0eacff0a5c822ca37565d6b5740c4d2a80 ("RISC-V: defconfig:=20
Enable NO_HZ_IDLE and HIGH_RES_TIMERS")

- Commit 671f9a3e2e24cdeb2d2856abee7422f093e23e29 ("RISC-V: Setup initial=
=20
page tables in two stages")

Of course, it's also possible that someone could have made a change=20
outside arch/riscv that are causing these problems.  If that's the case,=20
we're probably stuck bisecting it.


- Paul
--8323329-166457291-1564532521=:4874
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

--8323329-166457291-1564532521=:4874--

