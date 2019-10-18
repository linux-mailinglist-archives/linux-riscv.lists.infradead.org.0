Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 559C7DBB84
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 04:54:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vZe1bC6sWZKfT8gACfcVr2NYDXf6ilh4IkAfD/iZxNg=; b=iBdfyDfCCobAvG
	ob+UpVYEcaHSKMOryTV41tBINI3+u8FBiCgGuJ029pEpcBlvQrLbKwzvv/gB7pMBmi4ylv0tlO5Z9
	Vq7JnnazJpVUsphbnz4qGgL/ySRLk/yJwJL2Qm1fBt7ugyijS8QCjYINOCfCm6K//W94gQZl+wIU7
	ps8AIPDRHk73wwuMaM+/1R7hQdpQZX3Wg/4AWbbwE4lsLAZ5hqv5VkonFPXCM/Nn76eD1zTlMCYkG
	VjMGBgcjlvkPVTvNVnMRRF0L5fk+fyzMarlwS5n4iPlo7HhCzlejbB9AskhVCtbm1Qw2TvAspishU
	dTjxg1Ak/bp4eGnQtnhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLIP9-0000c0-4J; Fri, 18 Oct 2019 02:54:15 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLIP6-0000bQ-3V
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 02:54:13 +0000
Received: by mail-wr1-x443.google.com with SMTP id o18so4476159wrv.13
 for <linux-riscv@lists.infradead.org>; Thu, 17 Oct 2019 19:54:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=h73TqF5SoJ6GAIIKRG22eugF7D1cochNYSQVPWgygxk=;
 b=oT+ec34QQePEIN8AhUZGIGxnIWGt8bBJbEIgZPVeAawhIgHnNshdKFCxck2vhENTAr
 vbr2hWswQdFMhAFRLwWwvlEls+zsASyOIedKdO/I9WSbxqBIry0+LhvKUULxL+e/Tfuz
 l3dWDY9QlsHdcrJNMVeJkWCVuDUbu+n8Czh+/KZivTKW0pF0qJx3p44zF7ZYc0Fffiuk
 zj7uOIb5BcqssmkN44Hmde4nPeNCu0KnzWItOzKgfqz8/ZS4wDzatknooeMs8PcbDJ64
 kiawb0PA8ePO9j31VtLaA2f16BXSL76nj/kQw8d3ySbGRDO9iKoGDTyuE85HmlXupXdt
 f/rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h73TqF5SoJ6GAIIKRG22eugF7D1cochNYSQVPWgygxk=;
 b=VNIrJzs9/t/nor+oZBe5gWo63t4JuZ3wnS9pADb/5q8IirouBc+OE4JH/gOMgNz27/
 4CvJO7YBEua5TgN2QJ+0IUgeCU5HH67GqpLQraKsqo1zaxex53M4fz1hiuYcf9y+P5Qz
 VE39xLDjPyGL4IRJwBUS9JFCesyScEVoY2EKysPw779wPBNyl7pTKHnSh8hRLul/DNHw
 6TuBbNKCYeORvxoUOJUAViu0krowgUvmXsDG4U8xiJP7JbFvBetqeKWBxFW/YqIOMzC9
 6Bu0uopTEUENSqj6t9rsdmz89AJ2urA4d+y1Iz9RWRFsoMvAu81XFDUVYJgsl1x9Jx/B
 vIgg==
X-Gm-Message-State: APjAAAXC5wPEZME0hEyIhlqlisNnsgyOx/IpC0OrTRnT8qI5OjpwM85s
 MU/z1MKB3t6kiCqiGjihrGH2bQXDLUeG4j4RWvYBFA==
X-Google-Smtp-Source: APXvYqzKRMy1STi+JQe3ZerDLgemp6MoY0u4gJnfJOMrrFsiaL70l/OsymsbOB47n6U96qOe+1clLwmxcheZ4TNEnKk=
X-Received: by 2002:adf:a109:: with SMTP id o9mr5299771wro.96.1571367250161;
 Thu, 17 Oct 2019 19:54:10 -0700 (PDT)
MIME-Version: 1.0
References: <20191017173743.5430-1-hch@lst.de>
 <20191017173743.5430-7-hch@lst.de>
In-Reply-To: <20191017173743.5430-7-hch@lst.de>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 18 Oct 2019 08:23:59 +0530
Message-ID: <CAAhSdy1DotXOmo472pXDmRny1Zt11eSH4soG_tYaAALrYzVgBw@mail.gmail.com>
Subject: Re: [PATCH 06/15] riscv: cleanup the default power off implementation
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_195412_147064_5A8264A6 
X-CRM114-Status: GOOD (  16.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 11:08 PM Christoph Hellwig <hch@lst.de> wrote:
>
> Move the sbi poweroff to a separate function and file that is only
> compiled if CONFIG_SBI is set.  Provide a new default fallback
> power off that just sits in a wfi loop to save some power.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/kernel/Makefile |  1 +
>  arch/riscv/kernel/reset.c  |  5 ++---
>  arch/riscv/kernel/sbi.c    | 17 +++++++++++++++++
>  3 files changed, 20 insertions(+), 3 deletions(-)
>  create mode 100644 arch/riscv/kernel/sbi.c
>
> diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
> index 696020ff72db..d8c35fa93cc6 100644
> --- a/arch/riscv/kernel/Makefile
> +++ b/arch/riscv/kernel/Makefile
> @@ -41,5 +41,6 @@ obj-$(CONFIG_DYNAMIC_FTRACE)  += mcount-dyn.o
>  obj-$(CONFIG_PERF_EVENTS)      += perf_event.o
>  obj-$(CONFIG_PERF_EVENTS)      += perf_callchain.o
>  obj-$(CONFIG_HAVE_PERF_REGS)   += perf_regs.o
> +obj-$(CONFIG_RISCV_SBI)                += sbi.o
>
>  clean:
> diff --git a/arch/riscv/kernel/reset.c b/arch/riscv/kernel/reset.c
> index d0fe623bfb8f..5e4e69859af1 100644
> --- a/arch/riscv/kernel/reset.c
> +++ b/arch/riscv/kernel/reset.c
> @@ -4,12 +4,11 @@
>   */
>
>  #include <linux/reboot.h>
> -#include <asm/sbi.h>
>
>  static void default_power_off(void)
>  {
> -       sbi_shutdown();
> -       while (1);
> +       while (1)
> +               wait_for_interrupt();
>  }
>
>  void (*pm_power_off)(void) = default_power_off;
> diff --git a/arch/riscv/kernel/sbi.c b/arch/riscv/kernel/sbi.c
> new file mode 100644
> index 000000000000..f6c7c3e82d28
> --- /dev/null
> +++ b/arch/riscv/kernel/sbi.c
> @@ -0,0 +1,17 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#include <linux/init.h>
> +#include <linux/pm.h>
> +#include <asm/sbi.h>
> +
> +static void sbi_power_off(void)
> +{
> +       sbi_shutdown();
> +}
> +
> +static int __init sbi_init(void)
> +{
> +       pm_power_off = sbi_power_off;
> +       return 0;
> +}
> +early_initcall(sbi_init);
> --
> 2.20.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

LGTM.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
