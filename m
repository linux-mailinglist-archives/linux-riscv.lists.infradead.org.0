Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E4A958C3
	for <lists+linux-riscv@lfdr.de>; Tue, 20 Aug 2019 09:46:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BR47NzZ3Ba5aWkYx6BIAicC988fwJAV/dZORnWKI4tM=; b=XXaA4Vf1tatn6z
	9Zg+rqpvOOKCUAzvzC90gT3T4wfbfQRwWpfoDJtiSWmO/kazwhC33Dwgo+dOkVXgoTuRKyFGVx6VX
	YYwpXXlR3Mychu91Yx32rZE2CafYHVGqoOk/La+vwGzdNlVF+P/yRXxn6MX7cSAOdMaX68cilkOgW
	FzGhOZtgF+0QDF2pDgrDRNpxytdU2dQGAsaOtUvnyZv6ZeRucGG+L/xS2TMIODPG/Bx2ysdAllOJp
	/Vjwh1VOhHMyUztddXn5duw3a6GILZs0w/jrKJHI3FvaOXCZ+xdCyShBeCvTn4tOblEakcu4svCuy
	ya/XDeSMcpkTReXOEU9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzyqj-0004m6-LU; Tue, 20 Aug 2019 07:46:37 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzyqW-0004gH-40
 for linux-riscv@lists.infradead.org; Tue, 20 Aug 2019 07:46:26 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 46CNCL0NxNz1rK4l;
 Tue, 20 Aug 2019 09:46:22 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 46CNCK6d0dz1qqkQ;
 Tue, 20 Aug 2019 09:46:21 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id h_MA-htdbiCz; Tue, 20 Aug 2019 09:46:21 +0200 (CEST)
X-Auth-Info: prE92elRMKSf1/jqoEhkE2DLPPA8p3cg3p+PYrMx3HIkJWlUjiRKFPESlmwx3WsX
Received: from hawking (nat.nue.novell.com [195.135.221.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 20 Aug 2019 09:46:21 +0200 (CEST)
From: Andreas Schwab <schwab@linux-m68k.org>
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [v2 PATCH] RISC-V: Optimize tlb flush path.
References: <20190820004735.18518-1-atish.patra@wdc.com>
X-Yow: When you get your PH.D. will you get able to work at BURGER KING?
Date: Tue, 20 Aug 2019 09:46:20 +0200
In-Reply-To: <20190820004735.18518-1-atish.patra@wdc.com> (Atish Patra's
 message of "Mon, 19 Aug 2019 17:47:35 -0700")
Message-ID: <mvmh86cl1o3.fsf@linux-m68k.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2.90 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_004624_665795_8ED62414 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 "hch@infradead.org" <hch@infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Aug 19 2019, Atish Patra <atish.patra@wdc.com> wrote:

> @@ -42,20 +43,44 @@ static inline void flush_tlb_range(struct vm_area_struct *vma,
>  
>  #include <asm/sbi.h>
>  
> -static inline void remote_sfence_vma(struct cpumask *cmask, unsigned long start,
> -				     unsigned long size)
> +static void __riscv_flush_tlb(struct cpumask *cmask, unsigned long start,
> +			      unsigned long size)

cmask can be const.

>  {
>  	struct cpumask hmask;
> +	unsigned int hartid;
> +	unsigned int cpuid;
>  
>  	cpumask_clear(&hmask);
> +
> +	if (!cmask) {
> +		riscv_cpuid_to_hartid_mask(cpu_online_mask, &hmask);
> +		goto issue_sfence;
> +	}

Wouldn't it make sense to fall through to doing a local flush here?

	if (!cmask)
		cmask = cpu_online_mask;

Andreas.

-- 
Andreas Schwab, schwab@linux-m68k.org
GPG Key fingerprint = 7578 EB47 D4E5 4D69 2510  2552 DF73 E780 A9DA AEC1
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
