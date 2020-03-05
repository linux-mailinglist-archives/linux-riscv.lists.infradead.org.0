Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C4417A115
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Mar 2020 09:18:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qQP4aXg4Avt/ab0fH75qYetX5y7RdbS0Ia7+Hz3mIVo=; b=u2MFamouV8M2bduQNkC+nYTD0
	QClB1j/0BBpAZGw9H9rbvadTAKdOvnRr86rubpte/qzgko+SutWup1xGqnkPVpJNyolvIoLESbu3+
	jpxxmvc+WPU65bkveMj1r+J9WxaIUXpPYxXqs578gfSMXLewpdKsIiJ3+aIFLZhpCIueomX8ZOvKk
	42HthjjaKKYH/UX979jL1IR+UZKfNxIXFiLBLX0ZC2v8/mNjpe5P1avsmtmRkg7sPHwC9qLM19SE0
	Kz8dNrDap+HfwvPMuvV6USvvHCzXtGMWpnbOEwulp9r+IEmgePh1Htmr7gHWOJxAR0qYnK7jFLy2g
	eRjdP5eQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9li8-0003tC-PD; Thu, 05 Mar 2020 08:18:28 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9li4-0003sZ-VM
 for linux-riscv@lists.infradead.org; Thu, 05 Mar 2020 08:18:27 +0000
Received: by mail-wm1-x342.google.com with SMTP id i9so5129141wml.4
 for <linux-riscv@lists.infradead.org>; Thu, 05 Mar 2020 00:18:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qQP4aXg4Avt/ab0fH75qYetX5y7RdbS0Ia7+Hz3mIVo=;
 b=GgW/M+MGu4PCk/OTsUWe+7PSWksq4E+iKIYk9WRYbTApJnBjh/6tGZ1pSOMbR+VTSJ
 QcMxTbG/npr21hJwIKdIndWQTVrzrA+R4lKCYH/oZDKhb/1FD6Jc5QFQANYSOfxCCiUA
 kV+Xcfs2un8cGJrRRkV5m1Tz/YbTAvoMrQDDHjxxRR5HL/2vYJS49LxNqa39q3Agm8n1
 OWYQ1rV5bKaPTcmcp4ej+xF7jsXKSUz4jFNZkWMd8p7DYEOGEFnH69QjHsE2HLQjqCwz
 KBgCi7lbjOYtijY9tKWmxVGuMUPQiUdh13oNlS8KgjHQ5vo65JdQAz6mvRjkX2lFTeYV
 v6OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qQP4aXg4Avt/ab0fH75qYetX5y7RdbS0Ia7+Hz3mIVo=;
 b=mO1PghwEp0v6xTy5PkINZTI6ZhfUeszrit//6naH1XezN1sAxPNmbIlpYVUVbN7oF3
 MLlxsrf7q6Ebp9JuaPaiZHGytG15LIXpjIQeRh0W0HRcrP6r3jM92difU1cAhUMq7KNW
 HLho6+xbhZ15Tl6yHhC0UR8puc5K8sNvsS197l5DRXVvrCBUkMgKPHtWNP2km6GAFEj4
 NsPyLDRNi34t8CjNQdGsGwK7I5mH5gmrEIVKn5BGifSYhm9Q3Brw0zHDUjBhLDT2jZ/W
 DcxjxnUki98fl66Au36msZXcgQvjkf0UWHHKehyzLS5loUTBrDgRj+CBkjZlZLO+ajSx
 ABVw==
X-Gm-Message-State: ANhLgQ1r2fH72DPLEQ54BBxtBlYJzTiMD0ASZyRVMY8H/cpmr/jn9aoR
 lLD8gfeJ64+JA5mUTZV0s+o8KiTisq4liVA7B+aZ
X-Google-Smtp-Source: ADFU+vsXfaqgu9oOxwGt0wGx2GyuwkzaS5wDC10AqKEkOAJtMfIZLzaPqKMMCPW8Bc7s2ycoIjoCEwY52ISLpaNaCSg=
X-Received: by 2002:a05:600c:14d5:: with SMTP id
 i21mr4200968wmh.186.1583396303191; 
 Thu, 05 Mar 2020 00:18:23 -0800 (PST)
MIME-Version: 1.0
References: <20200212103432.660256-5-damien.lemoal@wdc.com>
 <mhng-c45590f0-38f8-42db-a746-e9970c62e25d@palmerdabbelt-glaptop1>
 <MN2PR04MB6061D77B37B5BFD3851F661F8DE20@MN2PR04MB6061.namprd04.prod.outlook.com>
 <BYAPR04MB5816059C01B77CE5D7E02E40E7E20@BYAPR04MB5816.namprd04.prod.outlook.com>
In-Reply-To: <BYAPR04MB5816059C01B77CE5D7E02E40E7E20@BYAPR04MB5816.namprd04.prod.outlook.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Thu, 5 Mar 2020 00:18:12 -0800
Message-ID: <CAOnJCUJYcuvyHywV0vEzMcgUJaoUHfuLbWjp1bxDw2t-OJXOQw@mail.gmail.com>
Subject: Re: [PATCH 04/10] riscv: Add BUILTIN_DTB support
To: Damien Le Moal <Damien.LeMoal@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_001825_425503_1413306F 
X-CRM114-Status: GOOD (  39.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Mar 4, 2020 at 9:14 PM Damien Le Moal <Damien.LeMoal@wdc.com> wrote:
>
> On 2020/03/05 13:58, Anup Patel wrote:
> >
> >
> >> -----Original Message-----
> >> From: Palmer Dabbelt <palmer@dabbelt.com>
> >> Sent: 05 March 2020 00:59
> >> To: Damien Le Moal <Damien.LeMoal@wdc.com>
> >> Cc: linux-riscv@lists.infradead.org; Paul Walmsley
> >> <paul.walmsley@sifive.com>; Anup Patel <Anup.Patel@wdc.com>
> >> Subject: Re: [PATCH 04/10] riscv: Add BUILTIN_DTB support
> >>
> >> On Wed, 12 Feb 2020 02:34:26 PST (-0800), Damien Le Moal wrote:
> >>> Enable a kernel builtin dtb for boards not capable of providing a
> >>> device tree to the kernel.
> >>
> >> I'd prefer if we picked a mechanism that allows a single kernel binary to be
> >> run on multiple systems.  I think there's two use cases here:
> >
> > I strongly support "single kernel binary for multiple systems" but it's for
> > different purpose here.
> >
> >>
> >> * Bootloaders that provide no DTB at all.
> >> * Bootloaders that provied a DTB that, for some reason, isn't usable.
>
> Sure, but as Anup mentions below, the current use case it to not even use any
> bootloader at all for the K210 since that brings no value at all (in my
> opinion). More on this below.
>
> >>
> >> Given those constraints, could we do something similar to the early fixups?
> >> I'm thinking we could build a mapping between a hardware identifier and a
> >> DTB, then look up the DTB we want to use.  Users that want a kernel that
> >> only runs on a single device can do so by configuring only a single DTB, users
> >> that want a more portable kernel can select a bunch -- that's essentially the
> >> same as how we're treating everything else (for example, the
> >> CONFIG_SOC_* stuff).
> >
> > There is no bootloader on Kendryte K210. The Linux RISC-V NOMMU kernel
> > boots directly. The BUILTIN_DTB is only applicable to cases where there is
> > no bootloader before kernel.
> >
> > The Linux RISC-V NOMMU will tend be used in cases where:
> > 1. There is no bootloader and kernel boots directly hence we need
> > builtin DTB feature.
> > 2. There is very less RAM so we will have to build kernel specific to
> > a particular platform with bare minimum drivers. Due to this, we will
> > have separate defconfig for NOMMU platforms.
> >
> > I think point1 can be tackled if we enforce having bootloader (such as U-Boot)
> > for NOMMU systems and drop this patch.
>
> But that would go against point 2 as that will use more memory... By "drop this
> patch", may be you meant to say "not use this config option" ?
>
> > For point2 above, we don't have much alternatives other than reducing
> > kernel binary size by disabling unwanted drivers.
>
> And not using a boot loader. Sean got U-boot working with Kendryte, so it is not
> that we cannot make it work. It is only that it may be less optimal due to the
> memory used by the boot loader itself. Unless we can recover it if the kernel
> relocate itself over it ? Surely doable, but it does sound to me like an
> overkill for this particular use case, i.e. a tiny, hyper-embedded board where
> running Linux is probably not the best choice in the first place, at least when
> looking at real applications. The story is different for "hobbyist" level. My
> on-going 6 DoF robotic arm project controlled with Linux on K210 is a valid use
> case after all :)
>

Just a thought: How about keeping the loader out of kernel as a
separate project as a tinyloader ?
That tinyloader project can host the DTB and pass it to kernel in a1
register. This tinyloader can be used for
any M-mode only platforms with memory constraints.  If platform has
sufficient memory and supports U-boot, users can use that as well.
That will allow single kernel image to boot all the platforms and we
can mandate one booting protocol for all platforms.
Otherwise, we have to specify different booting protocol for
M-Mode/NoMMU linux and S-mode Linux.
In future, there may be more platforms with Builtin DTB request as well.

> >
> >>
> >> For the hardware ID, could we do something like:
> >>
> >> * Check for the top-level DT compatible string, on systems where we have a
> >>   provided DTB.
> >> * Check for a matching mimpid/marchid/mvendorid tuple, maybe with some
> >> sort of
> >>   masking functionality if we later need one.  These are availiable via SBI
> >>   calls, but I'd be inclined to restrict them to M-mode boot and just say the
> >>   SBI must provide a device tree with at least a suitable compatible string.
> >>
> >> While I suppose we could put together a tool for generating these tables, for
> >> now we could probably just stick the mappings in a table for now given that
> >> there's only one of them.
> >>
> >> That said, I'm not sure what to do about the different Kendryte boards -- is
> >> there any way to poke the hardware to see which is which?
> >
> > I am sure there are two three different boards out there. Don't know exact
> > differences between these boards.
>
> As far as I can tell, all the boards use the exact same SoC. No differences that
> I can detect nor aware of. What differs between the different flavors of boards
> are the perypherals attached: some have WiFi, different LCDs and different
> cameras. The device tree is able to describe that of course, but the core dtsi
> part for the SoC itself seem to be OK at least for the 4 different boards I have
> (Kendryte KD233, Sipeed MAIXDUINO, MAIX Go and Dan Dock).
>
> >
> > Regards,
> > Anup
> >
> >>
> >>> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> >>> ---
> >>>  arch/riscv/Kbuild            |  1 +
> >>>  arch/riscv/Kconfig           | 18 ++++++++++++++++++
> >>>  arch/riscv/boot/dts/Makefile |  4 ++++
> >>>  arch/riscv/kernel/setup.c    |  6 ++++++
> >>>  arch/riscv/mm/init.c         |  4 ++++
> >>>  5 files changed, 33 insertions(+)
> >>>
> >>> diff --git a/arch/riscv/Kbuild b/arch/riscv/Kbuild index
> >>> d1d0aa70fdf1..988804e430e4 100644
> >>> --- a/arch/riscv/Kbuild
> >>> +++ b/arch/riscv/Kbuild
> >>> @@ -1,3 +1,4 @@
> >>>  # SPDX-License-Identifier: GPL-2.0-only
> >>>
> >>>  obj-y += kernel/ mm/ net/
> >>> +obj-$(CONFIG_USE_BUILTIN_DTB)      += boot/dts/
> >>> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig index
> >>> 1a3b5a5276be..28899e15f548 100644
> >>> --- a/arch/riscv/Kconfig
> >>> +++ b/arch/riscv/Kconfig
> >>> @@ -355,6 +355,24 @@ config CMDLINE_FORCE
> >>>
> >>>  endchoice
> >>>
> >>> +config USE_BUILTIN_DTB
> >>> +   bool "Use builtin DTB"
> >>> +   help
> >>> +     Link a device tree blob for particular hardware into the kernel,
> >>> +     suppressing use of the DTB pointer provided by the bootloader.
> >>> +     This option should only be used with hardware or bootloaders that
> >>> +     are not capable of providing a DTB to the kernel, or for
> >>> +     experimental hardware without stable device tree bindings.
> >>> +
> >>> +config BUILTIN_DTB_SOURCE
> >>> +   string "Source file for builtin DTB"
> >>> +   default ""
> >>> +   depends on USE_BUILTIN_DTB
> >>> +   help
> >>> +     Base name (without suffix, relative to arch/riscv/boot/dts) for
> >>> +     the a DTS file that will be used to produce the DTB linked into
> >>> +     the kernel.
> >>> +
> >>>  endmenu
> >>>
> >>>  menu "Power management options"
> >>> diff --git a/arch/riscv/boot/dts/Makefile
> >>> b/arch/riscv/boot/dts/Makefile index dcc3ada78455..0bf2669aa12d 100644
> >>> --- a/arch/riscv/boot/dts/Makefile
> >>> +++ b/arch/riscv/boot/dts/Makefile
> >>> @@ -1,2 +1,6 @@
> >>>  # SPDX-License-Identifier: GPL-2.0
> >>> +ifneq ($(CONFIG_BUILTIN_DTB_SOURCE),"")
> >>> +obj-$(CONFIG_USE_BUILTIN_DTB) += $(patsubst
> >>> +"%",%,$(CONFIG_BUILTIN_DTB_SOURCE)).dtb.o
> >>> +else
> >>>  subdir-y += sifive
> >>> +endif
> >>> diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
> >>> index 0a6d415b0a5a..3e89be9d888c 100644
> >>> --- a/arch/riscv/kernel/setup.c
> >>> +++ b/arch/riscv/kernel/setup.c
> >>> @@ -68,7 +68,13 @@ void __init setup_arch(char **cmdline_p)
> >>>
> >>>     setup_bootmem();
> >>>     paging_init();
> >>> +
> >>> +#if IS_ENABLED(CONFIG_USE_BUILTIN_DTB)
> >>> +   unflatten_and_copy_device_tree();
> >>> +#else
> >>>     unflatten_device_tree();
> >>> +#endif
> >>> +
> >>>     clint_init_boot_cpu();
> >>>
> >>>  #ifdef CONFIG_SWIOTLB
> >>> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c index
> >>> 965a8cf4829c..1274e889d008 100644
> >>> --- a/arch/riscv/mm/init.c
> >>> +++ b/arch/riscv/mm/init.c
> >>> @@ -480,7 +480,11 @@ static void __init setup_vm_final(void)  #else
> >>> asmlinkage void __init setup_vm(uintptr_t dtb_pa)  {
> >>> +#if IS_ENABLED(CONFIG_USE_BUILTIN_DTB)
> >>> +   dtb_early_va = __dtb_start;
> >>> +#else
> >>>     dtb_early_va = (void *)dtb_pa;
> >>> +#endif
> >>>  }
> >>>
> >>>  static inline void setup_vm_final(void)
> >
>
>
> --
> Damien Le Moal
> Western Digital Research
>


-- 
Regards,
Atish

