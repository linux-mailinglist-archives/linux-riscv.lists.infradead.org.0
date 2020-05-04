Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B26751C3549
	for <lists+linux-riscv@lfdr.de>; Mon,  4 May 2020 11:10:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uIbF5zxX6Dw0nqWjJ2TagrefdsSTjGZ8h/iE+ii+4b4=; b=Rf5T38DXyNcTogsRa/poc+fwa
	I4ibzkdivT8RyDRVelhIRZVwLQdxjf4if6n3Ss1QzYM2hJOi0MjwPhsRbJAACkJsfFHXzfiKo4yAR
	VFDG7kyCiTlrV78si6zdmGoiNauTzFlbajfHeb6GgTkuS2zSisCCrrwbdIXVHIdjlsWtYflYNgjmh
	MhFY2TVJf//gitc6+v8S1CvfwXxyokA8IV/DmKHMXP6dA5K+sHF9fPDs652RYr70R/SyG1QvHA+ZK
	IjLo8NWum9Z3WBlXcjkBJg6AOIFNhYtKsUaW8TD7bTwNUbGL45awgKIB8V8QA8T41s1f7cmwhxZGb
	ZDJmUGFRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVX7K-0007vn-Gv; Mon, 04 May 2020 09:10:26 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVX7F-0007uw-FB; Mon, 04 May 2020 09:10:22 +0000
Received: by mail-pf1-x442.google.com with SMTP id x2so5229859pfx.7;
 Mon, 04 May 2020 02:10:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=uIbF5zxX6Dw0nqWjJ2TagrefdsSTjGZ8h/iE+ii+4b4=;
 b=cH+LYADnJpxdzvW2+5Q1jFzZ9L9OyZncRQgoZJsu0phKyHmo/b1tb6JE/KAVmXislx
 576Ap7opHZUSUi70vyPGcMe0C9p7leyk8cASBIWKAwGsK8Y00lThuiFS3aNw65PsYLTm
 szhQMtXIBmQ2tAAcHVWgTijiqY0HV7xQgK5xZyE/QR599vulSPnvVwVtjGkKmy/Dtck5
 oIznVkUPaNZ0LtGj6iS59qmm9P3OHQSvVr5i8oQIHTb7kJ5GJncJ11cB4kee+KdWXypI
 BLlZ0XKGbYY2XjNxgkp917C15tyTspqX3/ZW8nK4NnjT3ll8+dlQFg8POxb8ZU3v61ad
 l8Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uIbF5zxX6Dw0nqWjJ2TagrefdsSTjGZ8h/iE+ii+4b4=;
 b=dmAkO6hqba1UuVC+hkPHqyJULSIc8f0NUSxiyk0LrK8ES1IsWFYqN8r3KiPhqoFnts
 UfAGW0uCR9pbuXbZaodLYs/mm+IsFyVZr3wu9cQgo8dpCkdzcL0wh2ANGztB3cPLTN8A
 qR0rIQGK2pDUCNjk/AJs+9MGQE4US8Qfel9OjATkTCwti8R7z30ItKH0AQ6fvYLClraL
 1VPshL2Vag/pkg3ehYrpjM0SPSVY6t7M0H3gRoyDDzEjNeNm1L8btWdGKricZUeJybBk
 O4Av6LpTxGkD2TE51xACgfDOvlQ49L0ojWcTS28bPG0EUm7qsCc6WXLFWsERiwBr2wuD
 GuQg==
X-Gm-Message-State: AGi0PuZ0LApx02jfRMRfp/81avHqKHxpgGkyZ7sl2udVT6RdA/CoOdvj
 QUBJ0cvodSVE9M+vRCJrGQQ=
X-Google-Smtp-Source: APiQypJG/fsOYbUSEQYZkHIQLG4hFpTXov1SCNDc2K85TTECtJawhDDWFsEna1ULkqdmyHpan3Z+ag==
X-Received: by 2002:aa7:97b2:: with SMTP id d18mr16995522pfq.89.1588583420829; 
 Mon, 04 May 2020 02:10:20 -0700 (PDT)
Received: from localhost ([49.207.53.0])
 by smtp.gmail.com with ESMTPSA id gd17sm1461493pjb.21.2020.05.04.02.10.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 04 May 2020 02:10:19 -0700 (PDT)
Date: Mon, 4 May 2020 14:40:18 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 0/3] Highmem support for 32-bit RISC-V
Message-ID: <20200504091018.GA24897@afzalpc>
References: <20200331093241.3728-1-tesheng@andestech.com>
 <CAK8P3a3LokurC0n9XiwtPQh9ZgQcswMKY4b+TEsQh1VgYDNeWA@mail.gmail.com>
 <20200408035118.GA1451@andestech.com>
 <CAK8P3a1JS3_2fWrhNTZx0eTWjJa-GTb4AscTPqydpSP5EB15Yw@mail.gmail.com>
 <20200414151748.GA5624@afzalpc>
 <CAK8P3a0JW9x-Wk9Ec3+zLjPHbWAvPQx8MF-xe-PnWUgEjRAuTg@mail.gmail.com>
 <20200415135407.GA6553@afzalpc> <20200503145017.GA5074@afzalpc>
 <CAK8P3a3OC5UO72rTDWi6+XgmExJmkATEjscq8hns8Bng06OpcQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAK8P3a3OC5UO72rTDWi6+XgmExJmkATEjscq8hns8Bng06OpcQ@mail.gmail.com>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_021021_509982_C59D4C2E 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: zong.li@sifive.com, Alan Kao <alankao@andestech.com>, atish.patra@wdc.com,
 Albert Ou <aou@eecs.berkeley.edu>, Gary Guo <gary@garyguo.net>,
 linux-riscv@lists.infradead.org, Steven Price <steven.price@arm.com>,
 alex@ghiti.fr, Russell King <linux@armlinux.org.uk>,
 Mike Rapoport <rppt@linux.ibm.com>, Borislav Petkov <bp@suse.de>,
 Eric Lin <tesheng@andestech.com>, Greentime Hu <green.hu@gmail.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 yash.shah@sifive.com, Palmer Dabbelt <palmer@dabbelt.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Logan Gunthorpe <logang@deltatee.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

[ +linux-arm-kernel

  Context: This is regarding VMSPLIT_4G_4G support for 32-bit ARM as a
  possible replacement to highmem. For that, initially, it is being
  attempted to move static kernel mapping from lowmem to vmalloc space.

  in next reply, i will remove everyone/list !ARM related ]

Hi,

On Sun, May 03, 2020 at 10:20:39PM +0200, Arnd Bergmann wrote:

> Which SoC platform are you running this on? Just making
> sure that this won't conflict with static mappings later.

Versatile Express V2P-CA15 on qemu, qemu options include --smp 2 &
2GB memory.

BTW, i could not convince myself why, except for DEBUG_LL, static io
mappings are used.

> 
> One problem I see immediately in arm_memblock_init()

Earlier it went past arm_memblock_init(), issue was clearing the page
tables from VMALLOC_START in devicemaps_init() thr' paging_init(),
which was like cutting the sitting branch of the tree.

Now it is crashing at debug_ll_io_init() of devicemap_init(), and
printascii/earlycon was & is being used to debug :). Things are going
wrong when it tries to create mapping for debug_ll. It looks like a
conflict with static mapping, which you mentioned above, at the same
time i am not seeing kernel static mapping in the same virtual
address, need to dig deeper.

Also tried removing DEBUG_LL, there is a deafening silence in the
console ;)

> is that it uses
> __pa() to convert from virtual address in the linear map to physical,
> but now you actually pass an address that is in vmalloc rather than
> the linear map.

__virt_to_phys_nodebug() which does the actual work on __pa() invocation
has been modifed to handle that case (ideas lifted from ARM64's
implementation), though currently it is a hack as below (and applicable
only for ARM_PATCH_PHYS_VIRT disabled case), other hacks being
VMALLOC_OFFSET set to 0 and adjusting vmalloc size.

        static inline phys_addr_t __virt_to_phys_nodebug(unsigned long x)
        {
	        phys_addr_t __x = (phys_addr_t)x;

        	if (__x >= 0xf0000000)
	        	return __x - KIMAGE_OFFSET + PHYS_OFFSET;
        	else
	        	return __x - PAGE_OFFSET + PHYS_OFFSET;
        }

Regards
afzal

