Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AEE912E1E9
	for <lists+linux-riscv@lfdr.de>; Thu,  2 Jan 2020 04:32:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0GhjVv4D/EbozgYYQebu9kHkFsX0cKA5Vsg+9qRPUH0=; b=Tp6dmJXMbWu79/cEUCxNbG6Ed
	irL+imYbyOsKSWY0qZXQWeEWBtGu4FlHKMDH+Wn0khqhUB43rBIYW7AQWdylnDAkp0SX1JHvmpZX3
	1I+/MihhAneMHR8ijVSsRMQgzJkeovOlNqygXYA5c6BCdHxX0x24p0keJEXxYX10LPlELWVbQQWqC
	QMf42RMtlvyE7/9e/h1h8O4ZypylS9LbCO/zot5LOVzCQ1BDeeNaI9SOMXZ47OLBhzoAK6iRw9RG7
	TxLaIOs6pekvRpF+5IAKl8BhAKP5vStUbXaH5ijos9/wZlsXhBnYB49JgTQCKID8+vfU5PcjUeJko
	w5f8U1v1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imrDf-0002C2-VF; Thu, 02 Jan 2020 03:32:19 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imrDc-0002Bf-U8
 for linux-riscv@lists.infradead.org; Thu, 02 Jan 2020 03:32:18 +0000
Received: by mail-wr1-x441.google.com with SMTP id y17so38074406wrh.5
 for <linux-riscv@lists.infradead.org>; Wed, 01 Jan 2020 19:32:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0GhjVv4D/EbozgYYQebu9kHkFsX0cKA5Vsg+9qRPUH0=;
 b=wOwJ001+o9V9w8eVNas2K19aARPSD6KN5kq0RrvUlCnhUch35ZsS4OMnKoGVx74jXm
 xdtTrZckOz9uIuVAypq+w/7liuM8XpMg85ADYSLCiKqkbLgMhLeVk8/KYwDdRsxx+4rL
 GpTv6i+005a9Nm6mJLxMpb6B/HOTfQQgIG5kI3pNP/NhiWxrdBJf6q0nlNRJS6i2jlHW
 NlV+Y6jXHBTWNnKAJ93ncU0Hqi38zOSdvz/yFEvvde/EIMMkrqynAK8WIxXukz9BaX90
 juGzyWuhWACStnUSct31QYt3PfiA2hQ+MnG3Y0kJ+watLKr+WJD2K2qbADqQGnWp49SX
 ogkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0GhjVv4D/EbozgYYQebu9kHkFsX0cKA5Vsg+9qRPUH0=;
 b=VGXRTx9TEXDJudinMfaS0iR8G4C88OSxMYi141Ux0DLKuPU3c61E4OdkyGRvxztrZi
 Te8tYjJj5bqaPuc1Qvc4iPAj+8tBQjA85ajLFk1rm575KDNrDIcdme4fE7sVgtpCav7l
 jxA7jYtP9K2hySBW8D6eMG9KGL20LDSuRrU/ZSnG3RvtCI5QSdkhim7cP8id4MtPPxjq
 i6MB4oow3MDX5051Ii4KuwfCcRkPWqCBXfjTKf1SZpt3YU8Qy/OT24oUILgb2O+lA/ko
 mKfd7kA2qZfzFmLS2pE1/A3cR7EyKEQ0YiouIYFy3kBeB2Ab+pAnvUNYBvpQC8PDusyP
 THyg==
X-Gm-Message-State: APjAAAUAvjvwUNs4v/OIcfOa5fPgPqkbU8gWX7BCDM7wAQm5rks0KkAo
 x5LyytUsG7qeAWv/hFaLXpxWYBslqjleFwnRD7GWRQ==
X-Google-Smtp-Source: APXvYqxy+4c0hpqCEiZkzu7f20ddEKWx0WKeOCcURH36ITCn6JSrJblYC8ofxwFKetGQKjjFYPh42GARTcmixm8UhZg=
X-Received: by 2002:adf:d850:: with SMTP id k16mr76314967wrl.96.1577935929993; 
 Wed, 01 Jan 2020 19:32:09 -0800 (PST)
MIME-Version: 1.0
References: <20200102031240.44484-1-zong.li@sifive.com>
 <20200102031240.44484-3-zong.li@sifive.com>
In-Reply-To: <20200102031240.44484-3-zong.li@sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 2 Jan 2020 09:01:58 +0530
Message-ID: <CAAhSdy0sp_=nwAKxphA8of4UV_NfxHE-KXyTPekmHkieq_XyVw@mail.gmail.com>
Subject: Re: [PATCH 2/2] riscv: mm: use __pa_symbol for kernel symbols
To: Zong Li <zong.li@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_193217_111542_54465FA5 
X-CRM114-Status: GOOD (  17.18  )
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Jan 2, 2020 at 8:42 AM Zong Li <zong.li@sifive.com> wrote:
>
> __pa_symbol is the marcro that should be used for kernel symbols. It is
> also a pre-requisite for DEBUG_VIRTUAL which will do bounds checking.
>
> Signed-off-by: Zong Li <zong.li@sifive.com>
> ---
>  arch/riscv/mm/init.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index 69f6678db7f3..965a8cf4829c 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -99,13 +99,13 @@ static void __init setup_initrd(void)
>                 pr_info("initrd not found or empty");
>                 goto disable;
>         }
> -       if (__pa(initrd_end) > PFN_PHYS(max_low_pfn)) {
> +       if (__pa_symbol(initrd_end) > PFN_PHYS(max_low_pfn)) {
>                 pr_err("initrd extends beyond end of memory");
>                 goto disable;
>         }
>
>         size = initrd_end - initrd_start;
> -       memblock_reserve(__pa(initrd_start), size);
> +       memblock_reserve(__pa_symbol(initrd_start), size);
>         initrd_below_start_ok = 1;
>
>         pr_info("Initial ramdisk at: 0x%p (%lu bytes)\n",
> @@ -124,8 +124,8 @@ void __init setup_bootmem(void)
>  {
>         struct memblock_region *reg;
>         phys_addr_t mem_size = 0;
> -       phys_addr_t vmlinux_end = __pa(&_end);
> -       phys_addr_t vmlinux_start = __pa(&_start);
> +       phys_addr_t vmlinux_end = __pa_symbol(&_end);
> +       phys_addr_t vmlinux_start = __pa_symbol(&_start);
>
>         /* Find the memory region containing the kernel */
>         for_each_memblock(memory, reg) {
> @@ -445,7 +445,7 @@ static void __init setup_vm_final(void)
>
>         /* Setup swapper PGD for fixmap */
>         create_pgd_mapping(swapper_pg_dir, FIXADDR_START,
> -                          __pa(fixmap_pgd_next),
> +                          __pa_symbol(fixmap_pgd_next),
>                            PGDIR_SIZE, PAGE_TABLE);
>
>         /* Map all memory banks */
> @@ -474,7 +474,7 @@ static void __init setup_vm_final(void)
>         clear_fixmap(FIX_PMD);
>
>         /* Move to swapper page table */
> -       csr_write(CSR_SATP, PFN_DOWN(__pa(swapper_pg_dir)) | SATP_MODE);
> +       csr_write(CSR_SATP, PFN_DOWN(__pa_symbol(swapper_pg_dir)) | SATP_MODE);
>         local_flush_tlb_all();
>  }
>  #else
> --
> 2.24.1
>

Overall looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

I have not tried this patch but can you confirm that
__pa_symbol() works fine even when DEBUG_VIRTUAL=n

Regards,
Anup

