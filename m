Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C27A21E06B2
	for <lists+linux-riscv@lfdr.de>; Mon, 25 May 2020 08:12:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B8mBNVGYZkHU9Quhb03FrsiJkGOZXcv8WLnSN8Y0whs=; b=E87G8pe4xP+0ZeF7ubRgYZrqw
	tQQrGjKTh3++j4IR9lHAZlduJfybKpd6vsGl6ujABn4p2gy8Z2kSajh76YDpgU5I3mEHP2JuWTK7w
	hHGyvD992wJ6/DjlX7OEWMrlK7M68Ij8JGUgHS5OjGBWkfD4S3Nws1Po+NAffdAtY7Dtbi+u93MPu
	/EU/DAIsJqEZB4rGDJpY1CnKaEFZybN2dtAiVfFgZZ6isUhzMo8lEoVmh2i77RieH0QtUpDZ18i6C
	YKejCdyuMP1lU85X3cvmPXd/QH0jYK0SmJzOyLRZgGwrzSY3ePcgwTy3gcyJMztTe7grzZdeXxuBq
	g9AQmj1/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd6La-0001Rj-Eo; Mon, 25 May 2020 06:12:26 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd6LW-0001Qm-9Y
 for linux-riscv@lists.infradead.org; Mon, 25 May 2020 06:12:23 +0000
Received: by mail-wr1-x444.google.com with SMTP id s8so15941121wrt.9
 for <linux-riscv@lists.infradead.org>; Sun, 24 May 2020 23:12:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=B8mBNVGYZkHU9Quhb03FrsiJkGOZXcv8WLnSN8Y0whs=;
 b=AfYhAglE5mHr6xcqgT7WBdJor1q8lrol2npLRIvdqpwEKibvRWSt4BrSy0zCmYV5EF
 uVuTNnKqCrDHCKxF4+jktE8qTrOxxWBro2YItGT2l/vXJMBMSVcycXdl3qUJpZgLpgWL
 IICKpPIZ5fbc/31Mevzs6fja8SB7Odm/Bax7Vs+jW7toWqwLqnjd7/3LnU4krT/4fOxw
 dhmzhboiBqUtKFGne897dyD2mMwt+HTbd6RffntZofTgyeLmxSyyW9S3Qd7+tywdMgLZ
 eGtnyn22Sp2iaIsQInyo3Cat7Wzc0uRaX4VTn/5oRgeoqyaUFEOedUYK16JSSITAaCR0
 JdoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B8mBNVGYZkHU9Quhb03FrsiJkGOZXcv8WLnSN8Y0whs=;
 b=VoVOuyTgcuWfwGaEM05uWiHMaFHW2HQCDHfVYKUX4M/s0Y0cUH/hQBttieoGov8CPA
 6nlgwkAqZSOPTZpR+9dDiuEz8ewqplD5VEkvqZxbwOc3xPv1pHbznEO/xIFj7pM4tybZ
 ubcPWFsuguleIuz8ClXBcO8/GtVhmnxbOItMrhDyBVcC3HJL9xvAJuogZumPHo4suFKj
 ace6gLklrWuVSdjFic3oFHzxhfTeBrXQLygFhcL1GoE2iwkA6gLo6QSXUGVHNAJknS6x
 EEdbSPk86v9dCEl5I7zZeFcTa2hYHQHKachT9oVq4MV9oeiko15uk6l0MfwrYLUUKmmQ
 mQWA==
X-Gm-Message-State: AOAM5336JjV/VmpdR1UoCA10ByWRKXjDbic1iH3DEjeFXCHF46xQ5kNK
 17PoZmoMAyTQqJVyZYJ5DrLczl0ecRjevbDlBXDmjsDMOHs=
X-Google-Smtp-Source: ABdhPJyPX3ZiUTZT/8mtgGaL4HlnKXmKgiYFgFgHS40tjaarYFLPubJJ2w3R/soHzu+PGjuLaHWViJjKKuGHrJQ7EBA=
X-Received: by 2002:a5d:484b:: with SMTP id n11mr12229511wrs.356.1590387137034; 
 Sun, 24 May 2020 23:12:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200524091008.25587-1-alex@ghiti.fr>
 <20200524091008.25587-7-alex@ghiti.fr>
In-Reply-To: <20200524091008.25587-7-alex@ghiti.fr>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 25 May 2020 11:42:05 +0530
Message-ID: <CAAhSdy2VrKVZPTem4J2B=PQtSC4Tst57_mJr9TOF5QcaHUiXXw@mail.gmail.com>
Subject: Re: [PATCH 6/8] riscv: Allow user to downgrade to sv39 when hw
 supports sv48
To: Alexandre Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_231222_336288_9A7CA811 
X-CRM114-Status: GOOD (  17.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Zong Li <zong.li@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, May 24, 2020 at 2:46 PM Alexandre Ghiti <alex@ghiti.fr> wrote:
>
> This is made possible by using the mmu-type property of the cpu node of
> the device tree.
>
> By default, the kernel will boot with 4-level page table if the hw supports
> it but it can be interesting for the user to select 3-level page table as
> it is less memory consuming and faster since it requires less memory
> accesses in case of a TLB miss.
>
> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
> ---
>  arch/riscv/mm/init.c | 25 +++++++++++++++++++++++--
>  1 file changed, 23 insertions(+), 2 deletions(-)
>
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index bad8da099ff6..1776eeb53d61 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -509,11 +509,32 @@ void disable_pgtable_l4(void)
>   * then read SATP to see if the configuration was taken into account
>   * meaning sv48 is supported.
>   */
> -asmlinkage __init void set_satp_mode(uintptr_t load_pa)
> +asmlinkage __init void set_satp_mode(uintptr_t load_pa, uintptr_t dtb_pa)
>  {
>         u64 identity_satp, hw_satp;
>         int cpus_node;
>
> +       /* 1/ Check if the user asked for sv39 explicitly in the device tree */
> +       cpus_node = fdt_path_offset((void *)dtb_pa, "/cpus");
> +       if (cpus_node >= 0) {
> +               int node;
> +
> +               fdt_for_each_subnode(node, (void *)dtb_pa, cpus_node) {
> +                       const char *mmu_type = fdt_getprop((void *)dtb_pa, node,
> +                                                       "mmu-type", NULL);
> +                       if (!mmu_type)
> +                               continue;
> +
> +                       if (!strcmp(mmu_type, "riscv,sv39")) {
> +                               disable_pgtable_l4();
> +                               return;
> +                       }
> +
> +                       break;
> +               }
> +       }
> +
> +       /* 2/ Determine if the HW supports sv48: if not, fallback to sv39 */
>         create_pgd_mapping(early_pg_dir, load_pa, (uintptr_t)early_pud,
>                            PGDIR_SIZE, PAGE_TABLE);
>         create_pud_mapping(early_pud, load_pa, (uintptr_t)early_pmd,
> @@ -561,7 +582,7 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
>         load_sz = (uintptr_t)(&_end) - load_pa;
>
>  #if defined(CONFIG_64BIT) && !defined(CONFIG_MAXPHYSMEM_2GB)
> -       set_satp_mode(load_pa);
> +       set_satp_mode(load_pa, dtb_pa);
>  #endif
>
>         kernel_virt_addr = KERNEL_VIRT_ADDR;
> --
> 2.20.1
>

Looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

