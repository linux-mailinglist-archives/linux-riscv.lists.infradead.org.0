Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF292888DB
	for <lists+linux-riscv@lfdr.de>; Sat, 10 Aug 2019 08:37:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ahLoLJMD+mv/2UdaKwuOsKrtNnTY2iPVmFONtdPew8=; b=jIngrVOGEwEiLy
	4qiuVHVrmlLpHgVdME11pnrafJ87/RXFKuRME0SmIZBSu9kZzYsPJmDtjPac7V+nyz4m49zzyoKJq
	e4eW7om52CWCuLaaWUKRIPmfoGSd+FJ2enAVekyTBAojAtjo+x0ps5d4KUyLcYXbhxlBXkhiY+2d2
	0bGTNqfBbD/ThqQJEzeVt6AMiN1m8qZcumnTyUHD+Qbt3AY+zzwRjbOrDJIdYq6iDu+PqaNoJ1oyz
	z6ikNQJsTTU4xdcjFJcDc/iNoPmN3Z2mYOxhJjlyCV0+uiC7qCLe9ZhLzFrOiLj2YavU7kb1TYsya
	qcCgsFSaPX+XJXr9Avpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwL0U-0003ho-KI; Sat, 10 Aug 2019 06:37:38 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwL0Q-0003hS-Et
 for linux-riscv@lists.infradead.org; Sat, 10 Aug 2019 06:37:36 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 465C8S5vmhz1rJCf;
 Sat, 10 Aug 2019 08:37:28 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 465C8R6rLvz1qqkr;
 Sat, 10 Aug 2019 08:37:27 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id rgO-e_q9Of7V; Sat, 10 Aug 2019 08:37:26 +0200 (CEST)
X-Auth-Info: MGf3vtvDZUlt9nH4JPNPyfNH0Crfs9J8zNlWOKuASYmkGDQGdc/2upzcT0jPFvb5
Received: from linux.local (ppp-46-244-179-104.dynamic.mnet-online.de
 [46.244.179.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Sat, 10 Aug 2019 08:37:26 +0200 (CEST)
Received: by linux.local (Postfix, from userid 501)
 id 88AD01E5386; Sat, 10 Aug 2019 08:37:21 +0200 (CEST)
From: Andreas Schwab <schwab@linux-m68k.org>
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH] RISC-V: Issue a local tlb flush if possible.
References: <20190810014309.20838-1-atish.patra@wdc.com>
X-Yow: Do I hear th' SPINNING of various WHIRRING, ROUND, and WARM
 WHIRLOMATICS?!
Date: Sat, 10 Aug 2019 08:37:21 +0200
In-Reply-To: <20190810014309.20838-1-atish.patra@wdc.com> (Atish Patra's
 message of "Fri, 9 Aug 2019 18:43:09 -0700")
Message-ID: <m2r25t8r1a.fsf@linux-m68k.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2.90 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_233734_648155_ACF7B508 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Albert Ou <aou@eecs.berkeley.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Anup Patel <anup.patel@wdc.com>, linux-kernel@vger.kernel.org,
 Alexios Zavras <alexios.zavras@intel.com>, Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Aug 09 2019, Atish Patra <atish.patra@wdc.com> wrote:

> @@ -46,14 +47,38 @@ static inline void remote_sfence_vma(struct cpumask *cmask, unsigned long start,
>  				     unsigned long size)
>  {
>  	struct cpumask hmask;
> +	struct cpumask tmask;
> +	int cpuid = smp_processor_id();
>  
>  	cpumask_clear(&hmask);
> -	riscv_cpuid_to_hartid_mask(cmask, &hmask);
> -	sbi_remote_sfence_vma(hmask.bits, start, size);
> +	cpumask_clear(&tmask);
> +
> +	if (cmask)
> +		cpumask_copy(&tmask, cmask);
> +	else
> +		cpumask_copy(&tmask, cpu_online_mask);
> +
> +	if (cpumask_test_cpu(cpuid, &tmask)) {
> +		/* Save trap cost by issuing a local tlb flush here */
> +		if ((start == 0 && size == -1) || (size > PAGE_SIZE))
> +			local_flush_tlb_all();
> +		else if (size == PAGE_SIZE)
> +			local_flush_tlb_page(start);
> +		cpumask_clear_cpu(cpuid, &tmask);
> +	} else if (cpumask_empty(&tmask)) {
> +		/* cpumask is empty. So just do a local flush */
> +		local_flush_tlb_all();
> +		return;
> +	}
> +
> +	if (!cpumask_empty(&tmask)) {
> +		riscv_cpuid_to_hartid_mask(&tmask, &hmask);
> +		sbi_remote_sfence_vma(hmask.bits, start, size);
> +	}
>  }

I think it's becoming too big to be inline.

Andreas.

-- 
Andreas Schwab, schwab@linux-m68k.org
GPG Key fingerprint = 7578 EB47 D4E5 4D69 2510  2552 DF73 E780 A9DA AEC1
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
