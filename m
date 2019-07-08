Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB0B61BAF
	for <lists+linux-riscv@lfdr.de>; Mon,  8 Jul 2019 10:27:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=WTvloNKp0fztIhZHZUL8DHLzAV6eE1nxmRF3gAScLT4=; b=fSbNnrynCBkW/BL3yTCB38TP7
	YMqXqmtFrr58G0RGHlv36G7XhjF8svRwj3BZKDFyiweINM02sqykChdsbg5WKkmwwcVXUN+txOZR9
	ku+mDY6mUtmoQCK7uTN3Lp7msDkK65342qNlW+/RFjhR72ywW4wBJFJ4u2mxtVW3Ku2c/fup+mvUs
	IgCZRDGGFHJmVOzR1AlNMxqZqViRWlHhTUsNE6T7VSSVn6nr4RpS8G6luSj/+oFr1E2IJTAEqaVGn
	TuLCv1Px2HvUqEtVie+mZ8f7trrSZtZ5b/Gyq48d/1ZIj8LYKbDO0BVXgQZ94gAgMdJG3Yi6/hDMP
	T611r9f/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkOyz-0002XU-Ob; Mon, 08 Jul 2019 08:26:45 +0000
Received: from mail-lj1-f193.google.com ([209.85.208.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkOyu-0002Wk-Qh
 for linux-riscv@lists.infradead.org; Mon, 08 Jul 2019 08:26:42 +0000
Received: by mail-lj1-f193.google.com with SMTP id d24so5875507ljg.8
 for <linux-riscv@lists.infradead.org>; Mon, 08 Jul 2019 01:26:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=H9Jhir71IPIyzQGq+vtRBmdG8XRrnz6d01HWPy/tDXY=;
 b=jG4h6M2OTP+Jf5mjdfHGSQFfETaq1pkX4cHOMg5K18m2ViDU5gP2XnAZ/ESd6g/Y7N
 djzcmrwFhQkVBS584fhuFHplfBxO8yDUTla6hrNUF5CYqm2me8BY3IEdLjQOHgiiJRzP
 eLpy8h2IlCSXkr4fgOGeLLzFrFH8iQ7884/obhQBdJzGkYMTl5L2weGnnvdCuLAdoZrS
 9BHHm3QpyfMxhLn0GfPo7AgviD8XdDVCCCIXywAZczko7RywhvuJ+tlamlYNLDWlTqPl
 pYtUijjpoLT+QrYnDrZrxPXcchZEU7dd0gXAXI77N+A6J/UgggL0awZBXZyqUU2fb/Zs
 dj2w==
X-Gm-Message-State: APjAAAVbyDYNxPXLp77Ffy7gdRGeEhFLdyoeAwzcBwndQ0/JMz//Mpvb
 iOy9nbp/CVDtCa9Wb/PkIrhJaQ==
X-Google-Smtp-Source: APXvYqxXI/Ygue1Ac50jCKVSmx6Cuo5Nc2NT6pzqbq/Iw8sN98mexSHmndyMkZYR9vs57B/cyO2EhQ==
X-Received: by 2002:a2e:80c8:: with SMTP id r8mr9586901ljg.168.1562574394354; 
 Mon, 08 Jul 2019 01:26:34 -0700 (PDT)
Received: from localhost ([134.17.27.127])
 by smtp.gmail.com with ESMTPSA id b27sm1558817ljb.11.2019.07.08.01.26.33
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 08 Jul 2019 01:26:33 -0700 (PDT)
Date: Mon, 08 Jul 2019 01:26:33 -0700 (PDT)
X-Google-Original-Date: Mon, 08 Jul 2019 01:23:27 PDT (-0700)
Subject: Re: [PATCH 16/17] riscv: clear the instruction cache and all
 registers when booting
In-Reply-To: <78919862d11f6d56446f8fffd8a1a8c601ea5c32.camel@wdc.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: Atish Patra <Atish.Patra@wdc.com>
Message-ID: <mhng-3f43f4b8-473d-429d-9a09-12d3542e33bc@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_012640_860543_14F4B5E6 
X-CRM114-Status: GOOD (  15.92  )
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 01 Jul 2019 14:26:18 PDT (-0700), Atish Patra wrote:
> On Mon, 2019-06-24 at 07:43 +0200, Christoph Hellwig wrote:
>> When we get booted we want a clear slate without any leaks from
>> previous
>> supervisors or the firmware.  Flush the instruction cache and then
>> clear
>> all registers to known good values.  This is really important for the
>> upcoming nommu support that runs on M-mode, but can't really harm
>> when
>> running in S-mode either.
> 
> That means it should be done for S-mode as well. Right ?
> I see the reset code is enabled only for M-mode only.
> 
>>   Vaguely based on the concepts from opensbi.
>> 
>> Signed-off-by: Christoph Hellwig <hch@lst.de>
>> ---
>>  arch/riscv/kernel/head.S | 85
>> ++++++++++++++++++++++++++++++++++++++++
>>  1 file changed, 85 insertions(+)
>> 
>> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
>> index a4c170e41a34..74feb17737b4 100644
>> --- a/arch/riscv/kernel/head.S
>> +++ b/arch/riscv/kernel/head.S
>> @@ -11,6 +11,7 @@
>>  #include <asm/thread_info.h>
>>  #include <asm/page.h>
>>  #include <asm/csr.h>
>> +#include <asm/hwcap.h>
>>  
>>  __INIT
>>  ENTRY(_start)
>> @@ -19,6 +20,12 @@ ENTRY(_start)
>>  	csrw CSR_XIP, zero
>>  
>>  #ifdef CONFIG_M_MODE
>> +	/* flush the instruction cache */
>> +	fence.i
>> +
>> +	/* Reset all registers except ra, a0, a1 */
>> +	call reset_regs
>> +
>>  	/*
>>  	 * The hartid in a0 is expected later on, and we have no
>> firmware
>>  	 * to hand it to us.
>> @@ -168,6 +175,84 @@ relocate:
>>  	j .Lsecondary_park
>>  END(_start)
>>  
>> +#ifdef CONFIG_M_MODE
>> +ENTRY(reset_regs)
>> +	li	sp, 0
>> +	li	gp, 0
>> +	li	tp, 0
>> +	li	t0, 0
>> +	li	t1, 0
>> +	li	t2, 0
>> +	li	s0, 0
>> +	li	s1, 0
>> +	li	a2, 0
>> +	li	a3, 0
>> +	li	a4, 0
>> +	li	a5, 0
>> +	li	a6, 0
>> +	li	a7, 0
>> +	li	s2, 0
>> +	li	s3, 0
>> +	li	s4, 0
>> +	li	s5, 0
>> +	li	s6, 0
>> +	li	s7, 0
>> +	li	s8, 0
>> +	li	s9, 0
>> +	li	s10, 0
>> +	li	s11, 0
>> +	li	t3, 0
>> +	li	t4, 0
>> +	li	t5, 0
>> +	li	t6, 0
>> +	csrw	sscratch, 0
>> +
>> +#ifdef CONFIG_FPU
>> +	csrr	t0, misa
>> +	andi	t0, t0, (COMPAT_HWCAP_ISA_F | COMPAT_HWCAP_ISA_D)
>> +	bnez	t0, .Lreset_regs_done
>> +
>> +	li	t1, SR_FS
>> +	csrs	sstatus, t1

You need to check that the write stuck and branch around the FP instructions.
Specifically, CONFIG_FPU means there may be an FPU, not there's definately an
FPU.  You should also turn the FPU back off after zeroing the state.

>> +	fmv.s.x	f0, zero
>> +	fmv.s.x	f1, zero
>> +	fmv.s.x	f2, zero
>> +	fmv.s.x	f3, zero
>> +	fmv.s.x	f4, zero
>> +	fmv.s.x	f5, zero
>> +	fmv.s.x	f6, zero
>> +	fmv.s.x	f7, zero
>> +	fmv.s.x	f8, zero
>> +	fmv.s.x	f9, zero
>> +	fmv.s.x	f10, zero
>> +	fmv.s.x	f11, zero
>> +	fmv.s.x	f12, zero
>> +	fmv.s.x	f13, zero
>> +	fmv.s.x	f14, zero
>> +	fmv.s.x	f15, zero
>> +	fmv.s.x	f16, zero
>> +	fmv.s.x	f17, zero
>> +	fmv.s.x	f18, zero
>> +	fmv.s.x	f19, zero
>> +	fmv.s.x	f20, zero
>> +	fmv.s.x	f21, zero
>> +	fmv.s.x	f22, zero
>> +	fmv.s.x	f23, zero
>> +	fmv.s.x	f24, zero
>> +	fmv.s.x	f25, zero
>> +	fmv.s.x	f26, zero
>> +	fmv.s.x	f27, zero
>> +	fmv.s.x	f28, zero
>> +	fmv.s.x	f29, zero
>> +	fmv.s.x	f30, zero
>> +	fmv.s.x	f31, zero
>> +	csrw	fcsr, 0
>> +#endif /* CONFIG_FPU */
>> +.Lreset_regs_done:
>> +	ret
>> +END(reset_regs)
>> +#endif /* CONFIG_M_MODE */
>> +
>>  __PAGE_ALIGNED_BSS
>>  	/* Empty zero page */
>>  	.balign PAGE_SIZE
> 
> -- 
> Regards,
> Atish

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
