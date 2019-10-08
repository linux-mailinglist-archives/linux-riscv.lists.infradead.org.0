Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A20D0433
	for <lists+linux-riscv@lfdr.de>; Wed,  9 Oct 2019 01:35:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=+ulknWHFq7NyBoIoA7xTLyDAEEUcos2Xm3HlsXeNVpk=; b=ihvYhA+Jk+d0CQ07Yn+/OlcAY
	x7A889NJjmDKjMkhnO2kI3Puy8fh80KcTigGm7T4YuZYpKmVwAknKxcFTtAKU34HIDgWGfRUpSnGz
	0ItburSsEx2zY9I+1jCTPywJ5YBecld1a8bxzJFJ3wxeYViq0mbauJqpQkEADRU1dp90j/U1i59ez
	eXA2LjNa7+/pvhxGcSS0jBQfVE3vBDVAbQDIBKLCRJiE/QxsEtwdMrwytOb/Z7IAdXIyMuzib1fTj
	M/FXJ2G51LU1rHfrkEk4qWHyuHI8UGYVdTf0u0lLauobL7aVfigfzIWxLOP6An/F4RVGz3CECo5BC
	U/WCYquHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHz16-0000p8-7F; Tue, 08 Oct 2019 23:35:44 +0000
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHz12-0000oY-A9
 for linux-riscv@lists.infradead.org; Tue, 08 Oct 2019 23:35:42 +0000
Received: by mail-pf1-f193.google.com with SMTP id y5so353545pfo.4
 for <linux-riscv@lists.infradead.org>; Tue, 08 Oct 2019 16:35:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=OFvUe+T3iY3bJmEe3JuyMtOd0hXR+IEcGGlzX/kzH6U=;
 b=Zu2xuXlpy/PIcZDd6A4B6m+IqGqJ78MiZsR7x6QSIaHLEML8I1ej9dCF4HL6gw5o2L
 s34P2++bYwwSuF+wAvx/rrGttm1CfGuQinpzrKgo82f+yDGiQbIvaZkBtanwCeX7b17m
 5UOu3kaf/AtovXR7S8GGgyIrFqoh7ByS2D7ml0Xl8CIZ8PDVCByjAMMXCWvAF5tKW/Rn
 oe/N0xSurGFJ80ZEkJ6+w/uzjtiBjG4y5s48n1SYSpXmhBGRnWud6BtvVngIX18/Tdal
 EAleeafP10QUxR7zgj5BtTl1vwhhea+Fo6VT2iFFzInJG3NXUp7eKSqweedKWkX9rkro
 CK2Q==
X-Gm-Message-State: APjAAAUXdKzFRmvJWMJLkzP/0KIP5UxEqA7GjfUIbYaOStPpqmknWtLt
 hj0fapwkKj4VLzFSosyrSmIY1A==
X-Google-Smtp-Source: APXvYqyW6UNl0f5b8RjCGlgwYw5d0Bwnsa3tTz/7oC2HD20NUxMEj+TWAqMq+/69FQKXJdSgfvUnpQ==
X-Received: by 2002:aa7:9d0d:: with SMTP id k13mr526506pfp.262.1570577739020; 
 Tue, 08 Oct 2019 16:35:39 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id r21sm263139pgm.78.2019.10.08.16.35.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 16:35:38 -0700 (PDT)
Date: Tue, 08 Oct 2019 16:35:38 -0700 (PDT)
X-Google-Original-Date: Tue, 08 Oct 2019 16:35:37 PDT (-0700)
Subject: Re: [PATCH] riscv: Fix memblock reservation for device tree blob
In-Reply-To: <46808.1570577477@ratiocinator.vaxen.org>
From: Palmer Dabbelt <palmer@sifive.com>
To: aou@eecs.berkeley.edu
Message-ID: <mhng-f0519e08-08dd-4de3-95b6-5837e503fc47@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_163540_353588_AD8DE844 
X-CRM114-Status: GOOD (  25.10  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: anup@brainfault.org, linux-riscv@lists.infradead.org,
 Anup Patel <Anup.Patel@wdc.com>, linux-kernel@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 08 Oct 2019 16:31:17 PDT (-0700), aou@eecs.berkeley.edu wrote:
> On 2019-10-08 15:38:15 -0700, Palmer Dabbelt <palmer@sifive.com> wrote:
>> On Fri, 20 Sep 2019 21:34:57 PDT (-0700), anup@brainfault.org wrote:
>> > On Sat, Sep 21, 2019 at 6:30 AM Albert Ou <aou@eecs.berkeley.edu> wrote:
>> >>
>> >> This fixes an error with how the FDT blob is reserved in memblock.
>> >> An incorrect physical address calculation exposed the FDT header to
>> >> unintended corruption, which typically manifested with of_fdt_raw_init()
>> >> faulting during late boot after fdt_totalsize() returned a wrong value.
>> >> Systems with smaller physical memory sizes more frequently trigger this
>> >> issue, as the kernel is more likely to allocate from the DMA32 zone
>> >> where bbl places the DTB after the kernel image.
>> >>
>> >> Commit 671f9a3e2e24 ("RISC-V: Setup initial page tables in two stages")
>> >> changed the mapping of the DTB to reside in the fixmap area.
>> >> Consequently, early_init_fdt_reserve_self() cannot be used anymore in
>> >> setup_bootmem() since it relies on __pa() to derive a physical address,
>> >> which does not work with dtb_early_va that is no longer a valid kernel
>> >> logical address.
>> >>
>> >> The reserved[0x1] region shows the effect of the pointer underflow
>> >> resulting from the __pa(initial_boot_params) offset subtraction:
>> >>
>> >> [    0.000000] MEMBLOCK configuration:
>> >> [    0.000000]  memory size = 0x000000001fe00000 reserved size = 0x0000000000a2e514
>> >> [    0.000000]  memory.cnt  = 0x1
>> >> [    0.000000]  memory[0x0]     [0x0000000080200000-0x000000009fffffff], 0x000000001fe00000 bytes flags: 0x0
>> >> [    0.000000]  reserved.cnt  = 0x2
>> >> [    0.000000]  reserved[0x0]   [0x0000000080200000-0x0000000080c2dfeb], 0x0000000000a2dfec bytes flags: 0x0
>> >> [    0.000000]  reserved[0x1]   [0xfffffff080100000-0xfffffff080100527], 0x0000000000000528 bytes flags: 0x0
>> >>
>> >> With the fix applied:
>> >>
>> >> [    0.000000] MEMBLOCK configuration:
>> >> [    0.000000]  memory size = 0x000000001fe00000 reserved size = 0x0000000000a2e514
>> >> [    0.000000]  memory.cnt  = 0x1
>> >> [    0.000000]  memory[0x0]     [0x0000000080200000-0x000000009fffffff], 0x000000001fe00000 bytes flags: 0x0
>> >> [    0.000000]  reserved.cnt  = 0x2
>> >> [    0.000000]  reserved[0x0]   [0x0000000080200000-0x0000000080c2dfeb], 0x0000000000a2dfec bytes flags: 0x0
>> >> [    0.000000]  reserved[0x1]   [0x0000000080e00000-0x0000000080e00527], 0x0000000000000528 bytes flags: 0x0
>> >
>> > Thanks for catching this issue.
>> >
>> > Most of us did not notice this issue most likely because:
>> > 1. We generally have good enough RAM on QEMU and SiFive Unleashed
>> > 2. Most of people use OpenSBI FW_JUMP on QEMU and U-Boot  on
>> >     SiFive Unleashed to boot in Linux which places FDT quite far away
>> >     from Linux kernel end
>> >
>> > Linux ARM64 kernel also uses FIXMAP to access FDT and over there
>> > as well early_init_fdt_reserve_self() is not used.
>> >
>> >>
>> >> Fixes: 671f9a3e2e24 ("RISC-V: Setup initial page tables in two stages")
>> >> Signed-off-by: Albert Ou <aou@eecs.berkeley.edu>
>> >> ---
>> >>  arch/riscv/mm/init.c | 13 ++++++++++++-
>> >>  1 file changed, 12 insertions(+), 1 deletion(-)
>> >>
>> >> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
>> >> index f0ba713..52d007c 100644
>> >> --- a/arch/riscv/mm/init.c
>> >> +++ b/arch/riscv/mm/init.c
>> >> @@ -11,6 +11,7 @@
>> >>  #include <linux/swap.h>
>> >>  #include <linux/sizes.h>
>> >>  #include <linux/of_fdt.h>
>> >> +#include <linux/libfdt.h>
>> >>
>> >>  #include <asm/fixmap.h>
>> >>  #include <asm/tlbflush.h>
>> >> @@ -82,6 +83,8 @@ static void __init setup_initrd(void)
>> >>  }
>> >>  #endif /* CONFIG_BLK_DEV_INITRD */
>> >>
>> >> +static phys_addr_t __dtb_pa __initdata;
>> >
>> > May be dtb_early_pa will be more consistent name
>> > instead of __dtb_pa because it matches dtb_early_va
>> > used below.
>> >
>> >> +
>> >>  void __init setup_bootmem(void)
>> >>  {
>> >>         struct memblock_region *reg;
>> >> @@ -117,7 +120,12 @@ void __init setup_bootmem(void)
>> >>         setup_initrd();
>> >>  #endif /* CONFIG_BLK_DEV_INITRD */
>> >>
>> >> -       early_init_fdt_reserve_self();
>> >> +       /*
>> >> +        * Avoid using early_init_fdt_reserve_self() since __pa() does
>> >> +        * not work for DTB pointers that are fixmap addresses
>> >> +        */
>> >> +       memblock_reserve(__dtb_pa, fdt_totalsize(dtb_early_va));
>> >> +
>> >>         early_init_fdt_scan_reserved_mem();
>> >>         memblock_allow_resize();
>> >>         memblock_dump_all();
>> >> @@ -333,6 +341,7 @@ static uintptr_t __init best_map_size(phys_addr_t base, phys_addr_t size)
>> >>         "not use absolute addressing."
>> >>  #endif
>> >>
>> >> +
>> >
>> > Please remove this newline addition.
>> >
>> >>  asmlinkage void __init setup_vm(uintptr_t dtb_pa)
>> >>  {
>> >>         uintptr_t va, end_va;
>> >> @@ -393,6 +402,8 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
>> >>
>> >>         /* Save pointer to DTB for early FDT parsing */
>> >>         dtb_early_va = (void *)fix_to_virt(FIX_FDT) + (dtb_pa & ~PAGE_MASK);
>> >> +       /* Save physical address for memblock reservation */
>> >> +       __dtb_pa = dtb_pa;
>> >>  }
>> >>
>> >>  static void __init setup_vm_final(void)
>> >> --
>> >> 2.7.4
>> >>
>> >>
>> >> _______________________________________________
>> >> linux-riscv mailing list
>> >> linux-riscv@lists.infradead.org
>> >> http://lists.infradead.org/mailman/listinfo/linux-riscv
>> >
>> > This deserves to be stable kernel fix as well.
>> > You should add:
>> > Cc: stable@vger.kernel.org
>> > in your commit description.
>> >
>> > Apart from minor nits above.
>> >
>> > Reviewed-by: Anup Patel <anup@brainfault.org>
>> >
>> > I tried this patch for both RV64 and RV32 on QEMU with
>> > Yocto rootfs.
>> >
>> > Tested-by: Anup Patel <anup@brainfault.org>
>> >
>> > Regards,
>> > Anup
>>
>> Albert: Do you plan on spinning a v2 of the patch set?
>>
>
> v2 was sent last week and has already been applied as
> 922b0375fc93fb1a20c5617e37c389c26bbccb70 by Paul.

Sorry about that.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
