Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9189DFFE3A
	for <lists+linux-riscv@lfdr.de>; Mon, 18 Nov 2019 07:13:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FFgEVuNl9nMapSOWal59xLQ6PTyo3nLhZ9VpdlkxJ0k=; b=XOCJgXmMALl+I5
	gyOeM3QhQIxJ9mqMrXtha+HZzI26F9NYEtrAUK/N7x+xhSymtgzME4TJMFkmJtZ7nbKFmYfGWeqRD
	oJ0IrAdFbU/0j0lUpSvp8mc/A1n/tcYRYLrHZAbFc9LPqLwUkCHSKjNwVvVtJNExbB++XK63gucdj
	q3qCDjWdyFyNtfD74FDJp7uzbxQrWVp7zpgBIGlj/WsIToSU1p47cCT+UuGPh5qQkUmixaVHJx+eY
	h4JldNvpMBta5FOxOQvx8pgtFASzalmAKNVqLDnyAqoEW0/QEN9+eIyfCwr69ZkD1mXjmovGmtU7A
	wEjmAqk4qhiRjWhIfckA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWaHT-0007ep-4S; Mon, 18 Nov 2019 06:12:59 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWaHQ-0007eW-41
 for linux-riscv@lists.infradead.org; Mon, 18 Nov 2019 06:12:57 +0000
Received: by mail-wr1-x441.google.com with SMTP id n1so17896994wra.10
 for <linux-riscv@lists.infradead.org>; Sun, 17 Nov 2019 22:12:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dzhVBOMf59PHYjhcO5/bPOeyIO8A+TPlN5Z6xmX6Zfg=;
 b=mUbuNpugZTAnDNPQd9lieNDlt85CfqQ5HxNZOSP9AmjHYAi6SjRi99kn9IidBIRO/y
 nzWX4u6iJv3jxNH6Ebm8CnPahp9MXMG+rmb4i0k1gmRvkRsojYil4v294x+cCA73d/M1
 Us3w7jQR2ohkELcopCpnoFTNzC3mSuK01Y9IvHC8sSVUCljzpsjr8GGit1OmpD0D+YXg
 W/5aMm/0YbvxkVD9FrAwPdS1Y1KuysOwOlWlg7aQy/uN765LkJrx/wDzh/U+m731G2ph
 iKLwDuP0Rk7eOLCRi+7hP1QR8HELJWzSN1tMuVxi3Cckij/mAA0xQsY65zhW6Y33o60a
 ATGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dzhVBOMf59PHYjhcO5/bPOeyIO8A+TPlN5Z6xmX6Zfg=;
 b=GN07CSLebpvlvFwpYb3av/uGJMIESyYOhycoq6laPvVFj6l550n4LlPRp91uecfNzp
 edajXbLQBM1tjH2NLhK1up/SEu+AFMaewvNkKyBmyIZv00Gan2yyQNwUWf0eC0jRL/u0
 bq5DuZzb0yy0dnqE+t2EOxFQhAeLbvM3t2PJQ+9LYg7/njjMAZ52KzIFM+HFycDlxZRP
 NNhDLBDwpsZBIoRUWAIQRqyqE6vrz+vAppy0GgnHZrmcQADeD3KQh0sGRFzf5dW2baFp
 aKRl3njNH+U3bv8Io9ZyvVpQExTf1vNJSCpQBrtphNcnSYs5xUogGISH1CnquqFa0gQM
 CTUA==
X-Gm-Message-State: APjAAAXF6MLcVCno1rojZg00NSgU0/ZOrqEDmAKaukadzstO6mcnvsTt
 opvranmjINOGdg5Ai9C7+WNRQ1C70fYRT3woQvljjA==
X-Google-Smtp-Source: APXvYqyF3YsX2G6wuJDiAhQzqIEHeeH7CEoNFF0mxhQU8u7tkSKps01SW+5Q5xygjLmoJsN3EyJbGsKlbggWsNZV+yo=
X-Received: by 2002:a05:6000:104:: with SMTP id
 o4mr26662567wrx.309.1574057574393; 
 Sun, 17 Nov 2019 22:12:54 -0800 (PST)
MIME-Version: 1.0
References: <1574056694-28927-1-git-send-email-yash.shah@sifive.com>
In-Reply-To: <1574056694-28927-1-git-send-email-yash.shah@sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 18 Nov 2019 11:42:43 +0530
Message-ID: <CAAhSdy1i8i9MNnSyBud_k2sqn9mwYadh3YFgQ_42u9+C6F3VDg@mail.gmail.com>
Subject: Re: [PATCH v2] RISC-V: Add address map dumper
To: Yash Shah <yash.shah@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_221256_161560_99E01659 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "wangkefeng.wang@huawei.com" <wangkefeng.wang@huawei.com>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "Anup.Patel@wdc.com" <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 Sachin Ghadi <sachin.ghadi@sifive.com>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>,
 "ren_guo@c-sky.com" <ren_guo@c-sky.com>,
 "Paul Walmsley \( Sifive\)" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "bmeng.cn@gmail.com" <bmeng.cn@gmail.com>,
 "logang@deltatee.com" <logang@deltatee.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Nov 18, 2019 at 11:28 AM Yash Shah <yash.shah@sifive.com> wrote:
>
> Add support for dumping the kernel address space layout to the console.
> User can enable CONFIG_DEBUG_VM to dump the virtual memory region into
> dmesg buffer during boot-up.
>
> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> ---
> This patch is based on Linux 5.4-rc6 and tested on SiFive HiFive
> Unleashed board.
>
> Changes in v2:
> - Avoid #ifdefs inside functions
> - Helper functions instead of macros
> - Drop newly added CONFIG_DEBUG_VM_LAYOUT, instead use CONFIG_DEBUG_VM
> ---
>  arch/riscv/mm/init.c | 36 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 36 insertions(+)
>
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index 573463d..7828136 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -45,6 +45,41 @@ void setup_zero_page(void)
>         memset((void *)empty_zero_page, 0, PAGE_SIZE);
>  }
>
> +#ifdef CONFIG_DEBUG_VM
> +static inline void print_mlk(char *name, unsigned long b, unsigned long t)
> +{
> +       pr_notice("%12s : 0x%08lx - 0x%08lx   (%4ld kB)\n", name, b, t,
> +                 (((t) - (b)) >> 10));
> +}
> +
> +static inline void print_mlm(char *name, unsigned long b, unsigned long t)
> +{
> +       pr_notice("%12s : 0x%08lx - 0x%08lx   (%4ld MB)\n", name, b, t,
> +                 (((t) - (b)) >> 20));
> +}
> +
> +static void print_vm_layout(void)
> +{
> +       pr_notice("Virtual kernel memory layout:\n");
> +       print_mlk("fixmap", (unsigned long)FIXADDR_START,
> +                 (unsigned long)FIXADDR_TOP);
> +       print_mlm("vmemmap", (unsigned long)VMEMMAP_START,
> +                 (unsigned long)VMEMMAP_END);
> +       print_mlm("vmalloc", (unsigned long)VMALLOC_START,
> +                 (unsigned long)VMALLOC_END);
> +       print_mlm("lowmem", (unsigned long)PAGE_OFFSET,
> +                 (unsigned long)high_memory);
> +       print_mlk(".init", (unsigned long)__init_begin,
> +                 (unsigned long)__init_end);
> +       print_mlk(".text", (unsigned long)_text, (unsigned long)_etext);
> +       print_mlk(".data", (unsigned long)_sdata, (unsigned long)_edata);
> +       print_mlk(".bss", (unsigned long)__bss_start,
> +                 (unsigned long)__bss_stop);
> +}
> +#else
> +static void print_vm_layout(void) { }
> +#endif /* CONFIG_DEBUG_VM */
> +
>  void __init mem_init(void)
>  {
>  #ifdef CONFIG_FLATMEM
> @@ -55,6 +90,7 @@ void __init mem_init(void)
>         memblock_free_all();
>
>         mem_init_print_info(NULL);
> +       print_vm_layout();
>  }
>
>  #ifdef CONFIG_BLK_DEV_INITRD
> --
> 2.7.4
>

LGTM.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
