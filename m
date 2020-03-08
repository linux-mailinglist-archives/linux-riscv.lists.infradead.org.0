Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7AF17D205
	for <lists+linux-riscv@lfdr.de>; Sun,  8 Mar 2020 07:11:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uDt+L+yEuOv31rL29R183p50z58Axm5w9sglfxoFFwA=; b=nSzasA80SZcDmwRpqunSAxmmJ
	wq8E4udRxSUJY9oe2r1wUZ4lUBWOxKg58ts285NQ/DWW8PRRHF3ld4v2C9lSgH3KG+NnHwXjP4GuG
	T+NFPOretT7DNhrgWo9RGe0tEkdEsXjbJ4O9n0bAyCM/9y/6a5KV1ryECuLAMJ90x3xpjN8BvsE92
	m5+32m/MHgmOrBjDnF/uUGv1irAOvlJnV8dlY7Jbslp7yTL75E5IkN8ZFJgMo4ipsW+rpORnS7HFw
	cLaKIZj6nxaaQ0X7OCndEIXe9ja+eOzX8h0bFiAbS0LX5j/yJ7adT4RG5kAiXtAkisQz6c2MwlAJC
	Bzmz/WJmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAp9Z-00050r-4N; Sun, 08 Mar 2020 06:11:09 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAp9V-00050K-CJ
 for linux-riscv@lists.infradead.org; Sun, 08 Mar 2020 06:11:07 +0000
Received: by mail-wm1-x341.google.com with SMTP id x3so7248177wmj.1
 for <linux-riscv@lists.infradead.org>; Sat, 07 Mar 2020 22:11:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uDt+L+yEuOv31rL29R183p50z58Axm5w9sglfxoFFwA=;
 b=TjxR6APawnYdp1DKGBt72rvPZJJ5peiO/h5WDpoxAZdUySvaDXpWUcb/FSYKFjEY2V
 Z1kXWHZoJInqoZWf0m84cCe2mhIuYW5R+HkhUWFIw7wf93J4ex4i6t0SmcqVHwM0eJvq
 CtrBsz8t81oqdn7okpf5C+BP8fV1sv/qaTlNiZdt0UvHminhF3Yd2wi+1ba5SxRw5l9R
 nn9Ch2XcPsnrzx6gnLVspxCJaU1uCfL5MwSeGzkIeTqLPoTb2biv4jODc8WzylzPceq3
 E/W7j+psaPkf7Bs16jT/4gGWMpkBnfijlA1Mjf6xf1tRy9MLJRdzldCWQgXh18TgCdcD
 YW0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uDt+L+yEuOv31rL29R183p50z58Axm5w9sglfxoFFwA=;
 b=ee2x/HvDLt4MoJs6D5SNGGWqplRWG3M5g2/16bT/A4Zaypvqpm5rxgqnPjZZew7kqM
 zWpL4oAoQbFze2cLyOPW6rs97n2Psh0yuuVp130P8VwSAGdSSpC9jBfZnEKMY+0Gwn4Q
 4mAH6i3zK3S82mpUBw/yL3nY0P1pwJuKF3eeMGPu2zXmMP+HVTTHxvQoW/axjiUFRTAW
 COqMAmnOL6rLagG5oznZqAe5EUinvfqEzKHLoEgZ3bYkpMAlnZOAZ8/jwF9ej8U4+OV1
 NNWV2YO8a8UYyUge2rQWrC5l49hWmgnkjBdG3zgHvv0+tk/TamsZAoK64f5FAbkjaqzm
 szKg==
X-Gm-Message-State: ANhLgQ2xZQohdmD5DwpEVwwgvTWZMHDbCU4t8nDHyO2lOp+1SREsA0DU
 GjlJqStnY48ylHuPlSZGASXGje4QmZ5hiDbT11FH8g==
X-Google-Smtp-Source: ADFU+vvSlthDUXWXFMesXAxRu2yJoxlB4r/8PNXbrAjw17JiyfG0L+laTv+COAqeCgr6VeUZtxP3YF2IMQYdXJ8dTv0=
X-Received: by 2002:a05:600c:2201:: with SMTP id
 z1mr13141060wml.120.1583647863027; 
 Sat, 07 Mar 2020 22:11:03 -0800 (PST)
MIME-Version: 1.0
References: <20200212103432.660256-5-damien.lemoal@wdc.com>
 <mhng-c45590f0-38f8-42db-a746-e9970c62e25d@palmerdabbelt-glaptop1>
 <MN2PR04MB6061D77B37B5BFD3851F661F8DE20@MN2PR04MB6061.namprd04.prod.outlook.com>
 <BYAPR04MB5816059C01B77CE5D7E02E40E7E20@BYAPR04MB5816.namprd04.prod.outlook.com>
 <MN2PR04MB6061B382AF9F875B61B863978DE20@MN2PR04MB6061.namprd04.prod.outlook.com>
 <BYAPR04MB5816280119C3A35ACF968DF2E7E20@BYAPR04MB5816.namprd04.prod.outlook.com>
In-Reply-To: <BYAPR04MB5816280119C3A35ACF968DF2E7E20@BYAPR04MB5816.namprd04.prod.outlook.com>
From: Anup Patel <anup@brainfault.org>
Date: Sun, 8 Mar 2020 11:40:50 +0530
Message-ID: <CAAhSdy39FDH5rrutVDMXN1JYratUd171+vx9Uie__Xkww_q8Ug@mail.gmail.com>
Subject: Re: [PATCH 04/10] riscv: Add BUILTIN_DTB support
To: Damien Le Moal <Damien.LeMoal@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_221105_564698_E39D1323 
X-CRM114-Status: GOOD (  41.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Mar 5, 2020 at 11:43 AM Damien Le Moal <Damien.LeMoal@wdc.com> wrote:
>
> On 2020/03/05 14:37, Anup Patel wrote:
> >
> >
> >> -----Original Message-----
> >> From: Damien Le Moal
> >> Sent: 05 March 2020 10:44
> >> To: Anup Patel <Anup.Patel@wdc.com>; Palmer Dabbelt
> >> <palmer@dabbelt.com>
> >> Cc: linux-riscv@lists.infradead.org; Paul Walmsley
> >> <paul.walmsley@sifive.com>
> >> Subject: Re: [PATCH 04/10] riscv: Add BUILTIN_DTB support
> >>
> >> On 2020/03/05 13:58, Anup Patel wrote:
> >>>
> >>>
> >>>> -----Original Message-----
> >>>> From: Palmer Dabbelt <palmer@dabbelt.com>
> >>>> Sent: 05 March 2020 00:59
> >>>> To: Damien Le Moal <Damien.LeMoal@wdc.com>
> >>>> Cc: linux-riscv@lists.infradead.org; Paul Walmsley
> >>>> <paul.walmsley@sifive.com>; Anup Patel <Anup.Patel@wdc.com>
> >>>> Subject: Re: [PATCH 04/10] riscv: Add BUILTIN_DTB support
> >>>>
> >>>> On Wed, 12 Feb 2020 02:34:26 PST (-0800), Damien Le Moal wrote:
> >>>>> Enable a kernel builtin dtb for boards not capable of providing a
> >>>>> device tree to the kernel.
> >>>>
> >>>> I'd prefer if we picked a mechanism that allows a single kernel
> >>>> binary to be run on multiple systems.  I think there's two use cases here:
> >>>
> >>> I strongly support "single kernel binary for multiple systems" but
> >>> it's for different purpose here.
> >>>
> >>>>
> >>>> * Bootloaders that provide no DTB at all.
> >>>> * Bootloaders that provied a DTB that, for some reason, isn't usable.
> >>
> >> Sure, but as Anup mentions below, the current use case it to not even use
> >> any bootloader at all for the K210 since that brings no value at all (in my
> >> opinion). More on this below.
> >>
> >>>>
> >>>> Given those constraints, could we do something similar to the early
> >> fixups?
> >>>> I'm thinking we could build a mapping between a hardware identifier
> >>>> and a DTB, then look up the DTB we want to use.  Users that want a
> >>>> kernel that only runs on a single device can do so by configuring
> >>>> only a single DTB, users that want a more portable kernel can select
> >>>> a bunch -- that's essentially the same as how we're treating
> >>>> everything else (for example, the
> >>>> CONFIG_SOC_* stuff).
> >>>
> >>> There is no bootloader on Kendryte K210. The Linux RISC-V NOMMU kernel
> >>> boots directly. The BUILTIN_DTB is only applicable to cases where
> >>> there is no bootloader before kernel.
> >>>
> >>> The Linux RISC-V NOMMU will tend be used in cases where:
> >>> 1. There is no bootloader and kernel boots directly hence we need
> >>> builtin DTB feature.
> >>> 2. There is very less RAM so we will have to build kernel specific to
> >>> a particular platform with bare minimum drivers. Due to this, we will
> >>> have separate defconfig for NOMMU platforms.
> >>>
> >>> I think point1 can be tackled if we enforce having bootloader (such as
> >>> U-Boot) for NOMMU systems and drop this patch.
> >>
> >> But that would go against point 2 as that will use more memory... By "drop
> >> this patch", may be you meant to say "not use this config option" ?
> >
> > I meant to use U-Boot on Kendryte to launch kernel.
> >
> >>
> >>> For point2 above, we don't have much alternatives other than reducing
> >>> kernel binary size by disabling unwanted drivers.
> >>
> >> And not using a boot loader. Sean got U-boot working with Kendryte, so it is
> >> not that we cannot make it work. It is only that it may be less optimal due to
> >> the memory used by the boot loader itself. Unless we can recover it if the
> >> kernel relocate itself over it ? Surely doable, but it does sound to me like an
> >> overkill for this particular use case, i.e. a tiny, hyper-embedded board where
> >> running Linux is probably not the best choice in the first place, at least when
> >> looking at real applications. The story is different for "hobbyist" level. My on-
> >> going 6 DoF robotic arm project controlled with Linux on K210 is a valid use
> >> case after all :)
> >
> > Dropping BUILTIN DTB feature will be more like a Linux RISC-V policy thingy.
> > My suggestion was more about discouraging Linux S-mode users to use the
> > BUILTIN DTB feature.
>
> Got it. For now, we could tie BUILTIN DTB config to !MMU case only. If there is
> a valid use case that pops up for regular MMU/S-mode Linux, it is easy to change.
>
> > I agree that it is difficult to fit a proper boot-flow (having proper bootloader)
> > due to limited RAM. If we don't link DTB to Linux RISC-V NOMMU then some
> > thing else need to provide it hence bootloader suggestion.
>
> OK. Understood and I agree.
>
> >
> > Apart from the Linux RISC-V NOMMU use-case, the BUILTIN DTB feature can
> > be useful in environments such as FPGAs/Palladium where proper bootloader
> > is not available.
>
> OK. But we do not have to enable it for this right away, no ? So should I just
> not allow BUILTIN DTB for MMU==true case for now ?

Making kconfig option BUILTIN_DTB depends on !MMU looks reasonable
to me. Maybe you can send v2 with this change ?

Regards,
Anup

>
> >
> > Regards,
> > Anup
> >
> >>
> >>>
> >>>>
> >>>> For the hardware ID, could we do something like:
> >>>>
> >>>> * Check for the top-level DT compatible string, on systems where we
> >> have a
> >>>>   provided DTB.
> >>>> * Check for a matching mimpid/marchid/mvendorid tuple, maybe with
> >>>> some sort of
> >>>>   masking functionality if we later need one.  These are availiable via SBI
> >>>>   calls, but I'd be inclined to restrict them to M-mode boot and just say the
> >>>>   SBI must provide a device tree with at least a suitable compatible string.
> >>>>
> >>>> While I suppose we could put together a tool for generating these
> >>>> tables, for now we could probably just stick the mappings in a table
> >>>> for now given that there's only one of them.
> >>>>
> >>>> That said, I'm not sure what to do about the different Kendryte
> >>>> boards -- is there any way to poke the hardware to see which is which?
> >>>
> >>> I am sure there are two three different boards out there. Don't know
> >>> exact differences between these boards.
> >>
> >> As far as I can tell, all the boards use the exact same SoC. No differences that
> >> I can detect nor aware of. What differs between the different flavors of
> >> boards are the perypherals attached: some have WiFi, different LCDs and
> >> different cameras. The device tree is able to describe that of course, but the
> >> core dtsi part for the SoC itself seem to be OK at least for the 4 different
> >> boards I have (Kendryte KD233, Sipeed MAIXDUINO, MAIX Go and Dan
> >> Dock).
> >>
> >>>
> >>> Regards,
> >>> Anup
> >>>
> >>>>
> >>>>> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> >>>>> ---
> >>>>>  arch/riscv/Kbuild            |  1 +
> >>>>>  arch/riscv/Kconfig           | 18 ++++++++++++++++++
> >>>>>  arch/riscv/boot/dts/Makefile |  4 ++++
> >>>>>  arch/riscv/kernel/setup.c    |  6 ++++++
> >>>>>  arch/riscv/mm/init.c         |  4 ++++
> >>>>>  5 files changed, 33 insertions(+)
> >>>>>
> >>>>> diff --git a/arch/riscv/Kbuild b/arch/riscv/Kbuild index
> >>>>> d1d0aa70fdf1..988804e430e4 100644
> >>>>> --- a/arch/riscv/Kbuild
> >>>>> +++ b/arch/riscv/Kbuild
> >>>>> @@ -1,3 +1,4 @@
> >>>>>  # SPDX-License-Identifier: GPL-2.0-only
> >>>>>
> >>>>>  obj-y += kernel/ mm/ net/
> >>>>> +obj-$(CONFIG_USE_BUILTIN_DTB)    += boot/dts/
> >>>>> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig index
> >>>>> 1a3b5a5276be..28899e15f548 100644
> >>>>> --- a/arch/riscv/Kconfig
> >>>>> +++ b/arch/riscv/Kconfig
> >>>>> @@ -355,6 +355,24 @@ config CMDLINE_FORCE
> >>>>>
> >>>>>  endchoice
> >>>>>
> >>>>> +config USE_BUILTIN_DTB
> >>>>> + bool "Use builtin DTB"
> >>>>> + help
> >>>>> +   Link a device tree blob for particular hardware into the kernel,
> >>>>> +   suppressing use of the DTB pointer provided by the bootloader.
> >>>>> +   This option should only be used with hardware or bootloaders that
> >>>>> +   are not capable of providing a DTB to the kernel, or for
> >>>>> +   experimental hardware without stable device tree bindings.
> >>>>> +
> >>>>> +config BUILTIN_DTB_SOURCE
> >>>>> + string "Source file for builtin DTB"
> >>>>> + default ""
> >>>>> + depends on USE_BUILTIN_DTB
> >>>>> + help
> >>>>> +   Base name (without suffix, relative to arch/riscv/boot/dts) for
> >>>>> +   the a DTS file that will be used to produce the DTB linked into
> >>>>> +   the kernel.
> >>>>> +
> >>>>>  endmenu
> >>>>>
> >>>>>  menu "Power management options"
> >>>>> diff --git a/arch/riscv/boot/dts/Makefile
> >>>>> b/arch/riscv/boot/dts/Makefile index dcc3ada78455..0bf2669aa12d
> >>>>> 100644
> >>>>> --- a/arch/riscv/boot/dts/Makefile
> >>>>> +++ b/arch/riscv/boot/dts/Makefile
> >>>>> @@ -1,2 +1,6 @@
> >>>>>  # SPDX-License-Identifier: GPL-2.0
> >>>>> +ifneq ($(CONFIG_BUILTIN_DTB_SOURCE),"")
> >>>>> +obj-$(CONFIG_USE_BUILTIN_DTB) += $(patsubst
> >>>>> +"%",%,$(CONFIG_BUILTIN_DTB_SOURCE)).dtb.o
> >>>>> +else
> >>>>>  subdir-y += sifive
> >>>>> +endif
> >>>>> diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
> >>>>> index 0a6d415b0a5a..3e89be9d888c 100644
> >>>>> --- a/arch/riscv/kernel/setup.c
> >>>>> +++ b/arch/riscv/kernel/setup.c
> >>>>> @@ -68,7 +68,13 @@ void __init setup_arch(char **cmdline_p)
> >>>>>
> >>>>>   setup_bootmem();
> >>>>>   paging_init();
> >>>>> +
> >>>>> +#if IS_ENABLED(CONFIG_USE_BUILTIN_DTB)
> >>>>> + unflatten_and_copy_device_tree();
> >>>>> +#else
> >>>>>   unflatten_device_tree();
> >>>>> +#endif
> >>>>> +
> >>>>>   clint_init_boot_cpu();
> >>>>>
> >>>>>  #ifdef CONFIG_SWIOTLB
> >>>>> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c index
> >>>>> 965a8cf4829c..1274e889d008 100644
> >>>>> --- a/arch/riscv/mm/init.c
> >>>>> +++ b/arch/riscv/mm/init.c
> >>>>> @@ -480,7 +480,11 @@ static void __init setup_vm_final(void)  #else
> >>>>> asmlinkage void __init setup_vm(uintptr_t dtb_pa)  {
> >>>>> +#if IS_ENABLED(CONFIG_USE_BUILTIN_DTB)
> >>>>> + dtb_early_va = __dtb_start;
> >>>>> +#else
> >>>>>   dtb_early_va = (void *)dtb_pa;
> >>>>> +#endif
> >>>>>  }
> >>>>>
> >>>>>  static inline void setup_vm_final(void)
> >>>
> >>
> >>
> >> --
> >> Damien Le Moal
> >> Western Digital Research
> >
>
>
> --
> Damien Le Moal
> Western Digital Research
>

