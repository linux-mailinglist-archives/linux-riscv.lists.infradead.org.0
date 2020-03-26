Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C91CA19390F
	for <lists+linux-riscv@lfdr.de>; Thu, 26 Mar 2020 08:01:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jofCgVIHQ01SmLvuORxlj/SeIQqWtEau+/mAl/qksKc=; b=FwdvT9zaT/HU1wM0yiD9yKLzj
	JIfWOY9z6cd/2B0G21QGPaLKs8H0qJxcDJqSHeAfKhPOv34HgKGx7gBa6SBwrUXYyT3OZk36Q9O5b
	TKsmydugQ8wZFBcBQqy9eQz+1vymvf1oBEeo+PupDKR18R4gAEu011OG8PkxO5OZRz6kriaIrH9C2
	ZxhfoH+K2Y6RxAoNPQF7HgttQ/MflcPJMGMg0c/LG4pxupIgIZiAVIGfp+o9zJMXfVWDih9c6v16q
	gj3rys3ZdTG/7jTtTHJpATEOKNuGm/nIH7xhICQcSGMdH94OGaohrwX2/ArALvXJvedjtLytXlnGq
	U6qcuzNdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHMWV-0005Tw-J7; Thu, 26 Mar 2020 07:01:51 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHMWS-0005Tc-B4
 for linux-riscv@lists.infradead.org; Thu, 26 Mar 2020 07:01:49 +0000
Received: by mail-wr1-x441.google.com with SMTP id 31so6384982wrs.3
 for <linux-riscv@lists.infradead.org>; Thu, 26 Mar 2020 00:01:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jofCgVIHQ01SmLvuORxlj/SeIQqWtEau+/mAl/qksKc=;
 b=bcSpSKxPVEFvA3e83gc9piZG/avwTjWX9CPl9XOB1c6n0Ldk7d4t6xtIWfmiNiR19u
 0SEPQodiQ2SEVXgFtvYF/b31l6kAm4VxQpVAKfFpsn5iTRQc9fKupgAX3gF6vUTZtug8
 tEcG1DON4PidJ8Es38iq+6RB8gD7PTI/ilJ8RN33vhSmqHY2L8f1iZg5sZXq5/M8aPCX
 uMb5yzhFe3S2/2n3btGG0V9R+iRzS0USFqBBZRXW83vOVhvm+O7xs0H8N3OQZHryJTdQ
 0AEYngAaD+hL9yN1/c1ANSsRBQaY7d+5WdkNTK3YsZXTTHqOiHB1NzUGfT6Zc5mn9UHz
 N/dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jofCgVIHQ01SmLvuORxlj/SeIQqWtEau+/mAl/qksKc=;
 b=dfjVzyyx540ncM/mXmc3MXT7b0879MYIaX92uR4qrf7gqkCMBFaA8OTMo4k3Q7vFeX
 ZQSifO8sqQN7x1Ac17OUBo6UERfqwF4/QQ1l5+a8fSNzO73FOucrlqcskTssDwUPeRMl
 8YJoxrBJQ6aDniOu7YsVPmhpTdogLTPHo0xcwTrfFjdquv7M1h3zr9O2rKjwtsM0uioj
 kWkr9GcWpuzU8s7NlOuBgjlXqMEXVown7QfBe0V5kTtVQFWbz4srpfiox0NzfylE2HWt
 +AIk1m8YtaZbd8G174IV3KN3H7alGNmGtd5n9c/3a2OUxf8UuDY6kfgEcQAjFRr62hIh
 EIvQ==
X-Gm-Message-State: ANhLgQ0U9wlleZjkL1gnncGSE9afBy27wI1P1/0O+Cts4m+NbqMtyx5v
 KVUyyxx0u5hMQvzpqq56kTJKgvGiKgMBJZEXA5HxsdFN
X-Google-Smtp-Source: ADFU+vsbROIUoA90FStIEmYD0FITWzGap+V5Xr2S+KQyHdoQESAi373eDUqAUZe8sPw3C/qJn1CIrZEetGQs1GmcRv0=
X-Received: by 2002:a5d:4acd:: with SMTP id y13mr7573260wrs.61.1585206106903; 
 Thu, 26 Mar 2020 00:01:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200322110028.18279-1-alex@ghiti.fr>
 <20200322110028.18279-6-alex@ghiti.fr>
In-Reply-To: <20200322110028.18279-6-alex@ghiti.fr>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 26 Mar 2020 12:31:35 +0530
Message-ID: <CAAhSdy19xsOew+4OhNndUpjzFQtu7gX2VZn-4fczVxuJinP-OA@mail.gmail.com>
Subject: Re: [RFC PATCH 5/7] riscv: Use pgtable_l4_enabled to output mmu type
 in cpuinfo
To: Alexandre Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_000148_382865_0BA238F4 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Zong Li <zong.li@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, Mar 22, 2020 at 4:35 PM Alexandre Ghiti <alex@ghiti.fr> wrote:
>
> Now that the mmu type is determined at runtime using SATP
> characteristic, use the global variable pgtable_l4_enabled to output
> mmu type of the processor through /proc/cpuinfo instead of relying on
> device tree infos.
>
> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
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

Looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

