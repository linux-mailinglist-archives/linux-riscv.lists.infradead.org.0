Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E8E31F7B0A
	for <lists+linux-riscv@lfdr.de>; Fri, 12 Jun 2020 17:42:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=toz+RHEDagGq93r+GlHPWQamBZ4JaUwDihxDKE8DBfc=; b=RFwH9txrLVhrAe
	lBZmchBxBIflTSctwt0jV80L/HwxiKbMrlyGPAA0j1QWFGuBGd6KPTVoFfukkItScEe+NCP0yWA+b
	SUgrpE7+sCDgHogK7PKLsjPL0lwFEMcPn5mJTqxRRbCEKPKFbgPvD6zeiK2ZYMjSxMdQKnHT+E7o6
	bYEx/OQWldB2XUI3TtDDebLrteRY713nLbaPB7WYSyDSO4FqztFmEO3KrJZAeBX4TGRZjhkaIRtI/
	SmC+grESy7MWey95luUZ1FIycqytpe7H+TFM3/JLh609iD4EiZSdox4iFblRI69plotKsBBxQiEc5
	nnWCsXZaYrucCkds8gkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjlot-0006zp-9Z; Fri, 12 Jun 2020 15:42:15 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjlop-0006zH-GY
 for linux-riscv@lists.infradead.org; Fri, 12 Jun 2020 15:42:13 +0000
Received: by mail-pf1-x444.google.com with SMTP id 23so4461584pfw.10
 for <linux-riscv@lists.infradead.org>; Fri, 12 Jun 2020 08:42:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=toz+RHEDagGq93r+GlHPWQamBZ4JaUwDihxDKE8DBfc=;
 b=Dp4Y35iURzTdy5HiAlU8Z0+c+M3a/PP6kFQeORfe1s5WtDQpgwSmkWcUi/N9a2g/Nq
 2o8OQ7wblTlGD/7qDKWX6XbO0Wuw7dI1uAtkfqeyFRh0OjnMu52RkiWpEl4NYnTkbGgM
 Ld8jiyIzCws7IO2a03Mgc9KJeXQWO9K2Yrq9o/NFds2aTNg9fRDddvLC3q7C+QfbjY0h
 Fs+SMcszZwlOZY28/BOXnV0JVQbOv32zPu1zGr1DSuEiqRda6jDaeVvvzo65pHYGUKdk
 h4Agwshl9NZ4D408R6jvFo0zB/eDAzM805ZdE9F2oazPFazojt+vAwWzeUYYGzJYJq7P
 v4ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=toz+RHEDagGq93r+GlHPWQamBZ4JaUwDihxDKE8DBfc=;
 b=YqJuzFYnbIKWGnVnUiVIKGSEIvmeMO/tnIRP/1W8TAnbZFVLxmcbJYyDKAK5Hz5fC1
 yPcyUODRJ9x4TGlF9kn6Vez9T9UrsTph1ykfng4FWzvJ9FgLWU2hnkIF7KaKwaHFf2Fr
 QB5kTEUAI94VLHNvwm7+H98b2DmCa+w4/62we1pzUl7yJfx/XcceI9jlCVe0Y8Bwa/zQ
 FuBQciVcCiF/Qtn3rmHYqAv2tCBDueNnssh4Sy1f1+iYYcvrEhtBeWsN3pok3yz50yCj
 sS9JROa+bmraRiRETRfxU1zBWCJvKjNBXpABIpWqfBV1OMWbjb1YmZqvaYLoAMk17btF
 GKNQ==
X-Gm-Message-State: AOAM533g1dFr7SS0nWxpaT151dQmJkYd+zt18AFKFEJ0yl3QHgUy5AWf
 7KlEEp2Ongk3RMFty8W24M/PbRbtcigTnA5M+cSEDQ==
X-Google-Smtp-Source: ABdhPJyt2FkmAkvKLG/gbkhHrg1Z5qPL9Ryu1+3aAga8lBoY1ZGbnj9jRHniXlGg2pPmeozNH4BB+pvOZds46vWk2MY=
X-Received: by 2002:a63:1c65:: with SMTP id c37mr1812194pgm.118.1591976527683; 
 Fri, 12 Jun 2020 08:42:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200612084350.GA1108986@ubuntu-n2-xlarge-x86>
In-Reply-To: <20200612084350.GA1108986@ubuntu-n2-xlarge-x86>
From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Date: Fri, 12 Jun 2020 08:41:56 -0700
Message-ID: <CAFP8O3+ydp6y9V4N1-9igHDhVjxqqYUecAYa3fT21FBTWtNx+w@mail.gmail.com>
Subject: Re: Upstream binutils commit a87e1817a435dab6c6c042f9306497c9f13d4236
 breaks building the RISC-V vDSO
To: Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_084211_565891_C22CD5D1 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-riscv@lists.infradead.org, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

I suggested that GNU ld from 2.35 onwards disallows accepting ET_EXEC
as input (https://sourceware.org/bugzilla/show_bug.cgi?id=3D26047 ). The
error message is from the patch.
Taking ET_EXEC files as input are usually errors.

If we do need to take ET_EXEC as input, we can change e_type in the
ELF header to make the file an ET_REL

printf '\1' | dd of=3D${2} conv=3Dnotrunc bs=3D1 seek=3D16 status=3Dnone
(See http://git.kernel.org/linus/90ceddcb495008ac8ba7a3dce297841efcd7d584 )


On Fri, Jun 12, 2020 at 1:43 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Hi all,
>
> Upstream binutils commit a87e1817a4 ("Have the linker fail if any attempt
> to link in an executable is made.") causes the RISC-V vDSO to fail to
> build properly (it is fixing this bug report:
> https://sourceware.org/bugzilla/show_bug.cgi?id=3D26047):
>
> $ make -skj"$(nproc)" ARCH=3Driscv CROSS_COMPILE=3Driscv64-linux- O=3Dout=
/riscv distclean defconfig arch/riscv/kernel/vdso/
> riscv64-linux-ld: cannot use executable file 'arch/riscv/kernel/vdso/vdso=
-dummy.o' as input to a link
>
> I do not really understand what the whole point of the vDSO rule is but
> it seems like it should be fixed due to this change. Additionally, the
> kernel has generally been getting rid of using $(CC) as a linker,
> instead preferring to use $(LD) directly; it would be nice if the RISC-V
> vDSO's Makefile could be rewritten to do that.
>
> See
>
> fe00e50b2db8 ("ARM: 8858/1: vdso: use $(LD) instead of $(CC) to link VDSO=
")
> 691efbedc60d ("arm64: vdso: use $(LD) instead of $(CC) to link VDSO")
> 2ff906994b6c ("MIPS: VDSO: Use $(LD) instead of $(CC) to link VDSO")
>
> for more examples of that. I would take a stab at it myself but this
> does not seem like a straight conversion due to the way the VDSOLD rule
> is set up.
>
> Cheers,
> Nathan



--=20
=E5=AE=8B=E6=96=B9=E7=9D=BF

