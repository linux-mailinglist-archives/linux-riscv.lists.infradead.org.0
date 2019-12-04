Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7DE113530
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Dec 2019 19:52:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:In-Reply-To
	:Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=9Tp/KtJNwVzuaJhEOKKVEZwK56R14CCcKq5xNubP4Co=; b=Ynt89OGkTY5gRd
	viygpR2sj++HKngGj/pny0dvgz1ylpP7K7RQykxZUv63Ug+KBpo3FI4+3sJ3j7T/ZRNAmeejw8m3j
	Ov8/CP8OV45vdW7wDso4XnUz/DKSJvFZCoO9Z3ur2/ijXcTbY6tlsqHFt3/VIhCRnymd/YrgN7r/D
	s20iE99fakRbznbrkP4/b7xd7GpWtgSOmkGB1iU6wRLiJI6ZdeWpknvnCq13Pq2yrGBSclBZaQ8e8
	HQ8Solc00KQjDRqKvoLpzuDIt6PolYFR66Drn2UQNTtKBFQ2sxfv0ulOM9ngp5rMjqfOshf1VOxAA
	EMf7qyRBmO6lHMzGUkeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icZkw-0000JD-Ey; Wed, 04 Dec 2019 18:52:10 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icZks-0000ID-Jw
 for linux-riscv@lists.infradead.org; Wed, 04 Dec 2019 18:52:08 +0000
Received: by mail-pl1-x644.google.com with SMTP id bb5so101058plb.4
 for <linux-riscv@lists.infradead.org>; Wed, 04 Dec 2019 10:52:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:subject:in-reply-to:cc:to:message-id:mime-version
 :content-transfer-encoding;
 bh=9Tp/KtJNwVzuaJhEOKKVEZwK56R14CCcKq5xNubP4Co=;
 b=DwuPqr84p4+FJr9TyN6ybvcrSN9g8GFTQTaPu0QJAS9DprKQ+ZaexV9RMk+hiT/57Q
 yW3ugbxNLTzltni9ye+5xwLA05Ha0yVW6LsPWETeW+MyTIfLraFssPHqWBVdIV8Oy0gm
 o+UPneTVvzOuREkJyAlGhIfJbATf7c9QnVjG4jmEhJnpkzNQjdu9BXPpM7cihs0LPdR6
 osbNd8pDtus+twW1HWzgMFCOuIufKALkxjeoOVvvEgBqoNP9E/J3GKvDg4gEhNIZrRgm
 tLa8eXaZK9sxakEnCUU315s3UNB11s3NTRw6krQV2gZvyJ9YikZFQq63xgGzv7LKhKKQ
 h/ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:in-reply-to:cc:to:message-id
 :mime-version:content-transfer-encoding;
 bh=9Tp/KtJNwVzuaJhEOKKVEZwK56R14CCcKq5xNubP4Co=;
 b=QJA+AWqBlol3mEoZaThECRdLgIrWANPNAC7Y2VM0aIzryQYWn1Z0bRlZjs8qBFe/DM
 Xc9ClmqMZorHagIKIjHfhHReGMBcheRLtgZQ5TkQNZKk9V4QPmk1iSFgpG62lgZPrFQB
 lYxS8oNkonACfCFzdA7aLr0qV2r8ma77iD559ex1UL3fITP3nLyR9Fbw0xjHGCJ/qDgl
 +i7I3Hm5Q7fsMYozhKiz4vEwMk3iXRMHhaT+yT3goB2y8O2NvLPPIi/3b81rpgR0lKCw
 bJ8P8lavLtE3iJLPB/vdWeqngCYjWK2r8eX3SxXHdm0QKIV/z2TvXkYD27HMUBZMBy6d
 UxOw==
X-Gm-Message-State: APjAAAXlBbevzVah9IBiUk1trIApxWgHWHfNyt54pCI7UdlTgmg/gTNt
 MXnxmc5xJ2M+rDGaELeiP888Pw==
X-Google-Smtp-Source: APXvYqx8efjNP0bbSiQb/kICwMxp8ATbICvyJViJl/7zRxpZX6Bv07cYTFgUdIRAWRSrArtBiwmlgA==
X-Received: by 2002:a17:902:8d95:: with SMTP id
 v21mr4716849plo.96.1575485522724; 
 Wed, 04 Dec 2019 10:52:02 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:7f69:cd98:a2a2:a03d])
 by smtp.gmail.com with ESMTPSA id 8sm9303792pfu.21.2019.12.04.10.52.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 10:52:02 -0800 (PST)
Date: Wed, 04 Dec 2019 10:52:02 -0800 (PST)
X-Google-Original-Date: Wed, 04 Dec 2019 10:36:22 PST (-0800)
From: Palmer Dabbelt <palmerdabbelt@google.com>
X-Google-Original-From: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH v5 3/4] RISC-V: Introduce a new config for SBI v0.1
In-Reply-To: <20191126190503.19303-4-atish.patra@wdc.com>
To: Atish Patra <Atish.Patra@wdc.com>
Message-ID: <mhng-7f24a6d6-86bd-4e53-a6ec-62687802801d@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_105206_687416_331756F2 
X-CRM114-Status: GOOD (  24.81  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: aou@eecs.berkeley.edu, Atish Patra <Atish.Patra@wdc.com>,
 anup@brainfault.org, linux-kernel@vger.kernel.org, rppt@linux.ibm.com,
 alexios.zavras@intel.com, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, tglx@linutronix.de, han_mao@c-sky.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 26 Nov 2019 11:05:02 PST (-0800), Atish Patra wrote:
> We now have SBI v0.2 which is more scalable and extendable to handle
> future needs for RISC-V supervisor interfaces.
>
> Introduce a new config and move all SBI v0.1 code under that config.
> This allows to implement the new replacement SBI extensions cleanly
> and remove v0.1 extensions easily in future. Currently, the config
> is enabled by default. Once all M-mode software with v0.1 are no

I'd say "software is", not "software are".  There's at least one more instance
of this.

> longer in use, this config option and all relevant code can be easily
> removed.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> Reviewed-by: Anup Patel <anup@brainfault.org>
> ---
>  arch/riscv/Kconfig           |   6 ++
>  arch/riscv/include/asm/sbi.h |   2 +
>  arch/riscv/kernel/sbi.c      | 154 +++++++++++++++++++++++++++++------
>  3 files changed, 138 insertions(+), 24 deletions(-)
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index ca3b5541ae93..15c020d6837b 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -304,6 +304,12 @@ config SECCOMP
>  	  and the task is only allowed to execute a few safe syscalls
>  	  defined by each seccomp mode.
>
> +config RISCV_SBI_V01
> +	bool "SBI v0.1 support"

I don't think presenting this to users as "v0.1" is correct.  I'd expect that
to disable probing and assume the legacy extension always exists, while this
just allows the legacy extension to be used in a v0.2 style.  For example: it's
checking the SBI version, which doesn't exist in v0.1.

There should really be two options here: one to allow the legacy extension set
and one to be compatible with SBI v0.1.  We can deprecate the v0.1 support much
sooner than the legacy extension set.

> +	default y
> +	help
> +	  This config allows kernel to use SBI v0.1 APIs. This will be
> +	  deprecated in future once legacy M-mode software are no longer in use.
>  endmenu
>
>  menu "Boot options"
> diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
> index 906438322932..cc82ae63f8e0 100644
> --- a/arch/riscv/include/asm/sbi.h
> +++ b/arch/riscv/include/asm/sbi.h
> @@ -10,6 +10,7 @@
>
>  #ifdef CONFIG_RISCV_SBI
>  enum sbi_ext_id {
> +#ifdef CONFIG_RISCV_SBI_V01
>  	SBI_EXT_0_1_SET_TIMER = 0x0,
>  	SBI_EXT_0_1_CONSOLE_PUTCHAR = 0x1,
>  	SBI_EXT_0_1_CONSOLE_GETCHAR = 0x2,
> @@ -19,6 +20,7 @@ enum sbi_ext_id {
>  	SBI_EXT_0_1_REMOTE_SFENCE_VMA = 0x6,
>  	SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID = 0x7,
>  	SBI_EXT_0_1_SHUTDOWN = 0x8,
> +#endif
>  	SBI_EXT_BASE = 0x10,
>  };
>
> diff --git a/arch/riscv/kernel/sbi.c b/arch/riscv/kernel/sbi.c
> index a47e23c3a2e1..ee710bfe0b0e 100644
> --- a/arch/riscv/kernel/sbi.c
> +++ b/arch/riscv/kernel/sbi.c
> @@ -8,6 +8,14 @@
>  unsigned long sbi_spec_version = SBI_SPEC_VERSION_DEFAULT;
>  EXPORT_SYMBOL(sbi_spec_version);
>
> +static void (*__sbi_set_timer)(uint64_t stime);
> +static int (*__sbi_send_ipi)(const unsigned long *hart_mask);
> +static int (*__sbi_rfence)(unsigned long extid, unsigned long fid,
> +		  const unsigned long *hart_mask,
> +		  unsigned long hbase, unsigned long start,
> +		  unsigned long size, unsigned long arg4,
> +		  unsigned long arg5);
> +
>  struct sbiret sbi_ecall(int ext, int fid, unsigned long arg0,
>  			unsigned long arg1, unsigned long arg2,
>  			unsigned long arg3, unsigned long arg4,
> @@ -52,6 +60,32 @@ static int sbi_err_map_linux_errno(int err)
>  	};
>  }
>
> +static void __sbi_set_timer_dummy_warn(uint64_t stime_value)
> +{
> +	pr_warn("Timer extension is not available in SBI v%lu.%lu\n",
> +		sbi_major_version(), sbi_minor_version());
> +}
> +
> +static int __sbi_send_ipi_dummy_warn(const unsigned long *hart_mask)
> +{
> +	pr_warn("IPI extension is not available in SBI v%lu.%lu\n",
> +		sbi_major_version(), sbi_minor_version());
> +	return 0;
> +}
> +
> +static int __sbi_rfence_dummy_warn(unsigned long extid,
> +			     unsigned long fid,
> +			     const unsigned long *hart_mask,
> +			     unsigned long hbase, unsigned long start,
> +			     unsigned long size, unsigned long arg4,
> +			     unsigned long arg5)
> +{
> +	pr_warn("remote fence extension is not available in SBI v%lu.%lu\n",
> +		sbi_major_version(), sbi_minor_version());
> +	return 0;
> +}
> +
> +#ifdef CONFIG_RISCV_SBI_V01
>  /**
>   * sbi_console_putchar() - Writes given character to the console device.
>   * @ch: The data to be written to the console.
> @@ -80,41 +114,106 @@ int sbi_console_getchar(void)
>  EXPORT_SYMBOL(sbi_console_getchar);
>
>  /**
> - * sbi_set_timer() - Program the timer for next timer event.
> - * @stime_value: The value after which next timer event should fire.
> + * sbi_shutdown() - Remove all the harts from executing supervisor code.
>   *
>   * Return: None
>   */
> -void sbi_set_timer(uint64_t stime_value)
> +void sbi_shutdown(void)
>  {
> -#if __riscv_xlen == 32
> -	sbi_ecall(SBI_EXT_0_1_SET_TIMER, 0, stime_value,
> -			  stime_value >> 32, 0, 0, 0, 0);
> -#else
> -	sbi_ecall(SBI_EXT_0_1_SET_TIMER, 0, stime_value, 0, 0, 0, 0, 0);
> -#endif
> +	sbi_ecall(SBI_EXT_0_1_SHUTDOWN, 0, 0, 0, 0, 0, 0, 0);
>  }
>  EXPORT_SYMBOL(sbi_set_timer);
>
>  /**
> - * sbi_shutdown() - Remove all the harts from executing supervisor code.
> + * sbi_clear_ipi() - Clear any pending IPIs for the calling hart.
>   *
>   * Return: None
>   */
> -void sbi_shutdown(void)
> +void sbi_clear_ipi(void)
>  {
> -	sbi_ecall(SBI_EXT_0_1_SHUTDOWN, 0, 0, 0, 0, 0, 0, 0);
> +	sbi_ecall(SBI_EXT_0_1_CLEAR_IPI, 0, 0, 0, 0, 0, 0, 0);
>  }
>  EXPORT_SYMBOL(sbi_shutdown);
>
>  /**
> - * sbi_clear_ipi() - Clear any pending IPIs for the calling hart.
> + * sbi_set_timer_v01() - Program the timer for next timer event.
> + * @stime_value: The value after which next timer event should fire.
>   *
>   * Return: None
>   */
> -void sbi_clear_ipi(void)
> +static void __sbi_set_timer_v01(uint64_t stime_value)
>  {
> -	sbi_ecall(SBI_EXT_0_1_CLEAR_IPI, 0, 0, 0, 0, 0, 0, 0);
> +#if __riscv_xlen == 32
> +	sbi_ecall(SBI_EXT_0_1_SET_TIMER, 0, stime_value,
> +		  stime_value >> 32, 0, 0, 0, 0);
> +#else
> +	sbi_ecall(SBI_EXT_0_1_SET_TIMER, 0, stime_value, 0, 0, 0, 0, 0);
> +#endif
> +}
> +
> +static int __sbi_send_ipi_v01(const unsigned long *hart_mask)
> +{
> +	sbi_ecall(SBI_EXT_0_1_SEND_IPI, 0, (unsigned long)hart_mask,
> +		  0, 0, 0, 0, 0);
> +	return 0;
> +}
> +
> +static int __sbi_rfence_v01(unsigned long ext, unsigned long fid,
> +			     const unsigned long *hart_mask,
> +			     unsigned long hbase, unsigned long start,
> +			     unsigned long size, unsigned long arg4,
> +			     unsigned long arg5)
> +{
> +	switch (ext) {
> +	case SBI_EXT_0_1_REMOTE_FENCE_I:
> +		sbi_ecall(SBI_EXT_0_1_REMOTE_FENCE_I, 0,
> +			  (unsigned long)hart_mask, 0, 0, 0, 0, 0);
> +		break;
> +	case SBI_EXT_0_1_REMOTE_SFENCE_VMA:
> +		sbi_ecall(SBI_EXT_0_1_REMOTE_SFENCE_VMA, 0,
> +			  (unsigned long)hart_mask, start, size,
> +			  0, 0, 0);
> +		break;
> +	case SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID:
> +		sbi_ecall(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID, 0,
> +			  (unsigned long)hart_mask, start, size,
> +			  arg4, 0, 0);
> +		break;
> +	default:
> +		pr_err("extid [%lu]not supported in SBI v0.1\n", ext);
> +	}
> +
> +	return 0;
> +}
> +#else
> +static void __sbi_set_timer_v01(uint64_t stime_value)
> +{
> +	__sbi_set_timer_dummy_warn(0);
> +}
> +static int __sbi_send_ipi_v01(const unsigned long *hart_mask)
> +{
> +	return __sbi_send_ipi_dummy_warn(NULL);
> +}
> +static int __sbi_rfence_v01(unsigned long ext, unsigned long fid,
> +			     const unsigned long *hart_mask,
> +			     unsigned long hbase, unsigned long start,
> +			     unsigned long size, unsigned long arg4,
> +			     unsigned long arg5)
> +{
> +	return __sbi_rfence_dummy_warn(0, 0, 0, 0, 0, 0, 0, 0);
> +
> +}
> +#endif /* CONFIG_RISCV_SBI_V01 */
> +
> +/**
> + * sbi_set_timer() - Program the timer for next timer event.
> + * @stime_value: The value after which next timer event should fire.
> + *
> + * Return: None
> + */
> +void sbi_set_timer(uint64_t stime_value)
> +{
> +	__sbi_set_timer(stime_value);
>  }
>
>  /**
> @@ -125,11 +224,11 @@ void sbi_clear_ipi(void)
>   */
>  void sbi_send_ipi(const unsigned long *hart_mask)
>  {
> -	sbi_ecall(SBI_EXT_0_1_SEND_IPI, 0, (unsigned long)hart_mask,
> -			0, 0, 0, 0, 0);
> +	__sbi_send_ipi(hart_mask);
>  }
>  EXPORT_SYMBOL(sbi_send_ipi);
>
> +
>  /**
>   * sbi_remote_fence_i() - Execute FENCE.I instruction on given remote harts.
>   * @hart_mask: A cpu mask containing all the target harts.
> @@ -138,8 +237,8 @@ EXPORT_SYMBOL(sbi_send_ipi);
>   */
>  void sbi_remote_fence_i(const unsigned long *hart_mask)
>  {
> -	sbi_ecall(SBI_EXT_0_1_REMOTE_FENCE_I, 0, (unsigned long)hart_mask,
> -			0, 0, 0, 0, 0);
> +	__sbi_rfence(SBI_EXT_0_1_REMOTE_FENCE_I, 0,
> +		     hart_mask, 0, 0, 0, 0, 0);
>  }
>  EXPORT_SYMBOL(sbi_remote_fence_i);
>
> @@ -156,8 +255,8 @@ void sbi_remote_sfence_vma(const unsigned long *hart_mask,
>  					 unsigned long start,
>  					 unsigned long size)
>  {
> -	sbi_ecall(SBI_EXT_0_1_REMOTE_SFENCE_VMA, 0,
> -			(unsigned long)hart_mask, start, size, 0, 0, 0);
> +	__sbi_rfence(SBI_EXT_0_1_REMOTE_SFENCE_VMA, 0,
> +		     hart_mask, 0, start, size, 0, 0);
>  }
>  EXPORT_SYMBOL(sbi_remote_sfence_vma);
>
> @@ -177,8 +276,8 @@ void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
>  					      unsigned long size,
>  					      unsigned long asid)
>  {
> -	sbi_ecall(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID, 0,
> -			(unsigned long)hart_mask, start, size, asid, 0, 0);
> +	__sbi_rfence(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID, 0,
> +		     hart_mask, 0, start, size, asid, 0);
>  }
>  EXPORT_SYMBOL(sbi_remote_sfence_vma_asid);
>
> @@ -253,8 +352,15 @@ int __init sbi_init(void)
>
>  	pr_info("SBI specification v%lu.%lu detected\n",
>  		sbi_major_version(), sbi_minor_version());
> -	if (!sbi_spec_is_0_1())
> +
> +	if (!sbi_spec_is_0_1()) {
>  		pr_info("SBI implementation ID=0x%lx Version=0x%lx\n",
>  			sbi_get_firmware_id(), sbi_get_firmware_version());
> +	}
> +
> +	__sbi_set_timer = __sbi_set_timer_v01;
> +	__sbi_send_ipi	= __sbi_send_ipi_v01;
> +	__sbi_rfence	= __sbi_rfence_v01;
> +
>  	return 0;
>  }

