Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB4D1C380C
	for <lists+linux-riscv@lfdr.de>; Mon,  4 May 2020 13:28:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9ZOLLHTnQZUZwincSOGGc3EQxTyvADvqMiVZhyFEpI8=; b=lXSJybRKc/wid0an8V2rjAwwA
	hMteraEPNvCWKs7Df+vyn0LbElYxUS/T9as10VZj/atkSXoZXUqZIWsCH0YT4r9UluSWi+gx9gCig
	mT8nRNPPKHUyvKCLoZcC4VEIQnf9G4vBReUe4Wj3Z7C+jA5zK6qhGxhwF907HQIqA4mtIH6vwOzNQ
	Hvp2NN9t7+kn2lCeKhctMaqDD/DC38I80Mloxbe532R0Nw9k0Hl3RCgHYNTC7FDZUv6S5Uc9vHwfN
	rB9gtjp18PJiztXtj/b38I8uHccWvCrdhDrCXuI9cLqYCJnmMU78BbeY91dJEc89UzaRZtOtS8QWi
	nrE4lzU6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVZGN-0007J4-7N; Mon, 04 May 2020 11:27:55 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVZGJ-0007IC-8D; Mon, 04 May 2020 11:27:52 +0000
Received: from mail-qk1-f179.google.com ([209.85.222.179]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1McpW6-1ivgXu291m-00a0nZ; Mon, 04 May 2020 13:27:48 +0200
Received: by mail-qk1-f179.google.com with SMTP id g185so2547754qke.7;
 Mon, 04 May 2020 04:27:48 -0700 (PDT)
X-Gm-Message-State: AGi0PuaUC+2HrxCUgN2IesRCGbfrHx8QPc4184NIyVwewWTUYmjSf+v1
 8chruImgNXFDnUqPoskjcIESomSEWbR6fcwOA0k=
X-Google-Smtp-Source: APiQypIIHoujLODItegRRgCsMaNglRK7LNUpimxq01cun2hB/w8fYeIm4nZCEGen6hYmmyMPRHB0gBdjFi2URrtAcZQ=
X-Received: by 2002:a37:a492:: with SMTP id
 n140mr16289220qke.352.1588591667069; 
 Mon, 04 May 2020 04:27:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200331093241.3728-1-tesheng@andestech.com>
 <CAK8P3a3LokurC0n9XiwtPQh9ZgQcswMKY4b+TEsQh1VgYDNeWA@mail.gmail.com>
 <20200408035118.GA1451@andestech.com>
 <CAK8P3a1JS3_2fWrhNTZx0eTWjJa-GTb4AscTPqydpSP5EB15Yw@mail.gmail.com>
 <20200414151748.GA5624@afzalpc>
 <CAK8P3a0JW9x-Wk9Ec3+zLjPHbWAvPQx8MF-xe-PnWUgEjRAuTg@mail.gmail.com>
 <20200415135407.GA6553@afzalpc> <20200503145017.GA5074@afzalpc>
 <CAK8P3a3OC5UO72rTDWi6+XgmExJmkATEjscq8hns8Bng06OpcQ@mail.gmail.com>
 <20200504091018.GA24897@afzalpc>
In-Reply-To: <20200504091018.GA24897@afzalpc>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 4 May 2020 13:27:31 +0200
X-Gmail-Original-Message-ID: <CAK8P3a25sZ9B+AE=EJyJZSU91CkBLLR6p2nixw_=UAbczg3RiQ@mail.gmail.com>
Message-ID: <CAK8P3a25sZ9B+AE=EJyJZSU91CkBLLR6p2nixw_=UAbczg3RiQ@mail.gmail.com>
Subject: Re: [PATCH 0/3] Highmem support for 32-bit RISC-V
To: afzal mohammed <afzal.mohd.ma@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:/i9t9qRKXOiKxyqXA6m/MK1Dt9wZmarX1euFn6iZiLiRMY1dmMs
 5gRsCO2AVEnZiWpuU85IphtVlTrWoTUYyxfUnfSgMVc8Td7fDHIYdZVPsFFZjQqapv4d8yj
 u8l0CqQOUU6BuOJLp7bIcmy9EHMkO3iTxKTA8uK0z3044eT4hK37756rS/Z37GNASNLzx/V
 ow/SqdlHxJYCk0aMz9Vrw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:uoER3ETRvKQ=:szTyIVw5GpnxpP1S+y/L7J
 PJzUI53uNk2B+Ml8oMXHdOzudq/Lokn2OEuepcxoBiVh//xtctDrNZCsm1Ux90HoZRXaqESHe
 kO8UQiG0Wz8QKBknpMVrJt+5MYdMckT1gQUcZlvA88L2SkeIMyslH/Z17aBujaj4eYfvZ5Hma
 KfFww/qukA9Mfl/DEHdXt7iogVeAoRwVSrCVjgt0bMgqOlp2nF9Har1qxdFZ4pTikFpWeea5B
 IEoz7K/TWfwQ/rjuSBxQzmS/Cc/V8445Ewx01MDH2DfPSv83ideW7QLALmuJ2SWSsHNX4PWgI
 Ma8uM9PG3arKw5427wrcqz+Ja8U0fSPz9uz1ZJD1+yCJB2EwNQBaqLDxxjf8DlyhFHoAQFHye
 zf3e6plf9qGr13yZoyOeBovfZxhdLMS2tkIBaMFbx7lWcwURxtPeFMJ/5LDWURwy2xLRbsBSV
 N7RgVfG6J1xx3xzJwuTA4l+p/LJBGJw6RU83PDjjnUvI/yg+NDLKIKEcXPrD1topzQzTqPIwP
 R29ilskpHNMqNNuzMVh/Mf3/CtFuXunTLBbPegr74v/AUGeaVabWqorsUvfRZGVIF/fgjTM6T
 KqlvoNZkLu/TbvA/jLpBOd8p/FgE/imKK3RnXvnzm/Mtm5Ke6ENbnaQDGwuPP+s0BCzCP8Oqt
 609DiBLZLCbUesdK7RXHLiH+Qf77bRZEBFRbX41sGJllwJ1uyi1qr3T5kB9jUM46ZcKrpcI6O
 BY+izBPW6T681wKE1py+HOxnnw/xmt0eO5klV2NYLhg+vjFANlju/oq3oVYfj3SzgTy/Onl65
 GvU1d02swley3SKbR9x1IJZxojcFiJKmfk/j7DTzEny7TS9mTw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_042751_597832_F6AE1FE9 
X-CRM114-Status: GOOD (  22.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [212.227.126.134 listed in wl.mailspike.net]
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
Cc: zong.li@sifive.com, Alan Kao <alankao@andestech.com>, atish.patra@wdc.com,
 Albert Ou <aou@eecs.berkeley.edu>, Gary Guo <gary@garyguo.net>,
 linux-riscv@lists.infradead.org, Steven Price <steven.price@arm.com>,
 alex@ghiti.fr, Russell King <linux@armlinux.org.uk>,
 Mike Rapoport <rppt@linux.ibm.com>, Borislav Petkov <bp@suse.de>,
 Eric Lin <tesheng@andestech.com>, Greentime Hu <green.hu@gmail.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 yash.shah@sifive.com, Palmer Dabbelt <palmer@dabbelt.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Logan Gunthorpe <logang@deltatee.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, May 4, 2020 at 11:10 AM afzal mohammed <afzal.mohd.ma@gmail.com> wrote:
>
> [ +linux-arm-kernel
>
>   Context: This is regarding VMSPLIT_4G_4G support for 32-bit ARM as a
>   possible replacement to highmem. For that, initially, it is being
>   attempted to move static kernel mapping from lowmem to vmalloc space.
>
>   in next reply, i will remove everyone/list !ARM related ]
>
> Hi,
>
> On Sun, May 03, 2020 at 10:20:39PM +0200, Arnd Bergmann wrote:
>
> > Which SoC platform are you running this on? Just making
> > sure that this won't conflict with static mappings later.
>
> Versatile Express V2P-CA15 on qemu, qemu options include --smp 2 &
> 2GB memory.

Ok

> BTW, i could not convince myself why, except for DEBUG_LL, static io
> mappings are used.

I don't think vexpress uses it, but others have some 'struct map_desc'
instances mostly for historic reasons, e.g. to map some registers that
are needed at very early boot time, or from assembler files.

> > One problem I see immediately in arm_memblock_init()
>
> Earlier it went past arm_memblock_init(), issue was clearing the page
> tables from VMALLOC_START in devicemaps_init() thr' paging_init(),
> which was like cutting the sitting branch of the tree.
>
> Now it is crashing at debug_ll_io_init() of devicemap_init(), and
> printascii/earlycon was & is being used to debug :). Things are going
> wrong when it tries to create mapping for debug_ll. It looks like a
> conflict with static mapping, which you mentioned above, at the same
> time i am not seeing kernel static mapping in the same virtual
> address, need to dig deeper.
>
> Also tried removing DEBUG_LL, there is a deafening silence in the
> console ;)

I don't think there is any other mapping that would conflict with the
DEBUG_LL one, but you may be in a hole where the existing one
is not mapped. IIRC it first gets mapped in __create_page_tables()
in arch/arm/kernel/head.S, and later in debug_ll_io_init(), but if the
old page tables were just discarded, it won't work for a bit.

Using gdb to step through the code in qemu is often more reliable
than printing to the console, at least until you get to the point
when you have registered the real console.

> __virt_to_phys_nodebug() which does the actual work on __pa() invocation
> has been modifed to handle that case (ideas lifted from ARM64's
> implementation), though currently it is a hack as below (and applicable
> only for ARM_PATCH_PHYS_VIRT disabled case), other hacks being
> VMALLOC_OFFSET set to 0 and adjusting vmalloc size.
>
>         static inline phys_addr_t __virt_to_phys_nodebug(unsigned long x)
>         {
>                 phys_addr_t __x = (phys_addr_t)x;
>
>                 if (__x >= 0xf0000000)
>                         return __x - KIMAGE_OFFSET + PHYS_OFFSET;
>                 else
>                         return __x - PAGE_OFFSET + PHYS_OFFSET;
>         }

Ok, makes sense.

     Arnd

