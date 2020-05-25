Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F9D1E06D6
	for <lists+linux-riscv@lfdr.de>; Mon, 25 May 2020 08:21:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DsMyEA4KM4Gnma+cblvcga4fhkcOb1KEzJ21AGUhJvw=; b=Uyga4lD4PNh1WKS+Pe3IHJP2W
	dXX7m5Ru3EHPO4u8bWJK5k044kEO1Kkv8rVqw1sK8jLz9iWzoivy8EoaGZ4lUsUzQpR0uNoYT5fUp
	HAECQ9e7HW7xyyD/LgJQo4lAyOdmK7tgpHbvBByfH0BbFAwf70LUIPJoNrHftn7g7bF1zIoyzZA9q
	Ekex8bmXgy+UwWgyKcRA9TspCVC7yfVKZP34hT1TauHRkvr1slwqmfLSlUfEvtkxVXzMjvye+s4R7
	bH7jvPV1VVHnaC6YKdcj5kkPvP1Fw4YNzBh4FMLR4yEqcgJwGGlJPmOL0tC7qRN0OcTl/UsIcIcwx
	bCywKaKXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd6Ud-0007kI-Ul; Mon, 25 May 2020 06:21:47 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd6Ua-0007ju-FZ
 for linux-riscv@lists.infradead.org; Mon, 25 May 2020 06:21:45 +0000
Received: by mail-wm1-x342.google.com with SMTP id h4so14241390wmb.4
 for <linux-riscv@lists.infradead.org>; Sun, 24 May 2020 23:21:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DsMyEA4KM4Gnma+cblvcga4fhkcOb1KEzJ21AGUhJvw=;
 b=JXV7TAi9280IblsCDbZgmP8mUBhpObgDtujBO6Hm2d2z4KRvy8eonFfjerVTD9nzco
 mglRG12NZltv0/OPJyhrti5E+t4z8xSQPVDa9WVPU7/8HSo7UBh/5BzRetK9GcYAl9oL
 pKhUO9ngnYmtM1ypl7wm+LUJ9Nw86HJwxzoez169eUz1VeR6OWNs0q/q+YuVNvyTw+2E
 nj3Y6jC3hvF66zL/+mln5jbtEW2iM1kr5W2tC0tkScnHYyAXoTQKUDkJMkqlegMhB6KY
 /JGuyOFNXqTiBG/eJDGRh2P6wxmFHjeulUsUo+VqsqBYpLjNKcjZGsWioh67ihSetBKJ
 d7IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DsMyEA4KM4Gnma+cblvcga4fhkcOb1KEzJ21AGUhJvw=;
 b=ituihO0A3NDcmVe7hRk5mBp7Q/mA7dlov19rYzUNasH+Vyi3/FEfovttwLrjhVrF0w
 MRa/quxAKUeYFtdYmt14B7kfQYjen/43F1tSvEIwuz1I8biiRQOM7JMWbY4/6b5snJIB
 eyR/t74Jjd0nB9kcxpxkyy2DAKJ99VEtT1S4vtg18byTsPcAUTZHPRWdXTYYSVVnnsLX
 H1D8x6tGbe/Vqu7PSVC/vwEL4lwzpWlv0VEZ4zGNZgyLNoeSpED/lnnJsYszqhLQvMYD
 Ww/2BE9k9nIUPTG8rdYxomG+3HA8ZxeIGSbhKCl2dKFi5YGAXnXJaoSOL7tnuOiAL7Xb
 MpzQ==
X-Gm-Message-State: AOAM530e+T9ZnwXvRX07OzqpGXv1bh5JnlLK9VmfdUv3FglWoiDq9b+i
 yC/yFo3X6lVqeOKxJLW01xZbUurIVyOLFbtvV/NAXA==
X-Google-Smtp-Source: ABdhPJwqnMo5o9tfGYlaS8t3ylndiNxTunEV9aI2LAmup2/BjBVBeTY38LLOi4mtVvezzXmu7QZS+D2jkJzU4fekjmU=
X-Received: by 2002:a1c:7410:: with SMTP id p16mr25074647wmc.134.1590387702492; 
 Sun, 24 May 2020 23:21:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200524091008.25587-1-alex@ghiti.fr>
 <20200524091008.25587-8-alex@ghiti.fr>
In-Reply-To: <20200524091008.25587-8-alex@ghiti.fr>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 25 May 2020 11:51:31 +0530
Message-ID: <CAAhSdy3JU8ae8Gx-4iNiOKbC027-Cgjc_8=BYEp1sO3pW6D5XA@mail.gmail.com>
Subject: Re: [PATCH 7/8] riscv: Use pgtable_l4_enabled to output mmu type in
 cpuinfo
To: Alexandre Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_232144_521119_3354CCA5 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: Palmer Dabbelt <palmerdabbelt@google.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Zong Li <zong.li@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, May 24, 2020 at 2:47 PM Alexandre Ghiti <alex@ghiti.fr> wrote:
>
> Now that the mmu type is determined at runtime using SATP
> characteristic, use the global variable pgtable_l4_enabled to output
> mmu type of the processor through /proc/cpuinfo instead of relying on
> device tree infos.
>
> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
> Reviewed-by: Anup Patel <anup@brainfault.org>
> Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
> ---
>  arch/riscv/boot/dts/sifive/fu540-c000.dtsi |  4 ----
>  arch/riscv/kernel/cpu.c                    | 24 ++++++++++++----------
>  2 files changed, 13 insertions(+), 15 deletions(-)
>
> diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> index 7db861053483..6138590a2229 100644
> --- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> +++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> @@ -50,7 +50,6 @@
>                         i-cache-size = <32768>;
>                         i-tlb-sets = <1>;
>                         i-tlb-size = <32>;
> -                       mmu-type = "riscv,sv39";
>                         reg = <1>;
>                         riscv,isa = "rv64imafdc";
>                         tlb-split;
> @@ -74,7 +73,6 @@
>                         i-cache-size = <32768>;
>                         i-tlb-sets = <1>;
>                         i-tlb-size = <32>;
> -                       mmu-type = "riscv,sv39";
>                         reg = <2>;
>                         riscv,isa = "rv64imafdc";
>                         tlb-split;
> @@ -98,7 +96,6 @@
>                         i-cache-size = <32768>;
>                         i-tlb-sets = <1>;
>                         i-tlb-size = <32>;
> -                       mmu-type = "riscv,sv39";
>                         reg = <3>;
>                         riscv,isa = "rv64imafdc";
>                         tlb-split;
> @@ -122,7 +119,6 @@
>                         i-cache-size = <32768>;
>                         i-tlb-sets = <1>;
>                         i-tlb-size = <32>;
> -                       mmu-type = "riscv,sv39";
>                         reg = <4>;
>                         riscv,isa = "rv64imafdc";
>                         tlb-split;

Your PATCH6 is already doing the right thing by skipping CPU DT
nodes that don't have "mmu-type" DT property.

The "mmu-type" DT property is very critical for RUNTIME M-mode
firmware (OpenSBI) because it tells whether a given CPU has MMU
(or not). This is also in agreement with the current DT bindings
document for RISC-V CPUs.

I suggest to drop the change in sifive/fu540-c000.dtsi and rest of
the patch is fine so my Reviewed-by still holds.

Regards,
Anup

> diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
> index 40a3c442ac5f..38a699b997a8 100644
> --- a/arch/riscv/kernel/cpu.c
> +++ b/arch/riscv/kernel/cpu.c
> @@ -8,6 +8,8 @@
>  #include <linux/of.h>
>  #include <asm/smp.h>
>
> +extern bool pgtable_l4_enabled;
> +
>  /*
>   * Returns the hart ID of the given device tree node, or -ENODEV if the node
>   * isn't an enabled and valid RISC-V hart node.
> @@ -54,18 +56,19 @@ static void print_isa(struct seq_file *f, const char *isa)
>         seq_puts(f, "\n");
>  }
>
> -static void print_mmu(struct seq_file *f, const char *mmu_type)
> +static void print_mmu(struct seq_file *f)
>  {
> +       char sv_type[16];
> +
>  #if defined(CONFIG_32BIT)
> -       if (strcmp(mmu_type, "riscv,sv32") != 0)
> -               return;
> +       strncpy(sv_type, "sv32", 5);
>  #elif defined(CONFIG_64BIT)
> -       if (strcmp(mmu_type, "riscv,sv39") != 0 &&
> -           strcmp(mmu_type, "riscv,sv48") != 0)
> -               return;
> +       if (pgtable_l4_enabled)
> +               strncpy(sv_type, "sv48", 5);
> +       else
> +               strncpy(sv_type, "sv39", 5);
>  #endif
> -
> -       seq_printf(f, "mmu\t\t: %s\n", mmu_type+6);
> +       seq_printf(f, "mmu\t\t: %s\n", sv_type);
>  }
>
>  static void *c_start(struct seq_file *m, loff_t *pos)
> @@ -90,14 +93,13 @@ static int c_show(struct seq_file *m, void *v)
>  {
>         unsigned long cpu_id = (unsigned long)v - 1;
>         struct device_node *node = of_get_cpu_node(cpu_id, NULL);
> -       const char *compat, *isa, *mmu;
> +       const char *compat, *isa;
>
>         seq_printf(m, "processor\t: %lu\n", cpu_id);
>         seq_printf(m, "hart\t\t: %lu\n", cpuid_to_hartid_map(cpu_id));
>         if (!of_property_read_string(node, "riscv,isa", &isa))
>                 print_isa(m, isa);
> -       if (!of_property_read_string(node, "mmu-type", &mmu))
> -               print_mmu(m, mmu);
> +       print_mmu(m);
>         if (!of_property_read_string(node, "compatible", &compat)
>             && strcmp(compat, "riscv"))
>                 seq_printf(m, "uarch\t\t: %s\n", compat);
> --
> 2.20.1
>

