Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A6A199F7E
	for <lists+linux-riscv@lfdr.de>; Tue, 31 Mar 2020 21:53:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=UnNGbqw4CiU2b1yMc4obIxPTMu+of5pZP5ZU1i5O1Ms=; b=D9DdR/uH4oGHA3
	ntjexu4WQJ7Zvrb7OhMLSlzbG1Lqi2G1uZstdEckhtVQ2U77WFY5hOVvZUjjwDjqsru4ZoGLcOAzY
	RzS3vuaj7xdLCAjeHJTuXf0AiruT/ja61NDxlzzjI1xyL8AKE6XRuhta/fHmAy1Eqs6QrzWS03Jnz
	UzwdEUw83CwKueCtfSIJ2uQGBxjiKqOcuTiQOzYByBCW0D2pcu7f/wYK2P9QwWIpHNqP2YC2EGfKj
	PqWM+ibMsaE8XWigec5NyLipVTGT7MbfMlVGaJkpbQAj0PVlzD58Vb82RbYRT3CFYfJePpWfFCGZT
	as2ffBppD+c2NNkciOkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJMwf-0006FF-Dx; Tue, 31 Mar 2020 19:53:09 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJMwb-0006En-Bv
 for linux-riscv@lists.infradead.org; Tue, 31 Mar 2020 19:53:07 +0000
Received: by mail-pg1-x542.google.com with SMTP id d17so10865530pgo.0
 for <linux-riscv@lists.infradead.org>; Tue, 31 Mar 2020 12:53:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=UnNGbqw4CiU2b1yMc4obIxPTMu+of5pZP5ZU1i5O1Ms=;
 b=dTra5YWd+la6sJKFy0wsNu7jaNDhqwpkpW9ysYZ2pE14Q4PJtOiawDORBbbuSsyQ1L
 9L7JTfGaJvaEjUSIImNvxY2NKm4qH9WV0/oUVI1F/wq39tLfZwnaDJAMqj2DHCJrFG1Y
 e+gbtuh7zBHpFy+3taNZet6/x/rKvgfsxFpL8PoBJseL8OQBebz2p7vlOoTYg7J/mfN6
 VWbDbR4Oe4K3SdUgwx8ufEHCgHURMYmBVzN55uS3x8tpta2rqElx8+89nF13JrAEC/bi
 abI2WYfSB5zy6ZCZxK/SgWv4pFXLDeqvg3vi0OEaza47TQ+oYb0MIm9L9mwSBm/+Fg/g
 ix8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=UnNGbqw4CiU2b1yMc4obIxPTMu+of5pZP5ZU1i5O1Ms=;
 b=IAxmqFFm9NgFEUfErrrij51tGcjolf1ZzXWE3XX/DfvI83vQJ+eS7A5tpE//fp7+gN
 pj5Dn2PgnQCduzdoteHBDn6m8ZMGKvu3VJkNG2mN4c/poyT1dnh75vo0jQZgPp3bLgki
 b0p/KYhqvuPQ/+HoZqAKTltJSt7jxdt0ZI9mTHemuPkvCGeQonVbUPUPBR/kNJ4qGBBF
 irhTz5k+Vx3h/Y7vZhPf6QpYWYEJIVyHFXAuN7gAIn2C/VKYdigsTjPMJmx+sWGTq++1
 k1vRq/B09zwIEHPG9MPead9oIdICUU3UbwCFAHoQswcEY4dFMJBaKyjBW+lxBbrDpZBI
 WDaA==
X-Gm-Message-State: ANhLgQ0WWHT8anwhPNwr6VatP4NLaYkRpdTSKiIC+FZwOtiUUxLjuVRw
 dhGciwSxVp/lk9nhNkXO4L9hDg==
X-Google-Smtp-Source: ADFU+vuZ1BLJd8BKHPIvo35rkVz0sVabGFLtX3UUDd/M40+mOHIamBDa5MFROUCOoU/r45rT+cK53g==
X-Received: by 2002:a62:7811:: with SMTP id t17mr20111632pfc.268.1585684384593; 
 Tue, 31 Mar 2020 12:53:04 -0700 (PDT)
Received: from localhost (c-67-161-15-180.hsd1.ca.comcast.net. [67.161.15.180])
 by smtp.gmail.com with ESMTPSA id a71sm13499762pfa.162.2020.03.31.12.53.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 12:53:04 -0700 (PDT)
Date: Tue, 31 Mar 2020 12:53:04 -0700 (PDT)
X-Google-Original-Date: Tue, 31 Mar 2020 12:51:33 PDT (-0700)
Subject: Re: [RFC PATCH 0/7] Introduce sv48 support 
In-Reply-To: <20200322110028.18279-1-alex@ghiti.fr>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: alex@ghiti.fr
Message-ID: <mhng-8dbb5aa6-857f-4321-a966-a370c0786a1c@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_125305_474964_6EE435D9 
X-CRM114-Status: GOOD (  16.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

On Sun, 22 Mar 2020 04:00:21 PDT (-0700), alex@ghiti.fr wrote:
> This patchset implements sv48 support at runtime. The kernel will try to
> boot with 4-level page table and will fallback to 3-level if the HW does not
> support it.
>
> The biggest advantage is that we only have one kernel for 64bit, which
> is way easier to maintain.

Thanks, that's great!  This is something we've been missing for a long time
now.

> Folding the 4th level into a 3-level page table has almost no cost at
> runtime.
>
> At the moment, there is no way to enforce 3-level if the HW supports
> 4-level page table: early parameters are parsed after the choice must be
> made.

This is different than how I'd been considering doing it -- specifically, my
worry was that 4-level paging would have a meaningful performance hit and
therefor we'd want to allow users to select 3-level paging somehow.  I'd been
thinking of having a Kconfig option, so the options would be "3-level only" or
"3 or 4 level".  That came with a bunch of drawbacks, so I'd be much happier to
have a single kernel.

Where did you get your performance numbers from?  Appologies in advance if
there's more info in the patches, I'll look at those now...

> It is based on my relocatable patchset v3 that I have not posted yet,
> you can try the sv48 support by using the branch
> int/alex/riscv_sv48_runtime_v1 here:
>
> https://github.com/AlexGhiti/riscv-linux
>
> Any feedback appreciated,
>
> Thanks,
>
> Alexandre Ghiti (7):
>   riscv: Get rid of compile time logic with MAX_EARLY_MAPPING_SIZE
>   riscv: Allow to dynamically define VA_BITS
>   riscv: Simplify MAXPHYSMEM config
>   riscv: Implement sv48 support
>   riscv: Use pgtable_l4_enabled to output mmu type in cpuinfo
>   dt-bindings: riscv: Remove "riscv,svXX" property from device-tree
>   riscv: Explicit comment about user virtual address space size
>
>  .../devicetree/bindings/riscv/cpus.yaml       |  13 --
>  arch/riscv/Kconfig                            |  34 ++---
>  arch/riscv/boot/dts/sifive/fu540-c000.dtsi    |   4 -
>  arch/riscv/include/asm/csr.h                  |   3 +-
>  arch/riscv/include/asm/fixmap.h               |   1 +
>  arch/riscv/include/asm/page.h                 |  15 +-
>  arch/riscv/include/asm/pgalloc.h              |  36 +++++
>  arch/riscv/include/asm/pgtable-64.h           |  98 +++++++++++-
>  arch/riscv/include/asm/pgtable.h              |  24 ++-
>  arch/riscv/include/asm/sparsemem.h            |   2 +-
>  arch/riscv/kernel/cpu.c                       |  24 +--
>  arch/riscv/kernel/head.S                      |  37 ++++-
>  arch/riscv/mm/context.c                       |   4 +-
>  arch/riscv/mm/init.c                          | 142 +++++++++++++++---
>  14 files changed, 341 insertions(+), 96 deletions(-)

