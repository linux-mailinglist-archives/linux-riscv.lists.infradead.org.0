Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9EE011352F
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Dec 2019 19:52:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:In-Reply-To
	:Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=tk0l43v3xQFR8poBPdR9szu82nMHPp8tNpA1HzPeXDY=; b=roooKsSCJxPOrR
	ovosga3MFaNFdxvcJCJN+QYtdFTyqEn/NZhn51XH0jqO99dV53ltAwlQfOAbqAKdE6nq9vmm7UKW6
	USrOfFOVvUS18+1jcH+eJ53HeBFqZ9QMp1Y+HQPzhiwXk9yskLYOAL4K1I0JR+KnUKngiaT9SwdA2
	Pz+3No7JzVpD8wYYPQYnsHlb2vAXMiQJ2wLgOrkMIIAcrkSRYdgiP3stsUAcOGvvtrLn8HilveNIe
	nqN3XWvG+A8ISk0k1DR+MnbKoFLj6bPKyWHyX1y68s0SZfPdbDOkUbPKWjzuPS473OTXT86a6M1xH
	d0YsdJyr9S18zAyj9luw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icZky-0000KV-5L; Wed, 04 Dec 2019 18:52:12 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icZkt-0000IF-KS
 for linux-riscv@lists.infradead.org; Wed, 04 Dec 2019 18:52:09 +0000
Received: by mail-pg1-x541.google.com with SMTP id k25so284591pgt.7
 for <linux-riscv@lists.infradead.org>; Wed, 04 Dec 2019 10:52:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:subject:in-reply-to:cc:to:message-id:mime-version
 :content-transfer-encoding;
 bh=tk0l43v3xQFR8poBPdR9szu82nMHPp8tNpA1HzPeXDY=;
 b=DZi4AFAb2uBtHuixQF7vrcYqx0B2nqX2w2D5pUSh9HKy3g5llkuJu6xBqnQ8be76FB
 TDB/UOYKXr/dmWRYtfPIWaD4dVfUg6wP371ZraLk4xG2uctzABKrXAX/+vBj9aLG0A2j
 6xjnodN2WCWJZ6zBs7tPVdMSYKUcKIjRzfkgnGhuglUpRq8Gp/9fNNduDvt9jvNA3K96
 3yQQBmojUunwo9FvnF2OtxTGEFLGHpHqsmf+GbDkTXIlbDeBZWDNV/PkGG37caYTz55k
 U0od8M4BAZ8pf8bicZa/piJU4kaBdPR/cl4UNwa2oacXGHBPRuz7U+i3afcjMdC0bAxO
 t72w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:in-reply-to:cc:to:message-id
 :mime-version:content-transfer-encoding;
 bh=tk0l43v3xQFR8poBPdR9szu82nMHPp8tNpA1HzPeXDY=;
 b=qSfBKdL3gELRWbfmAh+hj2qNzrGT9jUGwccK1r93S6ULdfmuje+fnYoLPP+7Yjt2Vq
 DYBPSO8Eg1UyscpIiLIetdSzN5jNz/wLcXIOLMIhSRA2gHI3/whKmRp5W8AnUKj2IaKK
 l5rDM9ayW2lpAP8MUYdt5ZHbMSE5ZpXVQ8tyMfDB26asDv9836CHKnAoqnK8Qrhgxu8g
 Mg99gDqjCIpv8gooQ4sMj6RRScPYluyDvdSiU2eYVxltzTuTHM1RWszZ4ym+cGEB6Ifb
 S8pZNn6lqiEMSEc3Y74RiQ2U5QmxnsuovBcG3RdOJH+bg10RxSY3MEQZZe5jEgSqRlWw
 8i2A==
X-Gm-Message-State: APjAAAUnmDW2Goo4JTht3/JZvKhFlAweHnVqIm397zvqqhqkhZ617EKF
 XNtPQdG2QjMYrCSFsQN9yT4TVg==
X-Google-Smtp-Source: APXvYqyzdXG/BqcQ8L0TqiD8c3lnOD3dMhQrVlyNFcQGHDqUdDrBadenq6Sr4XrU4rt60XjLojIGGQ==
X-Received: by 2002:aa7:8a83:: with SMTP id a3mr5042698pfc.54.1575485524169;
 Wed, 04 Dec 2019 10:52:04 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:7f69:cd98:a2a2:a03d])
 by smtp.gmail.com with ESMTPSA id 2sm8284963pgo.79.2019.12.04.10.52.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 10:52:03 -0800 (PST)
Date: Wed, 04 Dec 2019 10:52:03 -0800 (PST)
X-Google-Original-Date: Wed, 04 Dec 2019 10:51:52 PST (-0800)
From: Palmer Dabbelt <palmerdabbelt@google.com>
X-Google-Original-From: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH v5 4/4] RISC-V: Implement new SBI v0.2 extensions
In-Reply-To: <20191126190503.19303-5-atish.patra@wdc.com>
To: Atish Patra <Atish.Patra@wdc.com>
Message-ID: <mhng-2ab00082-1bc9-47bd-907a-3caeda9e7502@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_105207_670831_10990703 
X-CRM114-Status: GOOD (  23.04  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
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
Cc: aou@eecs.berkeley.edu, alexios.zavras@intel.com, anup@brainfault.org,
 linux-kernel@vger.kernel.org, rppt@linux.ibm.com,
 Atish Patra <Atish.Patra@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, tglx@linutronix.de, han_mao@c-sky.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 26 Nov 2019 11:05:03 PST (-0800), Atish Patra wrote:
> Few v0.1 SBI calls are being replaced by new SBI calls that follows
> v0.2 calling convention. The specification changes can be found at
>
> riscv/riscv-sbi-doc#27
>
> Implement the replacement extensions and few additional new SBI
> function calls that makes way for a better SBI interface in future.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> Reviewed-by: Anup Patel <anup@brainfault.org>
> ---
>  arch/riscv/include/asm/sbi.h |  35 ++++++
>  arch/riscv/kernel/sbi.c      | 208 +++++++++++++++++++++++++++++++++--
>  2 files changed, 236 insertions(+), 7 deletions(-)
>
> diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
> index cc82ae63f8e0..54ba9eebec11 100644
> --- a/arch/riscv/include/asm/sbi.h
> +++ b/arch/riscv/include/asm/sbi.h
> @@ -22,6 +22,9 @@ enum sbi_ext_id {
>  	SBI_EXT_0_1_SHUTDOWN = 0x8,
>  #endif
>  	SBI_EXT_BASE = 0x10,
> +	SBI_EXT_TIME = 0x54494D45,
> +	SBI_EXT_IPI = 0x735049,
> +	SBI_EXT_RFENCE = 0x52464E43,
>  };
>
>  enum sbi_ext_base_fid {
> @@ -34,6 +37,24 @@ enum sbi_ext_base_fid {
>  	SBI_BASE_GET_MIMPID,
>  };
>
> +enum sbi_ext_time_fid {
> +	SBI_EXT_TIME_SET_TIMER = 0,
> +};
> +
> +enum sbi_ext_ipi_fid {
> +	SBI_EXT_IPI_SEND_IPI = 0,
> +};
> +
> +enum sbi_ext_rfence_fid {
> +	SBI_EXT_RFENCE_REMOTE_FENCE_I = 0,
> +	SBI_EXT_RFENCE_REMOTE_SFENCE_VMA,
> +	SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID,
> +	SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA,
> +	SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA_VMID,
> +	SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA,
> +	SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID,
> +};
> +
>  #define SBI_SPEC_VERSION_DEFAULT	0x1
>  #define SBI_SPEC_VERSION_MAJOR_OFFSET	24
>  #define SBI_SPEC_VERSION_MAJOR_MASK	0x7f
> @@ -74,6 +95,20 @@ void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
>  				unsigned long start,
>  				unsigned long size,
>  				unsigned long asid);
> +int sbi_remote_hfence_gvma(const unsigned long *hart_mask,
> +			   unsigned long start,
> +			   unsigned long size);
> +int sbi_remote_hfence_gvma_vmid(const unsigned long *hart_mask,
> +				unsigned long start,
> +				unsigned long size,
> +				unsigned long vmid);
> +int sbi_remote_hfence_vvma(const unsigned long *hart_mask,
> +			   unsigned long start,
> +			   unsigned long size);
> +int sbi_remote_hfence_vvma_asid(const unsigned long *hart_mask,
> +				unsigned long start,
> +				unsigned long size,
> +				unsigned long asid);
>  int sbi_probe_extension(long ext);
>
>  /* Check if current SBI specification version is 0.1 or not */
> diff --git a/arch/riscv/kernel/sbi.c b/arch/riscv/kernel/sbi.c
> index ee710bfe0b0e..af3d5f8d8af7 100644
> --- a/arch/riscv/kernel/sbi.c
> +++ b/arch/riscv/kernel/sbi.c
> @@ -205,6 +205,101 @@ static int __sbi_rfence_v01(unsigned long ext, unsigned long fid,
>  }
>  #endif /* CONFIG_RISCV_SBI_V01 */
>
> +static void __sbi_set_timer_v02(uint64_t stime_value)
> +{
> +#if __riscv_xlen == 32
> +	sbi_ecall(SBI_EXT_TIME, SBI_EXT_TIME_SET_TIMER, stime_value,
> +			  stime_value >> 32, 0, 0, 0, 0);
> +#else
> +	sbi_ecall(SBI_EXT_TIME, SBI_EXT_TIME_SET_TIMER, stime_value, 0,
> +		  0, 0, 0, 0);
> +#endif
> +}
> +
> +static int __sbi_send_ipi_v02(const unsigned long *hart_mask)
> +{
> +	unsigned long hmask_val;
> +	struct sbiret ret = {0};
> +	int result;
> +
> +	if (!hart_mask)
> +		hmask_val = *(cpumask_bits(cpu_online_mask));
> +	else
> +		hmask_val = *hart_mask;
> +
> +	ret = sbi_ecall(SBI_EXT_IPI, SBI_EXT_IPI_SEND_IPI, hmask_val,
> +			0, 0, 0, 0, 0);
> +	if (ret.error) {
> +		pr_err("%s: failed with error [%d]\n", __func__,
> +			sbi_err_map_linux_errno(ret.error));
> +		result = ret.error;
> +	} else
> +		result = ret.value;
> +
> +	return result;
> +}
> +
> +static int __sbi_rfence_v02(unsigned long extid, unsigned long fid,
> +			     const unsigned long *hart_mask,
> +			     unsigned long hbase, unsigned long start,
> +			     unsigned long size, unsigned long arg4,
> +			     unsigned long arg5)
> +{
> +	unsigned long hmask_val;
> +	struct sbiret ret = {0};
> +	int result;
> +	unsigned long ext = SBI_EXT_RFENCE;
> +
> +	if (!hart_mask)
> +		hmask_val = *(cpumask_bits(cpu_online_mask));

This needs to map from CPUs to harts.  Even if we're frobbing all of the harts
they might still be different.

> +	else
> +		hmask_val = *hart_mask;
> +
> +	switch (fid) {
> +	case SBI_EXT_RFENCE_REMOTE_FENCE_I:
> +		ret = sbi_ecall(ext, fid, hmask_val, 0, 0, 0, 0, 0);
> +		break;
> +	case SBI_EXT_RFENCE_REMOTE_SFENCE_VMA:
> +		ret = sbi_ecall(ext, fid, hmask_val, 0, start,
> +				size, 0, 0);
> +		break;
> +	case SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID:
> +		ret = sbi_ecall(ext, fid, hmask_val, 0, start,
> +				size, arg4, 0);
> +		break;
> +	/*TODO: Handle non zero hbase cases */
> +	case SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA:
> +		ret = sbi_ecall(ext, fid, hmask_val, 0, start,
> +				size, 0, 0);
> +		break;
> +	case SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA_VMID:
> +		ret = sbi_ecall(ext, fid, hmask_val, 0, start,
> +				size, arg4, 0);
> +		break;
> +	case SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA:
> +		ret = sbi_ecall(ext, fid, hmask_val, 0, start,
> +				size, 0, 0);
> +		break;
> +	case SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID:
> +		ret = sbi_ecall(ext, fid, hmask_val, 0, start,
> +				size, arg4, 0);
> +		break;
> +	default:
> +		pr_err("unknown function ID [%lu] for SBI extension [%lu]\n",
> +			fid, ext);
> +		result = -EINVAL;
> +	}
> +
> +	if (ret.error) {
> +		pr_err("%s: failed with error [%d]\n", __func__,
> +			sbi_err_map_linux_errno(ret.error));
> +		result = ret.error;
> +	} else
> +		result = ret.value;
> +
> +	return result;
> +}
> +
>  /**
>   * sbi_set_timer() - Program the timer for next timer event.
>   * @stime_value: The value after which next timer event should fire.
> @@ -237,7 +332,7 @@ EXPORT_SYMBOL(sbi_send_ipi);
>   */
>  void sbi_remote_fence_i(const unsigned long *hart_mask)
>  {
> -	__sbi_rfence(SBI_EXT_0_1_REMOTE_FENCE_I, 0,
> +	__sbi_rfence(SBI_EXT_0_1_REMOTE_FENCE_I, SBI_EXT_RFENCE_REMOTE_FENCE_I,
>  		     hart_mask, 0, 0, 0, 0, 0);
>  }
>  EXPORT_SYMBOL(sbi_remote_fence_i);
> @@ -255,7 +350,8 @@ void sbi_remote_sfence_vma(const unsigned long *hart_mask,
>  					 unsigned long start,
>  					 unsigned long size)
>  {
> -	__sbi_rfence(SBI_EXT_0_1_REMOTE_SFENCE_VMA, 0,
> +	__sbi_rfence(SBI_EXT_0_1_REMOTE_SFENCE_VMA,
> +		     SBI_EXT_RFENCE_REMOTE_SFENCE_VMA,
>  		     hart_mask, 0, start, size, 0, 0);
>  }
>  EXPORT_SYMBOL(sbi_remote_sfence_vma);
> @@ -276,11 +372,93 @@ void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
>  					      unsigned long size,
>  					      unsigned long asid)
>  {
> -	__sbi_rfence(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID, 0,
> +	__sbi_rfence(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID,
> +		     SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID,
>  		     hart_mask, 0, start, size, asid, 0);
>  }
>  EXPORT_SYMBOL(sbi_remote_sfence_vma_asid);
>
> +/**
> + * sbi_remote_hfence_gvma() - Execute HFENCE.GVMA instructions on given remote
> + *			   harts for the specified guest physical address range.
> + * @hart_mask: A cpu mask containing all the target harts.
> + * @start: Start of the guest physical address
> + * @size: Total size of the guest physical address range.
> + *
> + * Return: None
> + */
> +int sbi_remote_hfence_gvma(const unsigned long *hart_mask,
> +					 unsigned long start,
> +					 unsigned long size)
> +{
> +	return __sbi_rfence(SBI_EXT_RFENCE, SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA,
> +			    hart_mask, 0, start, size, 0, 0);
> +}
> +EXPORT_SYMBOL_GPL(sbi_remote_hfence_gvma);
> +
> +/**
> + * sbi_remote_hfence_gvma_vmid() - Execute HFENCE.GVMA instructions on given
> + * remote harts for a guest physical address range belonging to a specific VMID.
> + *
> + * @hart_mask: A cpu mask containing all the target harts.
> + * @start: Start of the guest physical address
> + * @size: Total size of the guest physical address range.
> + * @vmid: The value of guest ID (VMID).
> + *
> + * Return: 0 if success, Error otherwise.
> + */
> +int sbi_remote_hfence_gvma_vmid(const unsigned long *hart_mask,
> +					      unsigned long start,
> +					      unsigned long size,
> +					      unsigned long vmid)
> +{
> +	return __sbi_rfence(SBI_EXT_RFENCE,
> +			    SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA_VMID,
> +			    hart_mask, 0, start, size, vmid, 0);
> +}
> +EXPORT_SYMBOL(sbi_remote_hfence_gvma_vmid);
> +
> +/**
> + * sbi_remote_hfence_vvma() - Execute HFENCE.VVMA instructions on given remote
> + *			     harts for the current guest virtual address range.
> + * @hart_mask: A cpu mask containing all the target harts.
> + * @start: Start of the current guest virtual address
> + * @size: Total size of the current guest virtual address range.
> + *
> + * Return: None
> + */
> +int sbi_remote_hfence_vvma(const unsigned long *hart_mask,
> +					 unsigned long start,
> +					 unsigned long size)
> +{
> +	return __sbi_rfence(SBI_EXT_RFENCE, SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA,
> +			    hart_mask, 0, start, size, 0, 0);
> +}
> +EXPORT_SYMBOL(sbi_remote_hfence_vvma);
> +
> +/**
> + * sbi_remote_hfence_vvma_asid() - Execute HFENCE.VVMA instructions on given
> + * remote harts for current guest virtual address range belonging to a specific
> + * ASID.
> + *
> + * @hart_mask: A cpu mask containing all the target harts.
> + * @start: Start of the current guest virtual address
> + * @size: Total size of the current guest virtual address range.
> + * @asid: The value of address space identifier (ASID).
> + *
> + * Return: None
> + */
> +int sbi_remote_hfence_vvma_asid(const unsigned long *hart_mask,
> +					      unsigned long start,
> +					      unsigned long size,
> +					      unsigned long asid)
> +{
> +	return __sbi_rfence(SBI_EXT_RFENCE,
> +			    SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID,
> +			    hart_mask, 0, start, size, asid, 0);
> +}
> +EXPORT_SYMBOL(sbi_remote_hfence_vvma_asid);
> +
>  /**
>   * sbi_probe_extension() - Check if an SBI extension ID is supported or not.
>   * @extid: The extension ID to be probed.
> @@ -356,11 +534,27 @@ int __init sbi_init(void)
>  	if (!sbi_spec_is_0_1()) {
>  		pr_info("SBI implementation ID=0x%lx Version=0x%lx\n",
>  			sbi_get_firmware_id(), sbi_get_firmware_version());
> +		if (sbi_probe_extension(SBI_EXT_TIME) > 0) {
> +			__sbi_set_timer = __sbi_set_timer_v02;
> +			pr_info("SBI v0.2 TIME extension detected\n");
> +		} else
> +			__sbi_set_timer = __sbi_set_timer_dummy_warn;
> +		if (sbi_probe_extension(SBI_EXT_IPI) > 0) {
> +			__sbi_send_ipi	= __sbi_send_ipi_v02;
> +			pr_info("SBI v0.2 IPI extension detected\n");
> +		} else
> +			__sbi_send_ipi = __sbi_send_ipi_dummy_warn;
> +		if (sbi_probe_extension(SBI_EXT_RFENCE) > 0) {
> +			__sbi_rfence	= __sbi_rfence_v02;
> +			pr_info("SBI v0.2 RFENCE extension detected\n");
> +		} else
> +			__sbi_rfence	= __sbi_rfence_dummy_warn;
> +
> +	} else {
> +		__sbi_set_timer = __sbi_set_timer_v01;
> +		__sbi_send_ipi	= __sbi_send_ipi_v01;
> +		__sbi_rfence	= __sbi_rfence_v01;
>  	}
>
> -	__sbi_set_timer = __sbi_set_timer_v01;
> -	__sbi_send_ipi	= __sbi_send_ipi_v01;
> -	__sbi_rfence	= __sbi_rfence_v01;
> -
>  	return 0;
>  }

This will have to change around when disentangling the legacy vs v0.1 stuff.

