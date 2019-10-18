Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A55DC02F
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 10:43:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lluoXI4yffiJTfgUsR3AXeCaydZQLiIO9+5pkBLYUQM=; b=pmgaCVIIXuiPzA
	tbWP1YgPE81rM9Gn7UWoJhnT1Fke6DSHWi+sGnjjhjTAF4EaQtxviMeG3HzbNdSuE8y/ap5j9WXeV
	GOdvVMD2CToTJkQQETauU0TM0cZNDjTN9Dc2Zu9Rz6V2yuvUzJNI2ONef1yDtMQBbNxZPEZGQdek8
	y+rTHKVbERPXEJsqbki1qcCTnT5WtBH+oei9cTVZJA5V6g7vbznhNADK2UjwiqCwvCend2xXFPFno
	TfQZXn8cPHbDcGYv995Y+oxFm25H3SaGEUIvjhL84qxCHsgoLG5oMiT2btu5XmA36mqYYQ44Tj/Oh
	5LpNPP3V55CSYJ0CYm1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLNrF-0005R7-Ui; Fri, 18 Oct 2019 08:43:37 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLNrB-0005Qn-U8
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 08:43:35 +0000
Received: by mail-il1-x143.google.com with SMTP id y5so4806202ilb.5
 for <linux-riscv@lists.infradead.org>; Fri, 18 Oct 2019 01:43:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=CIt+hFG6ZbxuG3Tl39oW4lR5XbeTOmjy7F8raJZ4AuA=;
 b=TcVOUj8ozZ8UtKg6Fi9IPAmiBMEiSRVn/XOBg2tqztcxP4SCuFhH5TrW289kUD/62Q
 UTTuZE92s/AttcaVm7apLIPBmX4iLzzvk16OhhRNS6iq/vVjSpqT8vnPqvYiZ6PW756c
 VDiY0OZXgJaMQ+FkOEoBIj1uJGUIKSGgvUqQr2bO9bUfVvqZYvTOHwcEG4dSqFRZPVAN
 HYpFuOJ1YXvdi9GeFw+4Jxm6QSMbBz74ZAgGoPhWWJbwr65L44P/rwCbAAqmRzdW8kVY
 UoHFZ4V1cpZ63L+oBPfosxY20z2CzTtRj2YdPwMq3uvpVuH+oB8qpdFLj4eIKI4XrW3U
 khkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=CIt+hFG6ZbxuG3Tl39oW4lR5XbeTOmjy7F8raJZ4AuA=;
 b=D7eKxTXiLEOddUFkFcXi9Mh+hx1JBBNowJ8YiQOYIaomUHmgUw2yXn+sPhPwAJBJt8
 9vo3OV6A5e0men30WHWQ1ZdpRVyiPGx0Y09ZaEY8D9CKDkwPG2OxsG19X7cv5s+ItKtW
 2OK+AlELXrXSznliURXlRnl4LcPZ/fMaTl2egoWrfswDNv3fOHG27xl0WSUVp6Pc+nTH
 FfhyWa/M2qohJ/XIpe/fbZ9GWBVoai19EEhBqDpjG6PooBGyZ6JWPPf8cdSO8r1iSrwS
 e1T9/yYD0MIOznYFijXii6XBAZ/RthTKqHdSgSZv+pQHWpje8vPoaViugP9q7tCER1rz
 Ao5Q==
X-Gm-Message-State: APjAAAW0+JXp/4b4Q90I6SkdG63cnbzn183bYkxolRRY4qAWbjd8Da9j
 n9hfTlveEHKN2+i+JaHlwJ911g==
X-Google-Smtp-Source: APXvYqzT4vQGzbOYM+VPVYFS9y0mWpLBiCrhqHfvp4Ojsbmf7gbi2hjgAre2Oc19p5/gbaLnYt9Zqg==
X-Received: by 2002:a92:4a05:: with SMTP id m5mr3698564ilf.91.1571388212846;
 Fri, 18 Oct 2019 01:43:32 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id o14sm1521681iob.49.2019.10.18.01.43.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 01:43:32 -0700 (PDT)
Date: Fri, 18 Oct 2019 01:43:29 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH v2  2/2] RISC-V: Consolidate isa correctness check
In-Reply-To: <20191009220058.24964-3-atish.patra@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1910180142460.21875@viisi.sifive.com>
References: <20191009220058.24964-1-atish.patra@wdc.com>
 <20191009220058.24964-3-atish.patra@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_014334_005546_6A5E3C03 
X-CRM114-Status: GOOD (  21.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Johan Hovold <johan@kernel.org>, Richard Fontana <rfontana@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-riscv@lists.infradead.org, Enrico Weigelt <info@metux.net>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 9 Oct 2019, Atish Patra wrote:

> Currently, isa string is read and checked for correctness at multiple
> places.
> 
> Consolidate them into one function and use it only during early bootup.
> In case of a incorrect isa string, the cpu shouldn't boot at all.
> 
> Signed-off-by: Atish Patra <atish.patra@wdc.com>

Looks like riscv_read_check_isa() is called twice for each hart.  Is there 
any way to call it only once per hart?


- Paul

> ---
>  arch/riscv/include/asm/processor.h |  1 +
>  arch/riscv/kernel/cpu.c            | 41 ++++++++++++++++++++++--------
>  arch/riscv/kernel/cpufeature.c     |  4 +--
>  arch/riscv/kernel/smpboot.c        |  4 +++
>  4 files changed, 37 insertions(+), 13 deletions(-)
> 
> diff --git a/arch/riscv/include/asm/processor.h b/arch/riscv/include/asm/processor.h
> index f539149d04c2..189bf98f9a3f 100644
> --- a/arch/riscv/include/asm/processor.h
> +++ b/arch/riscv/include/asm/processor.h
> @@ -74,6 +74,7 @@ static inline void wait_for_interrupt(void)
>  }
>  
>  struct device_node;
> +int riscv_read_check_isa(struct device_node *node, const char **isa);
>  int riscv_of_processor_hartid(struct device_node *node);
>  
>  extern void riscv_fill_hwcap(void);
> diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
> index 40a3c442ac5f..6bd4c7176bf6 100644
> --- a/arch/riscv/kernel/cpu.c
> +++ b/arch/riscv/kernel/cpu.c
> @@ -8,13 +8,43 @@
>  #include <linux/of.h>
>  #include <asm/smp.h>
>  
> +int riscv_read_check_isa(struct device_node *node, const char **isa)
> +{
> +	u32 hart;
> +
> +	if (of_property_read_u32(node, "reg", &hart)) {
> +		pr_warn("Found CPU without hart ID\n");
> +		return -ENODEV;
> +	}
> +
> +	if (of_property_read_string(node, "riscv,isa", isa)) {
> +		pr_warn("CPU with hartid=%d has no \"riscv,isa\" property\n",
> +			hart);
> +		return -ENODEV;
> +	}
> +	/*
> +	 * Linux doesn't support rv32e or rv128i, and we only support booting
> +	 * kernels on harts with the same ISA that the kernel is compiled for.
> +	 */
> +	if (IS_ENABLED(CONFIG_32BIT) && (strncmp(*isa, "rv32i", 5) != 0)) {
> +		pr_warn("hartid=%d has an invalid ISA \"%s\" for 32bit config\n",
> +			hart, *isa);
> +		return -ENODEV;
> +	} else if (IS_ENABLED(CONFIG_64BIT) &&
> +		  (strncmp(*isa, "rv64i", 5) != 0)) {
> +		pr_warn("hartid=%d has an invalid ISA \"%s\" for 64bit config\n",
> +			hart, *isa);
> +		return -ENODEV;
> +	}
> +	return 0;
> +}
> +
>  /*
>   * Returns the hart ID of the given device tree node, or -ENODEV if the node
>   * isn't an enabled and valid RISC-V hart node.
>   */
>  int riscv_of_processor_hartid(struct device_node *node)
>  {
> -	const char *isa;
>  	u32 hart;
>  
>  	if (!of_device_is_compatible(node, "riscv")) {
> @@ -32,15 +62,6 @@ int riscv_of_processor_hartid(struct device_node *node)
>  		return -ENODEV;
>  	}
>  
> -	if (of_property_read_string(node, "riscv,isa", &isa)) {
> -		pr_warn("CPU with hartid=%d has no \"riscv,isa\" property\n", hart);
> -		return -ENODEV;
> -	}
> -	if (isa[0] != 'r' || isa[1] != 'v') {
> -		pr_warn("CPU with hartid=%d has an invalid ISA of \"%s\"\n", hart, isa);
> -		return -ENODEV;
> -	}
> -
>  	return hart;
>  }
>  
> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
> index b1ade9a49347..eaad5aa07403 100644
> --- a/arch/riscv/kernel/cpufeature.c
> +++ b/arch/riscv/kernel/cpufeature.c
> @@ -38,10 +38,8 @@ void riscv_fill_hwcap(void)
>  		if (riscv_of_processor_hartid(node) < 0)
>  			continue;
>  
> -		if (of_property_read_string(node, "riscv,isa", &isa)) {
> -			pr_warn("Unable to find \"riscv,isa\" devicetree entry\n");
> +		if (riscv_read_check_isa(node, &isa) < 0)
>  			continue;
> -		}
>  
>  		for (i = 0; i < strlen(isa); ++i)
>  			this_hwcap |= isa2hwcap[(unsigned char)(isa[i])];
> diff --git a/arch/riscv/kernel/smpboot.c b/arch/riscv/kernel/smpboot.c
> index 18ae6da5115e..15ee71297abf 100644
> --- a/arch/riscv/kernel/smpboot.c
> +++ b/arch/riscv/kernel/smpboot.c
> @@ -60,12 +60,16 @@ void __init setup_smp(void)
>  	int hart;
>  	bool found_boot_cpu = false;
>  	int cpuid = 1;
> +	const char *isa;
>  
>  	for_each_of_cpu_node(dn) {
>  		hart = riscv_of_processor_hartid(dn);
>  		if (hart < 0)
>  			continue;
>  
> +		if (riscv_read_check_isa(dn, &isa) < 0)
> +			continue;
> +
>  		if (hart == cpuid_to_hartid_map(0)) {
>  			BUG_ON(found_boot_cpu);
>  			found_boot_cpu = 1;
> -- 
> 2.21.0
> 
> 


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
