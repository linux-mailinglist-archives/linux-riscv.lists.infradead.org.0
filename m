Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F0B163F9F
	for <lists+linux-riscv@lfdr.de>; Wed, 19 Feb 2020 09:49:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mCuYnOW/nN1S1R1VRqhrDQWyIZkHH7ztfs+NzqumWlY=; b=aB1w8mhRHIahL2yd7v4hG2oAc
	Nx204TFrShzYFHaAOXdJ9d90uNl+Vm1358csRTWkJ+pdPE0NWFY72uxCxuLLtTlP/Wp8uf4eUDJAi
	kDBVCdPucd0Ppf5t2lNKhw1Ulhvq/Gv9EMqINyC2sbqIRnywWHfUOiCcguxYXDv1Rg20LX1dp+BaK
	vb+roCVZFx0er81u7FWIEqc234p4tXoQKijdx+Arm35vMSrgxCKtaeHQ6yNLaRA5WRJfg+BhcWn6K
	DVDAum0ixev8BKAocEG3D2zjkkcMOmj6cAWmzI1vH5F3jw1Bnx0dD0UX8MinmgaKhvjzhSt9GeRvx
	bCgPD+odw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4L2P-0003dY-8N; Wed, 19 Feb 2020 08:48:57 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4L2B-0003Tt-Vf
 for linux-riscv@lists.infradead.org; Wed, 19 Feb 2020 08:48:46 +0000
Received: by mail-oi1-x243.google.com with SMTP id p125so23039791oif.10
 for <linux-riscv@lists.infradead.org>; Wed, 19 Feb 2020 00:48:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mCuYnOW/nN1S1R1VRqhrDQWyIZkHH7ztfs+NzqumWlY=;
 b=MSUsTpIZT3MVZGDdWoqte+cXqQHuVLjXVkCCpkT3O/cmFI+mpAVoXPQHRFIL+iZGbb
 dzaVs9BRgUeTrG9zUhKApCj1q9pzdc97p/vbZBG5b8LrE6KcHB2vIDXkDTrDvdiFpccO
 eFOnGvqDdXnB8LflQskxoYmxGl8jgD+xGbuZO+LItDw4je+/7Z19Z7uD2eWzw54zG9y/
 kYU3fBFguBpwSltFrsRT4qswCpZRI7U9CGQMmDYCGqFUy8Gs9SGOv+LLR7nDSiMtLUOJ
 UwwGhPAVhDq4lDS5tm7RenUyt7H/WTXptLwkLCXPsDz42gCya3rsb6rJci/9BjuPUTpf
 kLEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mCuYnOW/nN1S1R1VRqhrDQWyIZkHH7ztfs+NzqumWlY=;
 b=dRZ0BHBmQMTBlxA4fflBnmdSy7U7D1+hqv/CRA9X66yOi6eHxpdbpTNUFXAWunp1PH
 VqqQsmN7t9i0wb0NIwTBIe0Ec/H+ggQGpZzd2oONcqN3+0eLlP+oO7hwsaQ2HwrdGo3U
 Davozx/6NMQoyAMw9C9dq0jGjlSiXJ13nMly+o3+jZfEfaGa0miUBdfhkXwl50hqL1bk
 hYHXQWTFc7aKhqrRWl2uDu+HBBX1rHAmLi2ZcZak/WrgsgVr+wbcc2kaOo+McU5eSSJ4
 xmHbTPsZHDrmYqwA2dyONEwr3mzRJdoHJyeTrO2OfaxuBtq8pXP5y2y9Ak7AFYFMJ19/
 q7Uw==
X-Gm-Message-State: APjAAAUMyZi2AgLZ6Q/Y05+3RNk5vyBf0vBsgSy+LOSIR3n8Drgeodxz
 kSOL+bRSuNjvm+3FS8mtcJhtBUDU1KeVFmNNT4ektA==
X-Google-Smtp-Source: APXvYqzHNC8bIYW5AL7XK13BFcS2BvjK1L4FkWEEVqfm5/ywlA+CFg1fxZU63e8lQF0eBK+p4VyQxQ9RoQqscAkH6tY=
X-Received: by 2002:aca:43c1:: with SMTP id q184mr3725881oia.116.1582102121733; 
 Wed, 19 Feb 2020 00:48:41 -0800 (PST)
MIME-Version: 1.0
References: <CANXhq0pbm0pgsOLdFSJvTjpd8e7-6-pCRSvFM-+H6oY3aYeiPg@mail.gmail.com>
 <mhng-402cee57-2e8b-4f71-8daa-6bfa75f5080b@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-402cee57-2e8b-4f71-8daa-6bfa75f5080b@palmerdabbelt-glaptop1>
From: Zong Li <zong.li@sifive.com>
Date: Wed, 19 Feb 2020 16:48:31 +0800
Message-ID: <CANXhq0pRrFGzDHHgXewuyCsH-z9V207K1j-Qgjy9kHZzBDL+Kg@mail.gmail.com>
Subject: Re: [PATCH] riscv: force hart_lottery to put in .sdata section
To: Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_004844_357820_76958729 
X-CRM114-Status: GOOD (  25.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anup Patel <anup@brainfault.org>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Albert Ou <aou@eecs.berkeley.edu>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 5:26 AM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>
> On Wed, 05 Feb 2020 03:07:52 PST (-0800), zong.li@sifive.com wrote:
> > On Tue, Feb 4, 2020 at 7:40 PM Anup Patel <anup@brainfault.org> wrote:
> >>
> >> On Tue, Feb 4, 2020 at 4:49 PM Zong Li <zong.li@sifive.com> wrote:
> >> >
> >> > In PIC code model, the zero initialized data always be put in .bss
> >> > section, so when building kernel as PIE, the hart_lottery won't present
> >> > in small data section, and it causes more than one harts to get the
> >> > lottery, because the main hart clears the content of .bss section
> >> > immediately after it getting the lottery.
> >> >
> >> > Signed-off-by: Zong Li <zong.li@sifive.com>
> >> > ---
> >> >  arch/riscv/kernel/setup.c | 2 +-
> >> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >> >
> >> > diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
> >> > index 22b671dbbcf1..45c63dc06360 100644
> >> > --- a/arch/riscv/kernel/setup.c
> >> > +++ b/arch/riscv/kernel/setup.c
> >> > @@ -40,7 +40,7 @@ struct screen_info screen_info = {
> >> >  #endif
> >> >
> >> >  /* The lucky hart to first increment this variable will boot the other cores */
> >> > -atomic_t hart_lottery;
> >> > +atomic_t hart_lottery __section(.sdata);
> >> >  unsigned long boot_cpu_hartid;
> >> >
> >> >  void __init parse_dtb(void)
> >> > --
> >> > 2.25.0
> >> >
> >> >
> >>
> >> Looks good to me. Please ensure that it is tested with both
> >> RV32 and RV64.
> >>
> >
> > I had tested it on RV32 and RV64, it works on both.
>
> Can you be more specific about your setup?  Before you patch, hart_lottery

I applied the Alex's CONFIG_RELOCATABLE patch
(https://patchwork.kernel.org/patch/11349207/) on Linux 5.6-rc1, and
selected the RELOCATABLE in Kconfig by manual, the firmware was using
OpenSBI, then ran the Linux kernel on QEMU. (I ran the RV64 on
sifive_u machine and RV32 on virt machine).

> should be in .sbss, which we put inside .sdata.  I'm a bit worried there's some
> other issue going on here that this is just masking.  That said, putting sbss
> in sdata seems like a generally bad idea so I'd be in favor of getting rid of
> it.

It happened at the beginning, I would help to give a quick test the
change you made.

>
> I've queued this up onto for-next, as even if it is fixing a bug related to the
> relocatable kernels we don't have support for that yet.  I've also sent a patch
> that stops putting .sbss into .sdata.
>
> Thanks!
>
> >> Reviewed-by: Anup Patel <anup@brainfault.org>
> >>
> >> Regards,
> >> Anup

