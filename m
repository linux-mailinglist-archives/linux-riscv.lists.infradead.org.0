Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB2E83DCE
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 01:27:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2fBBjwVc5NeOXPXlwZw2v8CWIR3AvCfs15lgWC999Po=; b=FoSuNDTDjRhUGj
	ZmuaKJB9s5sIxkpmc11g02BhzqaORrNGznUjhBzH+U8Ghv3hvAOT/Uql/SJLNWNLmiGkFxGHHG8sw
	Zg6sCvALKndS8WqBv6LevIfSBqgMUkYFvonsJ1lPjzhwncBkyAfmpfk+v/76GZJWLrt5d1n9mNJOi
	OnL6NTq1pBP7R9btEnaD4WAiW5bqCmhPwBq83xZ8/bn5GhdAAlGN7MIc/F4G54TZ8Zg2J3yEIqtIJ
	y8kbiRilubbTpDeVcOhUWiVSvaMg8Z6Kro7LU8PfHYXzTTOKzgHZ2PS8uEv3AasYh9azexPQAKRe/
	zkgn5jsnFXS0p4Rf6Jhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv8rg-0002yg-L1; Tue, 06 Aug 2019 23:27:36 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv8rd-0002xw-3d
 for linux-riscv@lists.infradead.org; Tue, 06 Aug 2019 23:27:34 +0000
Received: by mail-ot1-x342.google.com with SMTP id j11so39619279otp.10
 for <linux-riscv@lists.infradead.org>; Tue, 06 Aug 2019 16:27:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=V5E/vEU5l0XkioyuorxP6jKxsdFKokFL9ZSrtexRssk=;
 b=A1NCke0a/LjS9zvr7+/34vGTAEoKD6Z7pY809prBn3C4amAQe063I+j3pzu6tKiV6N
 zANesKaI6teNmSxD4Six9jmjo5ZWki6o2jPPLuzPBYmTsteU3evikYzBntcUrMCrwNih
 fMT7X4BH3MRi92FoB9FhEUSN2I8ak+MseNYgMRrK5gz7m5yvMjVIiYPxMZ8CJ+SOSc24
 WOApgJYr3w0NR6neMgEo2AKw3p1ESlkH8TbATHjL6sUvWxVwFcLMPiLAv9yN10H88Fq5
 VyjCqs4jI9gSActsyazLApeytbPoBB9RbFPpHL4om+y3U8GG4IiFtdcY+RMibJ0KGWM6
 C7zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=V5E/vEU5l0XkioyuorxP6jKxsdFKokFL9ZSrtexRssk=;
 b=LPgExEuN5AjgBmf9fojmHaSPkuP/2+WfxQ7o2WPgXbAs073IoJY/5kABHCzqq4GQS8
 G4SLw6tf0HrHljCzGcrH4yc6UH+RQEeVRnZJn16j2H7EfzP0ORoN6zbJPk+drpqqJM2e
 JxT4fMupxVcU/aLinGGD/eXXvfzDlg9lHr11MUZTHkWNd8IXJCjPHCzXymUbUxTUBUwX
 EyR99y2izp039ZVi2w738ZEVnFD8CeclTzCS5l92CmJirLUO3G/aABu4lFNPL1RMYfUt
 QGTgmLaeWVtpuE5Gbb87GCfFnzROFKfPcvBHHwp0bm//LkV+UlIB4Sc9DXSIGv/PPkmQ
 JjxQ==
X-Gm-Message-State: APjAAAXOqmEi+D6YPGMwAWU1Fn60jWJ3Kx8FJagWqxkFZo4Abz7vB42F
 QvL+7IbKQ42KKmuVYbieQWHcDw==
X-Google-Smtp-Source: APXvYqySNV0ICs40X1PhGp8WppnE7/Hq6YdPV4lbOreMMENDHsln4iW6yVs87f7uUjg5jNYUoSYPwA==
X-Received: by 2002:a6b:c081:: with SMTP id q123mr6295296iof.210.1565134051058; 
 Tue, 06 Aug 2019 16:27:31 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 z19sm97593360ioh.12.2019.08.06.16.27.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 16:27:30 -0700 (PDT)
Date: Tue, 6 Aug 2019 16:27:30 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH v3 3/5] RISC-V: Fix unsupported isa string info.
In-Reply-To: <20190801005843.10343-4-atish.patra@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1908061625190.13971@viisi.sifive.com>
References: <20190801005843.10343-1-atish.patra@wdc.com>
 <20190801005843.10343-4-atish.patra@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_162733_163381_904AC300 
X-CRM114-Status: GOOD (  28.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Anup Patel <anup.patel@wdc.com>, Yangtao Li <tiny.windzz@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Johan Hovold <johan@kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@sifive.com>,
 Gary Guo <gary@garyguo.net>, linux-riscv@lists.infradead.org,
 Enrico Weigelt <info@metux.net>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 31 Jul 2019, Atish Patra wrote:

> Currently, kernel prints a info warning if any of the extensions
> from "mafdcsu" is missing in device tree. This is not entirely
> correct as Linux can boot with "f or d" extensions if kernel is
> configured accordingly. Moreover, it will continue to print the
> info string for future extensions such as hypervisor as well which
> is misleading. /proc/cpuinfo also doesn't print any other extensions
> except "mafdcsu".
> 
> Make sure that info log is only printed only if kernel is configured
> to have any mandatory extensions but device tree doesn't describe it.
> All the extensions present in device tree and follow the order
> described in the RISC-V specification (except 'S') are printed via
> /proc/cpuinfo always.
> 
> Signed-off-by: Atish Patra <atish.patra@wdc.com>

I tested this patch after dropping the CONFIG_ISA_RISCV_C test (see 
below).  Running "cat /proc/cpuinfo" generated the following kernel 
warnings:
          
[   73.412626] unsupported ISA extensions "su" in device tree for cpu [0]
[   73.418417] unsupported ISA extensions "su" in device tree for cpu [1]
[   73.424912] unsupported ISA extensions "su" in device tree for cpu [2]
[   73.431425] unsupported ISA extensions "su" in device tree for cpu [3]

Seems like the "su" should be dropped from mandatory_ext.  What do you 
think?

> ---
>  arch/riscv/kernel/cpu.c | 47 ++++++++++++++++++++++++++++++++---------
>  1 file changed, 37 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
> index 7da3c6a93abd..9b1d4550fbe6 100644
> --- a/arch/riscv/kernel/cpu.c
> +++ b/arch/riscv/kernel/cpu.c
> @@ -7,6 +7,7 @@
>  #include <linux/seq_file.h>
>  #include <linux/of.h>
>  #include <asm/smp.h>
> +#include <asm/hwcap.h>
>  
>  /*
>   * Returns the hart ID of the given device tree node, or -ENODEV if the node
> @@ -46,11 +47,14 @@ int riscv_of_processor_hartid(struct device_node *node)
>  
>  #ifdef CONFIG_PROC_FS
>  
> -static void print_isa(struct seq_file *f, const char *orig_isa)
> +static void print_isa(struct seq_file *f, const char *orig_isa,
> +		      unsigned long cpuid)
>  {
> -	static const char *ext = "mafdcsu";
> +	static const char *mandatory_ext = "mafdcsu";
>  	const char *isa = orig_isa;
>  	const char *e;
> +	char unsupported_isa[26] = {0};
> +	int index = 0;
>  
>  	/*
>  	 * Linux doesn't support rv32e or rv128i, and we only support booting
> @@ -70,27 +74,50 @@ static void print_isa(struct seq_file *f, const char *orig_isa)
>  	isa += 5;
>  
>  	/*
> -	 * Check the rest of the ISA string for valid extensions, printing those
> -	 * we find.  RISC-V ISA strings define an order, so we only print the
> +	 * RISC-V ISA strings define an order, so we only print all the
>  	 * extension bits when they're in order. Hide the supervisor (S)
>  	 * extension from userspace as it's not accessible from there.
> +	 * Throw a warning only if any mandatory extensions are not available
> +	 * and kernel is configured to have that mandatory extensions.
>  	 */
> -	for (e = ext; *e != '\0'; ++e) {
> -		if (isa[0] == e[0]) {
> +	for (e = mandatory_ext; *e != '\0'; ++e) {
> +		if (isa[0] != e[0]) {
> +#if defined(CONFIG_ISA_RISCV_C)

There's no Kconfig option by this name, and we're requiring compressed 
instruction support as part of the RISC-V Linux baseline.  Could you share 
the rationale behind this?  Looks to me like this should be dropped.


> +			if (isa[0] == 'c')
> +				continue;
> +#endif
> +#if defined(CONFIG_FP)
> +			if ((isa[0] == 'f') || (isa[0] == 'd'))
> +				continue;
> +#endif
> +			unsupported_isa[index] = e[0];
> +			index++;
> +		}
> +		/* Only write if part of isa string */
> +		if (isa[0] != '\0') {
>  			if (isa[0] != 's')
>  				seq_write(f, isa, 1);
> -
>  			isa++;
>  		}
>  	}
> +	if (isa[0] != '\0') {
> +		/* Add remainging isa strings */
> +		for (e = isa; *e != '\0'; ++e) {
> +#if !defined(CONFIG_VIRTUALIZATION)
> +			if (e[0] != 'h')
> +#endif
> +				seq_write(f, e, 1);
> +		}
> +	}
>  	seq_puts(f, "\n");
>  
>  	/*
>  	 * If we were given an unsupported ISA in the device tree then print
>  	 * a bit of info describing what went wrong.
>  	 */
> -	if (isa[0] != '\0')
> -		pr_info("unsupported ISA \"%s\" in device tree\n", orig_isa);
> +	if (unsupported_isa[0])
> +		pr_info("unsupported ISA extensions \"%s\" in device tree for cpu [%ld]\n",
> +			unsupported_isa, cpuid);
>  }
>  
>  static void print_mmu(struct seq_file *f, const char *mmu_type)
> @@ -134,7 +161,7 @@ static int c_show(struct seq_file *m, void *v)
>  	seq_printf(m, "processor\t: %lu\n", cpu_id);
>  	seq_printf(m, "hart\t\t: %lu\n", cpuid_to_hartid_map(cpu_id));
>  	if (!of_property_read_string(node, "riscv,isa", &isa))
> -		print_isa(m, isa);
> +		print_isa(m, isa, cpu_id);
>  	if (!of_property_read_string(node, "mmu-type", &mmu))
>  		print_mmu(m, mmu);
>  	if (!of_property_read_string(node, "compatible", &compat)
> -- 
> 2.21.0
> 
> 


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
