Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8C4C0FF4
	for <lists+linux-riscv@lfdr.de>; Sat, 28 Sep 2019 08:23:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WPyc4W8Vqi0T6WYEXaAD8hylemH9TQ0mLGdPolQtbZ4=; b=kEMte65/G/4Xrd
	aYxzybg/37tpXqKZQhL7O2svZ0FsTbzD+m1fVmLiQN6NNayTWl3W4LFMfSHlhzFitfr+QrdxZfSDn
	M7Jqr9Fn6KA5b0NPM3Wp1rFuHQF2ORkFb4o04+eFuX+6bcye91WxNV2CPJVMEUHpfyfiCSgxLdXv2
	Iq51cklgz/ZeNokfCcOIJI9yvTi2pe3H55jjh8m07aW7NzVVpzCL3U0nA6p/2OXXzvtqLGT2v//cn
	hr7hsv4Cw2g+sxWcWt9uL7JnvtC/jmhnLNAvZS193PjWQPVuzZG8RBN1cu+UBGDL178xTgVR6Qhj4
	GSPrztJPsXjXVs9YuK3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iE67u-0003N8-K8; Sat, 28 Sep 2019 06:22:42 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iE67p-0003MZ-5X
 for linux-riscv@lists.infradead.org; Sat, 28 Sep 2019 06:22:40 +0000
Received: by mail-yb1-xb42.google.com with SMTP id v5so2757590ybq.4
 for <linux-riscv@lists.infradead.org>; Fri, 27 Sep 2019 23:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Bg7uM/vqGqsjyM9H0Hgoy0WYnWDjhpVkIU5063YeccE=;
 b=hoW52JNOW+UrzwDPyp5y+OJVXfOYJeQM61QNHfj8TFQE5loHjsGS/anBQbi0gKJABo
 97Zfz7DYXT+PnmSh2VqJv3UbJD4lU4TEs8B7Ke88pNI/1boVCi7XFzlrGyDBzCS1eQyQ
 3GaRUJppIwhTL2O9pfuhoXou00xPoRpo2V2f0LatTw2E9nGFgHSGiIbpxexc/n4DF4hH
 j6CV8smroWMwONQFcrKCx0mblkNb6XyshYOE6VhynxtjgGPMBAyRRkuZl8104ym+ZIV9
 5V9HOp49sSMIF1BJ0mmcB68XI8X5MCL+AjVI0+FwYXrbof7VwpfIn4k2SYvTZMSvtO8p
 47Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Bg7uM/vqGqsjyM9H0Hgoy0WYnWDjhpVkIU5063YeccE=;
 b=jfSgVrW7s4NLhUjsagqaOoQliHuwxeMjNkrJgWucaKeT/mQD5AlH7+OmQcEah5tPXB
 O/JRBAFOJECelVgrHUuEBeaN3r1OPa+dZYTmn8VtNE75w3cxggCLYXXsJ5uH+KqG4fF2
 rSSJCrR8BXlfcF33n0Mcb6Eg3GlE1VUkD7EjMBfWljTWFJZG0KA4NCbnhhbXiRSguX5h
 F21EKBZiwfC165VMu7bmxZMBKaWYkRPaLt6LgXewGntW57RobHBw5kKltmTn4UuXVEjJ
 grGd00KuaYixGqDuyCiU6Ki5B8N2g2Yo02ZJFyH8yKglC4H8sVqPEVLkEWPKfi8Temau
 lsLQ==
X-Gm-Message-State: APjAAAUHKo131QlHgnnh3PMgzwO55W95VVvtte10rPI06mSHxHhaIBcY
 m8ZWOhO+CQ5Y/tfPPXf6AbeMujLRLYrsVJqAGz0=
X-Google-Smtp-Source: APXvYqyANmT1+JktvebdIP3ODZAdL6CKSso8Gua+q3zbGI/cl6lVo2NUOIn6bpTPmm0tSOitNUy7sg/gnT1dG/L18I4=
X-Received: by 2002:a25:a87:: with SMTP id 129mr8587098ybk.203.1569651755563; 
 Fri, 27 Sep 2019 23:22:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190927231418.83100-1-aou@eecs.berkeley.edu>
In-Reply-To: <20190927231418.83100-1-aou@eecs.berkeley.edu>
From: Bin Meng <bmeng.cn@gmail.com>
Date: Sat, 28 Sep 2019 14:22:22 +0800
Message-ID: <CAEUhbmURq0M3sPecxTdOwrB+vP5GB59_Du=7hVsaVMAqO-nk4w@mail.gmail.com>
Subject: Re: [PATCH v2] riscv: Fix memblock reservation for device tree blob
To: Albert Ou <aou@eecs.berkeley.edu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_232237_233080_F2FFE0B6 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bmeng.cn[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel <linux-kernel@vger.kernel.org>,
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Sep 28, 2019 at 7:14 AM Albert Ou <aou@eecs.berkeley.edu> wrote:
>
> This fixes an error with how the FDT blob is reserved in memblock.
> An incorrect physical address calculation exposed the FDT header to
> unintended corruption, which typically manifested with of_fdt_raw_init()
> faulting during late boot after fdt_totalsize() returned a wrong value.
> Systems with smaller physical memory sizes more frequently trigger this
> issue, as the kernel is more likely to allocate from the DMA32 zone
> where bbl places the DTB after the kernel image.
>
> Commit 671f9a3e2e24 ("RISC-V: Setup initial page tables in two stages")
> changed the mapping of the DTB to reside in the fixmap area.
> Consequently, early_init_fdt_reserve_self() cannot be used anymore in
> setup_bootmem() since it relies on __pa() to derive a physical address,
> which does not work with dtb_early_va that is no longer a valid kernel
> logical address.
>
> The reserved[0x1] region shows the effect of the pointer underflow
> resulting from the __pa(initial_boot_params) offset subtraction:
>
> [    0.000000] MEMBLOCK configuration:
> [    0.000000]  memory size = 0x000000001fe00000 reserved size = 0x0000000000a2e514
> [    0.000000]  memory.cnt  = 0x1
> [    0.000000]  memory[0x0]     [0x0000000080200000-0x000000009fffffff], 0x000000001fe00000 bytes flags: 0x0
> [    0.000000]  reserved.cnt  = 0x2
> [    0.000000]  reserved[0x0]   [0x0000000080200000-0x0000000080c2dfeb], 0x0000000000a2dfec bytes flags: 0x0
> [    0.000000]  reserved[0x1]   [0xfffffff080100000-0xfffffff080100527], 0x0000000000000528 bytes flags: 0x0
>
> With the fix applied:
>
> [    0.000000] MEMBLOCK configuration:
> [    0.000000]  memory size = 0x000000001fe00000 reserved size = 0x0000000000a2e514
> [    0.000000]  memory.cnt  = 0x1
> [    0.000000]  memory[0x0]     [0x0000000080200000-0x000000009fffffff], 0x000000001fe00000 bytes flags: 0x0
> [    0.000000]  reserved.cnt  = 0x2
> [    0.000000]  reserved[0x0]   [0x0000000080200000-0x0000000080c2dfeb], 0x0000000000a2dfec bytes flags: 0x0
> [    0.000000]  reserved[0x1]   [0x0000000080e00000-0x0000000080e00527], 0x0000000000000528 bytes flags: 0x0
>
> Fixes: 671f9a3e2e24 ("RISC-V: Setup initial page tables in two stages")

I also found that with commit 671f9a3e2e24 ("RISC-V: Setup initial
page tables in two stages"), when booting the kernel from U-Boot via:

=> bootm $kernel_addr_t - $fdtcontroladdr
($kernel_addr_t = 0x84000000 and $fdtcontroladdr = 0xff741c60)

kernel does not boot. I looked at people's instructions of booting
Linux kernel, and they seem to have such:

=> cp.l ${fdtcontroladdr} ${fdt_addr_r} 0x10000
=> bootm ${kernel_addr_r} - ${fdt_addr_r}

where ${fdt_addr_r} is 0x88000000, and "bootm 84000000  - 88000000"
can make the kernel boot.

Thanks for the patch. Now "bootm $kernel_addr_t - $fdtcontroladdr" works again!

Tested-by: Bin Meng <bmeng.cn@gmail.com>

> Signed-off-by: Albert Ou <aou@eecs.berkeley.edu>
> ---
>
> Changes in v2:
> * Changed variable identifier to dtb_early_pa per reviewer feedback.
> * Removed whitespace change.
>
>  arch/riscv/mm/init.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
>

Regards,
Bin

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
