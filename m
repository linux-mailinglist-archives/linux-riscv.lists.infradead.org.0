Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D91EC1023
	for <lists+linux-riscv@lfdr.de>; Sat, 28 Sep 2019 10:01:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RyPwXoToIMVRv0H/oDOSgJncf2Wdvt2iUldC0nxo/Hc=; b=EP14Zh9wPUyGgY
	nhFv5S1HEAtKQn0mJfAYDqVO3W/JWenc1Q7tRDbMWOLV7DsydHVZdTvg9wnrQYMgw14JC1Rj8oSck
	qVf/7z69U1LgXKuW6DBHi4aexst8Kwlb6hRTgEpe3GC6ABpPlsmEw6FE5CHd9bTeMuYOt5qG6PQT5
	b4eEuPgA73c3KV2IgAmM8wmNCztUhvqfdrmTRhEoN3xQTJFTZieaIk3dLd4/xt8Bb0Z5rp1ouwKpG
	qWdE4dhei0VZ9Rm0fc8eI0HjGJS0tNTuC6iTQpA/JUZz6k9EdFvl8+J+OCnT/Jxqrvr0sJ5EWePHD
	cKu/MW+Yq6VXN4WZDTHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iE7fG-0003bZ-6e; Sat, 28 Sep 2019 08:01:14 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iE7fC-0003Z8-G0
 for linux-riscv@lists.infradead.org; Sat, 28 Sep 2019 08:01:12 +0000
Received: by mail-wm1-x342.google.com with SMTP id 7so8174165wme.1
 for <linux-riscv@lists.infradead.org>; Sat, 28 Sep 2019 01:01:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9wITyUrwg8h7GjKpTtAxenv9sNKlKE3bGBHmQEB/5os=;
 b=WN/WcnCQb503cdvTtFyI9tWB+gjSc6Nd53vmFzSu+GfDK4YhvUIuJzYfWOD54xhyN3
 JIhamxdk0Ev54CnMfXr6Ry3+cP1/N1bJAeyonKucjt0CliM3nCqbs8KkgsVnu4JXuEh9
 NyY25tDwMbC5/PUldI9fjtAeROrTnTRAiHGR5U7dHAqWfvXd43QFp9zqYyAaPZFg4QHr
 Oxi9dS/SzqwDP9sk8VSW6LpWWMmvfE9qHAbpiHda0SAnjdhmhOqMNJuWs5DXO3szpkac
 o63aldu1w14cUtQSur1dpeYWc9cSdba61SREWEC2PczKX3wy6PwCWHY7fhXunHKMA2e7
 +uOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9wITyUrwg8h7GjKpTtAxenv9sNKlKE3bGBHmQEB/5os=;
 b=lZl3k9G/LKMFmUBClw+v7VnhWI7kP1AOVIKPWuUThsG5RtP/23Mu1AZCux2r4/N2ak
 A7WOtKp0ziqhAFMvvtgMfr/athXATMloudLxXfnTrcHYr5TS3UsQTQOdn7DtoA17L4A9
 dbOC88W/Pt80tO0I4s7wBHZqmc3EW8HIcSwSMEifw5LSdSOenbefYwCsFfHMhqCh5mv3
 BN8fDKnGt1NqXYAdem81URjQSRZMswzMu0XR0lr25DEOEtZDRQchwZyAUKiMt95onU4E
 iBoG7h3+/tZVeJVbeczLiZhWKRkOPff8hMqCA35ArRjpqlXjPWYFmTcoI1t/AC4Dq49z
 6arw==
X-Gm-Message-State: APjAAAWv73JFtI0rm5DkMkZCw4JDwMs1Ca+ECzab7VsN/W9KNNSeVznq
 9hMCNU8f6B7DsdCw1gf17D73UyxYpXfEGSb5+Ddu9g==
X-Google-Smtp-Source: APXvYqzjIsj//YQ6zt+7Uyy1PEs6TJKIuXhk/P1ci7xL5y9q8OIdh8AGNRshtc+iEykR0DtSdTVA7iD6fWhIiEWsO8g=
X-Received: by 2002:a7b:c84f:: with SMTP id c15mr10421189wml.52.1569657667847; 
 Sat, 28 Sep 2019 01:01:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190927231418.83100-1-aou@eecs.berkeley.edu>
 <CAEUhbmURq0M3sPecxTdOwrB+vP5GB59_Du=7hVsaVMAqO-nk4w@mail.gmail.com>
In-Reply-To: <CAEUhbmURq0M3sPecxTdOwrB+vP5GB59_Du=7hVsaVMAqO-nk4w@mail.gmail.com>
From: Anup Patel <anup@brainfault.org>
Date: Sat, 28 Sep 2019 13:30:57 +0530
Message-ID: <CAAhSdy2RcFSDtBtf5ecvpxDgu9SoAEWHpm7=9i1uroX2si0BXw@mail.gmail.com>
Subject: Re: [PATCH v2] riscv: Fix memblock reservation for device tree blob
To: Bin Meng <bmeng.cn@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_010110_697838_1FC96C21 
X-CRM114-Status: GOOD (  22.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <Anup.Patel@wdc.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Sep 28, 2019 at 11:52 AM Bin Meng <bmeng.cn@gmail.com> wrote:
>
> On Sat, Sep 28, 2019 at 7:14 AM Albert Ou <aou@eecs.berkeley.edu> wrote:
> >
> > This fixes an error with how the FDT blob is reserved in memblock.
> > An incorrect physical address calculation exposed the FDT header to
> > unintended corruption, which typically manifested with of_fdt_raw_init()
> > faulting during late boot after fdt_totalsize() returned a wrong value.
> > Systems with smaller physical memory sizes more frequently trigger this
> > issue, as the kernel is more likely to allocate from the DMA32 zone
> > where bbl places the DTB after the kernel image.
> >
> > Commit 671f9a3e2e24 ("RISC-V: Setup initial page tables in two stages")
> > changed the mapping of the DTB to reside in the fixmap area.
> > Consequently, early_init_fdt_reserve_self() cannot be used anymore in
> > setup_bootmem() since it relies on __pa() to derive a physical address,
> > which does not work with dtb_early_va that is no longer a valid kernel
> > logical address.
> >
> > The reserved[0x1] region shows the effect of the pointer underflow
> > resulting from the __pa(initial_boot_params) offset subtraction:
> >
> > [    0.000000] MEMBLOCK configuration:
> > [    0.000000]  memory size = 0x000000001fe00000 reserved size = 0x0000000000a2e514
> > [    0.000000]  memory.cnt  = 0x1
> > [    0.000000]  memory[0x0]     [0x0000000080200000-0x000000009fffffff], 0x000000001fe00000 bytes flags: 0x0
> > [    0.000000]  reserved.cnt  = 0x2
> > [    0.000000]  reserved[0x0]   [0x0000000080200000-0x0000000080c2dfeb], 0x0000000000a2dfec bytes flags: 0x0
> > [    0.000000]  reserved[0x1]   [0xfffffff080100000-0xfffffff080100527], 0x0000000000000528 bytes flags: 0x0
> >
> > With the fix applied:
> >
> > [    0.000000] MEMBLOCK configuration:
> > [    0.000000]  memory size = 0x000000001fe00000 reserved size = 0x0000000000a2e514
> > [    0.000000]  memory.cnt  = 0x1
> > [    0.000000]  memory[0x0]     [0x0000000080200000-0x000000009fffffff], 0x000000001fe00000 bytes flags: 0x0
> > [    0.000000]  reserved.cnt  = 0x2
> > [    0.000000]  reserved[0x0]   [0x0000000080200000-0x0000000080c2dfeb], 0x0000000000a2dfec bytes flags: 0x0
> > [    0.000000]  reserved[0x1]   [0x0000000080e00000-0x0000000080e00527], 0x0000000000000528 bytes flags: 0x0
> >
> > Fixes: 671f9a3e2e24 ("RISC-V: Setup initial page tables in two stages")
>
> I also found that with commit 671f9a3e2e24 ("RISC-V: Setup initial
> page tables in two stages"), when booting the kernel from U-Boot via:
>
> => bootm $kernel_addr_t - $fdtcontroladdr
> ($kernel_addr_t = 0x84000000 and $fdtcontroladdr = 0xff741c60)
>
> kernel does not boot. I looked at people's instructions of booting
> Linux kernel, and they seem to have such:

Thanks for reporting this issue Bin.

I will add more information about the relation of FDT location
with the commit Bin mentioned:
1. With two staged initial page tables in-place, the first stage
only maps kernel image so we used FIXMAP to map FDT
in setup_vm()
2. Another advantage of using FIXMAP to map FDT is that
we can now place FDT anywhere in entire memory map. This
was not possible previously because FDT had to be placed
after kernel load address for __va() and __pa() to work fine.

The one thing which two-staged page tables missed was to
remove use of early_init_fdt_reserve_self() which is what
this patch does.

Also, the ARM64 Linux also used FIXMAP to map FDT and
it does not use early_init_fdt_reserve_self() to reserved FDT.

Anyways, my comments to previous version of this patch
are taken case so...

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

>
> => cp.l ${fdtcontroladdr} ${fdt_addr_r} 0x10000
> => bootm ${kernel_addr_r} - ${fdt_addr_r}
>
> where ${fdt_addr_r} is 0x88000000, and "bootm 84000000  - 88000000"
> can make the kernel boot.
>
> Thanks for the patch. Now "bootm $kernel_addr_t - $fdtcontroladdr" works again!
>
> Tested-by: Bin Meng <bmeng.cn@gmail.com>
>
> > Signed-off-by: Albert Ou <aou@eecs.berkeley.edu>
> > ---
> >
> > Changes in v2:
> > * Changed variable identifier to dtb_early_pa per reviewer feedback.
> > * Removed whitespace change.
> >
> >  arch/riscv/mm/init.c | 12 +++++++++++-
> >  1 file changed, 11 insertions(+), 1 deletion(-)
> >
>
> Regards,
> Bin
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
