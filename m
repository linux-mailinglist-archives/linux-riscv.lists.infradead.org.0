Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63DB98E850
	for <lists+linux-riscv@lfdr.de>; Thu, 15 Aug 2019 11:32:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4cKjRaaDMiLajMd+rctfJfozZ1N4BuwI3m5zC/QlXx0=; b=BKxxEYlLVnJJSB
	ChTnR1Cyz0sNBhZIgRi5QX0A6ZHgxxy0+ww9eY/NmOEKEQZAbf5vKTVu71aN62dOFC1NVZ6QxCVeZ
	mZDmuIJ7agAc4z2EeyMA3wS3LPH+LRQF8iwxHzVqvh+/FGpQL2z8rb5aKjcn0WBK8J6xmaWHXiXuR
	6ikk4o99Tnp3FI1KPVfPCnNEJxZU7zhh9mvt1Xgylggc1FAoCKiomDUgzEsNwx8JPhNsLiB0mB+/j
	6+h+lfNC7snCdsJ0Fno4EDwwf8Ou7zuyU93fem7TlEjLMusznK9/8hMNXHp5Mrac5a6wKtXEGfWHA
	C2bKqsNpOn/5f3glj/GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyC7D-0002Ca-T8; Thu, 15 Aug 2019 09:32:16 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyC78-00029M-8u
 for linux-riscv@lists.infradead.org; Thu, 15 Aug 2019 09:32:11 +0000
Received: by mail-wm1-x343.google.com with SMTP id v15so750270wml.0
 for <linux-riscv@lists.infradead.org>; Thu, 15 Aug 2019 02:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EexUI7pBO+y+x9iztzk6muOC5V/JyQ3M/ih3wi+9iUo=;
 b=X/wbCO64nDBxAR7srA/xsH1W7BhyQJ7EWOaub7eQ7JF70Y5IGtkMUVmZB4XNSbUBrb
 aPk+Cm1w8Ce2Yvf9liGUPvmWCwn7KuJN8r6BQQ67OpUhjBuqW8dAz/ekw9OttDvPpKxg
 qi3z5/Txu+/6Y1vnz+2B5PKDIOYepvv9RXXJZFMme9sEvQtS141a/2orR3GY2yu31ESs
 eh+Qc/KNlpGwsh7dir4e8cA57eODbD/4BVa/OXHdOdqf59sOtiXXUptDVEc7cscDndds
 FG0Zmd5kMUfwBVjwJEu2zgqDtKlf3YcWqmzcJlEeZ9ECfTKNa+MEhRL+UaT/slwvjBig
 CXgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EexUI7pBO+y+x9iztzk6muOC5V/JyQ3M/ih3wi+9iUo=;
 b=h8aJEb288nMTOzIOJuVlK70wA6/m0JiZE4+88GbDy93baEKX8e7lbplArL5pgwJn3J
 cIugA/TsAH5XhX3B5VBb1kQZdwYobsHT8sn46fhO5eyV/FXaRNx+hx2lxYh9odUWcwhS
 dM0wNedHLAbGvBcY7Y/uui7P1BAs58T8PEsYjTyWeRDdPsxboE6OVSG387Ar5VedpZrs
 Kf0ykow+s2NfgHoJKBjaTJJwI/7MEhVzw4vhEBpLQZqjsLguSADlo+PqETcGH32shv0J
 DkKFHHLn7wsL3EzjsWaWFnjiCnCoV28EPD8PPkr4pzat4439Pn1rAsiBpKWS5FQJm+ys
 HQmw==
X-Gm-Message-State: APjAAAWvW+YSt1WtNtnk2WyiW84IcTW74q8LydNj37I9qEE4crFSbTlH
 ShOZTurQRAkqwfMF17LPckY0yMSXrZl0cHwM38KheA==
X-Google-Smtp-Source: APXvYqwaoEp4p8qd4nLLFuVvTor4VW6XOYc3SA4YE1R6968lwPSgPaOoqq3r/wfRSvZ0CVJY/uCdMd5pz4tVO05YGGM=
X-Received: by 2002:a1c:2dcf:: with SMTP id t198mr1707704wmt.147.1565861524605; 
 Thu, 15 Aug 2019 02:32:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190109203911.7887-1-logang@deltatee.com>
 <20190109203911.7887-3-logang@deltatee.com>
 <CAEbi=3d0RNVKbDUwRL-o70O12XBV7q6n_UT-pLqFoh9omYJZKQ@mail.gmail.com>
 <c4298fdd-6fd6-fa7f-73f7-5ff016788e49@deltatee.com>
 <CAEbi=3cn4+7zk2DU1iRa45CDwTsJYfkAV8jXHf-S7Jz63eYy-A@mail.gmail.com>
 <CAEbi=3eZcgWevpX9VO9ohgxVDFVprk_t52Xbs3-TdtZ+js3NVA@mail.gmail.com>
 <0926a261-520e-4c40-f926-ddd40bb8ce44@deltatee.com>
 <CAEbi=3ebNM-t_vA4OA7KCvQUF08o6VmL1j=kMojVnYsYsN_fBw@mail.gmail.com>
 <e2603558-7b2c-2e5f-e28c-f01782dc4e66@deltatee.com>
 <CAEbi=3d7_xefYaVXEnMJW49Bzdbbmc2+UOwXWrCiBo7YkTAihg@mail.gmail.com>
 <96156909-1453-d487-ff66-a041d67c74d6@deltatee.com>
 <CAEbi=3dC86dhGdwdarS_x+6-5=WPydUBKjo613qRZxKLDAqU_g@mail.gmail.com>
 <5506c875-9387-acc9-a7fe-5b7c10036c40@deltatee.com>
 <alpine.DEB.2.21.9999.1908130921170.30024@viisi.sifive.com>
 <e1f78a33-18bb-bd6e-eede-e5e86758a4d0@deltatee.com>
 <CAEbi=3f+JDywuHYspfYKuC8z2wm8inRenBz+3DYbKK3ixFjU_g@mail.gmail.com>
 <8b7b6285-dd85-5895-8653-be1f6f08cca8@deltatee.com>
In-Reply-To: <8b7b6285-dd85-5895-8653-be1f6f08cca8@deltatee.com>
From: Greentime Hu <greentime.hu@sifive.com>
Date: Thu, 15 Aug 2019 17:31:52 +0800
Message-ID: <CAHCEeh+us9N5_AMAJp41Ob9R9PD=JfWLcUrU+gU54xf8NKddJw@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] RISC-V: Implement sparsemem
To: Logan Gunthorpe <logang@deltatee.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_023210_347218_B93B3AE9 
X-CRM114-Status: GOOD (  16.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rob Herring <robh@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Andrew Waterman <andrew@sifive.com>, Palmer Dabbelt <palmer@sifive.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Bates <sbates@raithlin.com>, linux-mm@vger.kernel.org,
 Greentime Hu <green.hu@gmail.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Olof Johansson <olof@lixom.net>, linux-riscv@lists.infradead.org,
 Michael Clark <michaeljclark@mac.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Logan,

On Thu, Aug 15, 2019 at 6:21 AM Logan Gunthorpe <logang@deltatee.com> wrote:
>
> Hey,
>
> On 2019-08-14 7:35 a.m., Greentime Hu wrote:
> > How about this fix? Not sure if it is good for everyone.
>
> I applied your fix to the patch and it seems ok. But it doesn't seem to
> work on a recent version of the kernel. Have you got it working on v5.3?
> It seems the following patch breaks things:
>
> 671f9a3e2e24 ("RISC-V: Setup initial page tables in two stages")
>
> I don't really have time right now to debug this any further.
>

I just tried v5.3-rc4 and it failed. I try to debug this case.
I found it failed might be because of an unmapped virtual address is used
in memblocks_present() -> memblock_alloc ().

In this commit 671f9a3e2e24 ("RISC-V: Setup initial page tables in two
stages"), it finishes all the VA/PA mapping after setup_vm_final() is
called.
So we have to call memblocks_present() and sparse_init() right after
setup_vm_final().

Here is my patch and I tested with memory-with-hole.
It can boot normally in Unleashed board after applying this patch.

diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index 27d1d847fb2d..35aacb0c93e5 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -138,8 +138,6 @@ void __init setup_bootmem(void)
                                  PFN_PHYS(end_pfn - start_pfn),
                                  &memblock.memory, 0);
        }
-       memblocks_present();
-       sparse_init();
 }

 unsigned long va_pa_offset;
@@ -452,6 +450,8 @@ static void __init setup_vm_final(void)
 void __init paging_init(void)
 {
        setup_vm_final();
+       memblocks_present();
+       sparse_init();
        setup_zero_page();
        zone_sizes_init();
 }

Test case:
memory@80000000 {
        device_type = "memory";
        reg = <0x0 0x80000000 0x0 0x80000000>;
};
memory@180000000 {
        device_type = "memory";
        reg = <0x1 0x80000000 0x0 0x40000000>;
};


# cat /proc/meminfo
MemTotal:        3003496 kB
MemFree:         2986584 kB
MemAvailable:    2970176 kB
Buffers:               0 kB
Cached:             3540 kB
SwapCached:            0 kB
Active:             3920 kB
Inactive:             68 kB
Active(anon):       3920 kB
Inactive(anon):       68 kB
Active(file):          0 kB
Inactive(file):        0 kB
Unevictable:           0 kB
Mlocked:               0 kB
SwapTotal:             0 kB
SwapFree:              0 kB
Dirty:                 0 kB
Writeback:             0 kB
AnonPages:           528 kB
Mapped:             1984 kB
Shmem:              3540 kB
KReclaimable:        688 kB
Slab:               5700 kB
SReclaimable:        688 kB
SUnreclaim:         5012 kB
KernelStack:         424 kB
PageTables:           80 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:     1501748 kB
Committed_AS:       3200 kB
VmallocTotal:   67108863 kB
VmallocUsed:          12 kB
VmallocChunk:          0 kB
Percpu:              272 kB
# uname -a
Linux buildroot 5.3.0-rc4-00001-g44404421c481-dirty #10 SMP Thu Aug 15
16:28:24 DST 2019 riscv64 GNU/Lin[ 2352.443621] random: fast init done
ux
# zcat /proc/config.gz |grep SPARSE
CONFIG_SPARSE_IRQ=y
CONFIG_ARCH_SPARSEMEM_ENABLE=y
CONFIG_SPARSEMEM_MANUAL=y
CONFIG_SPARSEMEM=y
CONFIG_SPARSEMEM_EXTREME=y
CONFIG_SPARSEMEM_VMEMMAP_ENABLE=y
CONFIG_SPARSEMEM_VMEMMAP=y
# CONFIG_INPUT_SPARSEKMAP is not set

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
