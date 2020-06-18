Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 495AA1FFD98
	for <lists+linux-riscv@lfdr.de>; Thu, 18 Jun 2020 23:55:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=QjYRXVnTKmSPy9nc0sAVhFym/Nqfv053XoZu76ot+xk=; b=HEk+vKS89IWypF
	hL7zXEtCgZlgeTxTFJUd8+rdgbXjwIv1dNiot7Z6dyE04x3MS1opMtGEqHUBQu9wacI1l1QS0IaF8
	l2ZahPKROm8sS6gwJSZUyYCrDksSPDXWS6vhqWVpvQntHXgjFDd+bvXexafQ959m8/dGBI4RWqpRs
	FJScNP8xr9LvL9Y4tyYkmp6gES+p4u9v2HuMa/oTceKWZ+sdpVVuALX9FaPADT7Ct2VTomeC0sxmL
	F2ZW76su7q0zJCNMI4Wm+r0z8hMHcmmcFnuOdnypfup3gtEtk39RWTuU1dzXWVU1nH1Pf9xux93Gq
	8mDYqeK+w6cK1LRxbxvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jm2Up-0008AX-Si; Thu, 18 Jun 2020 21:54:55 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jm2Um-00089z-32
 for linux-riscv@lists.infradead.org; Thu, 18 Jun 2020 21:54:53 +0000
Received: by mail-pl1-x642.google.com with SMTP id bh7so3028558plb.11
 for <linux-riscv@lists.infradead.org>; Thu, 18 Jun 2020 14:54:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=QjYRXVnTKmSPy9nc0sAVhFym/Nqfv053XoZu76ot+xk=;
 b=P7UkIEZcivpLDMraS1/PG5nWdM56WKKxREOxLKarqGPuWeD+mZ85UGS87OOrIuyLB+
 ObBCCTCaFeunarMTOKv+lGii9cmEdl/U+eAzoMeXNHb4KgISuYXOQZ0xVjAK0Ji3lBl/
 gwzrZHzHBMT5To5SezHRr4+CwmSkZkOizMEKKOSmVE8VSQWOZftiapgBsPC3lKJyL/xR
 OGWH2xrMWt0AG04UK+XpJu/bA6ffx3EHrlg4YwWmfLvlZjp5Oxsa2przofJSHSUY72zY
 DwqMtRUYdfusqcQJE2ShoWA/hMWZQZxcJ/APQ5uTseS/HvXiCkm5cpY9mdHzaLtoWTXj
 JtmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=QjYRXVnTKmSPy9nc0sAVhFym/Nqfv053XoZu76ot+xk=;
 b=Pp7mPCo0AJfBduDK9vc0w0JUtwryNJTaPy/dGf/mRoZY/uw/ZqAej4/J2flKD9P3dW
 Isa8kIWTsG8uhPxnHepdSYZX+ggVaJbfSAh27NH0RvWUg3L9k9i+4wXfVid6881Oo8rV
 2bKU5hzu5vaPnvzhzT0k/29+40jsa+oQjWsuPoyH86VnXWBjBYTGkTe6G94dppSySDmZ
 WdK30LrLfro6ftStNb28Uwv7oVKCFP5Waz4OwUdJGnlxWXjhA0s7ovfY/s9E+OYiv4fn
 IyFj1Vccyzs8sM/IbrfACv1fP7glkVAX4H40bmv6ZIjqE0cQzMF+xV4XyKMTaqdBwKvi
 vOWQ==
X-Gm-Message-State: AOAM533O6hNK6/nahGTvZnTePKfZQNQK/a7Alf21spzzEGgYwSUNdIpR
 wudv3puDWJi/R/b0SzWVkhcbKw==
X-Google-Smtp-Source: ABdhPJxY9ed/pKFl3Hlee+TLwGMO/5Z8Xdo7dUMFNr37yrdzofOr7hOzqOL2MDuCyOXZltNK/LaXRQ==
X-Received: by 2002:a17:90b:110f:: with SMTP id
 gi15mr405888pjb.87.1592517290252; 
 Thu, 18 Jun 2020 14:54:50 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id z24sm3835604pfk.29.2020.06.18.14.54.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 14:54:49 -0700 (PDT)
Date: Thu, 18 Jun 2020 14:54:49 -0700 (PDT)
X-Google-Original-Date: Thu, 18 Jun 2020 14:54:44 PDT (-0700)
Subject: Re: [PATCH v2 0/8] Introduce sv48 support
In-Reply-To: <20200603081104.14004-1-alex@ghiti.fr>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: alex@ghiti.fr
Message-ID: <mhng-63897bc8-faa3-405e-9192-3b29216484b9@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_145452_131047_C90AA059 
X-CRM114-Status: GOOD (  17.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alex@ghiti.fr, anup@brainfault.org, linux-kernel@vger.kernel.org,
 zong.li@sifive.com, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 03 Jun 2020 01:10:56 PDT (-0700), alex@ghiti.fr wrote:
> This patchset implements sv48 support at runtime. The kernel will try to
> boot with 4-level page table and will fallback to 3-level if the HW does not
> support it.
>
> The biggest advantage is that we only have one kernel for 64bit, which
> is way easier to maintain.
>
> Folding the 4th level into a 3-level page table has almost no cost at
> runtime. But as mentioned Palmer, the relocatable code generated is less
> performant.
>
> At the moment, there is no way to build a 3-level page table non-relocatable
> 64bit kernel. We agreed that distributions will use this runtime configuration
> anyway, but Palmer proposed to introduce a new Kconfig, which I will do later
> as sv48 support was asked for 5.8.
>
> Finally, the user can now ask for sv39 explicitly by using the device-tree
> which will reduce memory footprint and reduce the number of memory accesses
> in case of TLB miss.
>
> Changes in v2:
>   * Move variable declarations to pgtable.h in patch 5/7 as suggested by Anup
>   * Restore mmu-type properties in patch 6 as suggested by Anup
>   * Fix unused variable in patch 5 that was used in patch 6
>   * Fix SPARSEMEM build (patch 2 was modified so I dropped the Reviewed-by)
>   * Applied various Reviewed-by
>
> Alexandre Ghiti (8):
>   riscv: Get rid of compile time logic with MAX_EARLY_MAPPING_SIZE
>   riscv: Allow to dynamically define VA_BITS
>   riscv: Simplify MAXPHYSMEM config
>   riscv: Prepare ptdump for vm layout dynamic addresses
>   riscv: Implement sv48 support
>   riscv: Allow user to downgrade to sv39 when hw supports sv48
>   riscv: Use pgtable_l4_enabled to output mmu type in cpuinfo
>   riscv: Explicit comment about user virtual address space size
>
>  arch/riscv/Kconfig                  |  34 ++---
>  arch/riscv/include/asm/csr.h        |   3 +-
>  arch/riscv/include/asm/fixmap.h     |   1 +
>  arch/riscv/include/asm/page.h       |  15 +++
>  arch/riscv/include/asm/pgalloc.h    |  36 ++++++
>  arch/riscv/include/asm/pgtable-64.h |  97 +++++++++++++-
>  arch/riscv/include/asm/pgtable.h    |  31 ++++-
>  arch/riscv/include/asm/sparsemem.h  |   6 +-
>  arch/riscv/kernel/cpu.c             |  23 ++--
>  arch/riscv/kernel/head.S            |   3 +-
>  arch/riscv/mm/context.c             |   2 +-
>  arch/riscv/mm/init.c                | 194 ++++++++++++++++++++++++----
>  arch/riscv/mm/ptdump.c              |  49 +++++--
>  13 files changed, 412 insertions(+), 82 deletions(-)

Sorry I haven't had time to look at your patch sets for a bit, with the merge
window everything got a bit busy.  I'm collecting the rc1 fixes now, as we have
some major issues, but with any luck I'll have time to start looking at larger
stuff for for-next next week.

Thanks!

