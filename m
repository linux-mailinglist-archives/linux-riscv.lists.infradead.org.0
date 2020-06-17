Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F33AF1FC5A8
	for <lists+linux-riscv@lfdr.de>; Wed, 17 Jun 2020 07:28:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:
	References:In-Reply-To:Subject:To:From:Date:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l9YWhDGRtdNc5QCYJBNM3pRm9Ybdr0AJTQomzLSDCrM=; b=dMj14EZ43sVSoSvGjuKqzkgy7
	wCUbaJSq7gqOFxpmrkMZKQYh1pd66p8ojknvCNdwRswRLGbeQdtH2NjqfN/ZDpykE/SE4ZGoZdooz
	x/hKG0SNab7OBGp0HI7rra5w/P6YoX4R6bJg1nAITYqvP8R6yWs9rKwZ0zTvU0vsVGdQMt17odQJE
	5cxzN1QLFOPD0CcRDL4C885Vkqwe6F++ZRcY4TXcl9p2SOEH54B9+8463FdcdWozmOvMKeAIEeLjw
	KqZyFjAEb4exgNRvRN789g7t1KNgV2+fUIOX/TISVsON5u9XgwhQxvmRO8G5eAxJYpfpo4jM7rG4x
	k6WVqIQ6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlQck-0005hx-V5; Wed, 17 Jun 2020 05:28:34 +0000
Received: from mailgate-2.ics.forth.gr ([139.91.1.5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlQch-0005hT-TY
 for linux-riscv@lists.infradead.org; Wed, 17 Jun 2020 05:28:33 +0000
Received: from av3.ics.forth.gr (av3in [139.91.1.77])
 by mailgate-2.ics.forth.gr (8.14.4/ICS-FORTH/V10-1.8-GATE) with ESMTP id
 05H5SIbw014773; Wed, 17 Jun 2020 05:28:20 GMT
X-AuditID: 8b5b014d-257ff700000045c5-8c-5ee9a9f1b299
Received: from enigma.ics.forth.gr (enigma.ics.forth.gr [139.91.151.35])
 by av3.ics.forth.gr (Symantec Messaging Gateway) with SMTP id
 B3.12.17861.1F9A9EE5; Wed, 17 Jun 2020 08:28:18 +0300 (EEST)
X-ICS-AUTH-INFO: Authenticated user:  at ics.forth.gr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Date: Wed, 17 Jun 2020 08:28:17 +0300
From: Nick Kossifidis <mick@ics.forth.gr>
To: Zong Li <zong.li@sifive.com>
Subject: Re: [PATCH 2/2] riscv: Support CONFIG_STRICT_DEVMEM
Organization: FORTH
In-Reply-To: <CANXhq0pMutK0+hHchQPOaZLqm9B-=MTKv8Xig4hM71_B=5+2bg@mail.gmail.com>
References: <cover.1592292685.git.zong.li@sifive.com>
 <7faa60aa4a606b5c5c1ae374d82a7eee6c764b38.1592292685.git.zong.li@sifive.com>
 <29425dbf7d54bab2733d28480d3adb61@mailhost.ics.forth.gr>
 <CANXhq0pMutK0+hHchQPOaZLqm9B-=MTKv8Xig4hM71_B=5+2bg@mail.gmail.com>
Message-ID: <6e6cf39ae6ed91bbe086adbade5786cb@mailhost.ics.forth.gr>
X-Sender: mick@mailhost.ics.forth.gr
User-Agent: Roundcube Webmail/1.3.9
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrHLMWRmVeSWpSXmKPExsXSHT1dWffTypdxBvsOMVlc3jWHzWLb5xY2
 i+Z359gtXl7uYbZom8Vv8eHubDYHNo83L1+yeDzcdInJY/OSeo9LzdfZPT5vkgtgjeKySUnN
 ySxLLdK3S+DKWP3yJVvBA7mK2d0z2RoY34p3MXJwSAiYSNy7nNTFyMUhJHCUUWLXxk1MXYyc
 QHFTidl7OxlBbF4BQYmTM5+wgNjMAhYSU6/sZ4Sw5SWat85mBrFZBFQl9h15ARZnE9CUmH/p
 IFi9iICCxJUlG1lAFjALTGaSWN9/hBUkISxgI/HrxQqwIn4BYYlPdy+yghzEKRAo0f9ZAeKg
 NiaJ47dvMEMc4SKxfPdRdojjVCQ+/H4AZosKKEvcPPycfQKj4Cwkt85CcussJLcuYGRexSiQ
 WGasl5lcrJeWX1SSoZdetIkRHOSMvjsYb29+q3eIkYmD8RCjBAezkgiv8+8XcUK8KYmVValF
 +fFFpTmpxYcYpTlYlMR587iXxwoJpCeWpGanphakFsFkmTg4pRqYMmVKsrVfCJZure/K92j8
 8nr7Xr0XzDO43eZ8m7FPI1ZdR9H/u2ebGK/446k7pt/SODwr1PH+H73VBfk3zjIv4rv548Pf
 OoM1R5dePSOpl89/u9h53jzLvQWCl2YYlbe/LVd4q54SP/3fmoJV5XseXfy0pqJ+2kf53Kq6
 4LlFEivbMmqP7EhZZnhAWPHgnjkXIg7nuOz13nz7yZ6ICXerfG2kyy4sXpdT5V4sp/G4Qvq/
 3Fk3SbcDR6tFe2uuP7vZe2375eNfdTdzH49QiZrq5+HO8Zlb8MpLnXPPYzr6pzN3CXx84L7z
 xM25ctWiXDVe7w5G87AERUSvPLYovMTRXexH7/HzTG9r/7Aw89xYp8RSnJFoqMVcVJwIAHwp
 EdrhAgAA
X-Greylist: inspected by milter-greylist-4.6.2 (mailgate-2.ics.forth.gr
 [139.91.1.5]);
 Wed, 17 Jun 2020 05:28:20 +0000 (GMT) for IP:'139.91.1.77' DOMAIN:'av3in'
 HELO:'av3.ics.forth.gr' FROM:'mick@ics.forth.gr' RCPT:''
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mailgate-2.ics.forth.gr [139.91.1.5]); Wed, 17 Jun 2020 05:28:20 +0000 (GMT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_222832_324568_F2AFF051 
X-CRM114-Status: GOOD (  19.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [139.91.1.5 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Nick Kossifidis <mick@ics.forth.gr>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Στις 2020-06-17 04:56, Zong Li έγραψε:
> On Tue, Jun 16, 2020 at 8:27 PM Nick Kossifidis <mick@ics.forth.gr> 
> wrote:
>> 
>> Στις 2020-06-16 10:45, Zong Li έγραψε:
>> > Implement the 'devmem_is_allowed()' interface for RISC-V, like some of
>> > other architectures have done. It will be called from
>> > range_is_allowed()
>> > when userpsace attempts to access /dev/mem.
>> >
>> > Access to exclusive IOMEM and kernel RAM is denied unless
>> > CONFIG_STRICT_DEVMEM is set to 'n'.
>> >
>> > Test it by devmem, the result as follows:
>> >
>> >  - CONFIG_STRICT_DEVMEM=y
>> >       $ devmem 0x10010000
>> >       0x00000000
>> >       $ devmem 0x80200000
>> >       0x0000106F
>> >
>> >  - CONFIG_STRICT_DEVMEM is not set
>> >       $ devmem 0x10010000
>> >       devmem: mmap: Operation not permitted
>> >       $ devmem 0x80200000
>> >       devmem: mmap: Operation not permitted
>> >
>> > Signed-off-by: Zong Li <zong.li@sifive.com>
>> > ---
>> >  arch/riscv/Kconfig          |  1 +
>> >  arch/riscv/include/asm/io.h |  2 ++
>> >  arch/riscv/mm/init.c        | 19 +++++++++++++++++++
>> >  3 files changed, 22 insertions(+)
>> >
>> > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
>> > index 128192e14ff2..ffd7841ede4c 100644
>> > --- a/arch/riscv/Kconfig
>> > +++ b/arch/riscv/Kconfig
>> > @@ -16,6 +16,7 @@ config RISCV
>> >       select ARCH_HAS_BINFMT_FLAT
>> >       select ARCH_HAS_DEBUG_VIRTUAL if MMU
>> >       select ARCH_HAS_DEBUG_WX
>> > +     select ARCH_HAS_DEVMEM_IS_ALLOWED
>> >       select ARCH_HAS_GCOV_PROFILE_ALL
>> >       select ARCH_HAS_GIGANTIC_PAGE
>> >       select ARCH_HAS_MMIOWB
>> > diff --git a/arch/riscv/include/asm/io.h b/arch/riscv/include/asm/io.h
>> > index 3835c3295dc5..04ac65ab93ce 100644
>> > --- a/arch/riscv/include/asm/io.h
>> > +++ b/arch/riscv/include/asm/io.h
>> > @@ -147,4 +147,6 @@ __io_writes_outs(outs, u64, q, __io_pbr(),
>> > __io_paw())
>> >
>> >  #include <asm-generic/io.h>
>> >
>> > +extern int devmem_is_allowed(unsigned long pfn);
>> > +
>> >  #endif /* _ASM_RISCV_IO_H */
>> > diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
>> > index bbe816e03b2f..5e7e61519acc 100644
>> > --- a/arch/riscv/mm/init.c
>> > +++ b/arch/riscv/mm/init.c
>> > @@ -517,6 +517,25 @@ void mark_rodata_ro(void)
>> >  }
>> >  #endif
>> >
>> > +#ifdef CONFIG_STRICT_DEVMEM
>> > +#include <linux/ioport.h>
>> > +/*
>> > + * devmem_is_allowed() checks to see if /dev/mem access to a certain
>> > address
>> > + * is valid. The argument is a physical page number.
>> > + *
>> > + * Disallow access to system RAM as well as device-exclusive MMIO
>> > regions.
>> > + * This effectively disable read()/write() on /dev/mem.
>> > + */
>> > +int devmem_is_allowed(unsigned long pfn)
>> > +{
>> > +     if (iomem_is_exclusive(pfn << PAGE_SHIFT))
>> > +             return 0;
>> > +     if (!page_is_ram(pfn))
>> > +             return 1;
>> > +     return 0;
>> > +}
>> > +#endif
>> > +
>> >  void __init resource_init(void)
>> >  {
>> >       struct memblock_region *region;
>> 
>> This shouldn't be part of /mm/init.c, it has nothing to do with memory
>> initialization, I suggest we move it to another file like mmap.c on
> 
> Let me move it, thanks.
> 
>> arm/arm64. Also before using iomem_is_exclusive we should probably 
>> also
>> mark any reserved regions with the no-map attribute as busy|exclusive,
>> reserved-memory regions are not necessarily part of the main memory so
>> the page_is_ram check may pass and iomem_is_exclusive won't do any 
>> good.
> 
> What do you think if we mark the reserved region in
> kdump_resource_init, and change the kdump_resource_init to a more
> generic name for initializing resources?

Sounds good to me, I'll work on this within the week. Do you agree with 
marking the no-map reserved-memory regions as exclusive ?

