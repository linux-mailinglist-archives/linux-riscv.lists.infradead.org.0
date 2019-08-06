Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41B4C828AE
	for <lists+linux-riscv@lfdr.de>; Tue,  6 Aug 2019 02:25:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HBN02z2l6k29DI/d8Rt9LLA6fw/QMEiITbgxS6AggKI=; b=NNGSUt7dh3r6RX
	6qbIUmae40Qeh/s0kc+mUYZLxqfXhRUTr7b4rSUZNpennH3bEFD4OEzQQuNi8pl1BoeG+hzARgkim
	10adMM772++56hY+hEvXbsqiJOUHiu6qbKtboF1nKnnAolOb2l7WNCFWsWPkUJ37YROjaifZyLleK
	7azRlRbbvthM6oVw+fRK1jpyaHD0R9kd8/590TyvRwjfmR4tKx1yYV0epmSe2UDtwXLCQN5/cjNQv
	ZE3icVgB2dxkqRnXcdyfYeQQB+bNoAE6b4p0rATH3iHRvLxvwPSeeUFUFLwalDbATMzVknEcMpi0T
	G0zW0k5FOrxdsOq4EnRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hunI2-0006ro-MJ; Tue, 06 Aug 2019 00:25:22 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hunHz-0006rB-87
 for linux-riscv@lists.infradead.org; Tue, 06 Aug 2019 00:25:21 +0000
Received: by mail-ot1-x342.google.com with SMTP id l15so30998374oth.7
 for <linux-riscv@lists.infradead.org>; Mon, 05 Aug 2019 17:25:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=23tGp7NVxClsWCeh1Ysl13bLUR+QGxFMrqh95tQ3ASI=;
 b=LMJqwYkjJxK0+8TdX2VwTHwh0uAVKw5DiH3XaHeDkFIQeu/DqTM2ChQDm0od2WpPPd
 NlSoRcRc49yftRgys/49qNAUumPZVFaAL1lCGNQ345fIUovQ3garTltvsowKh03pAd8p
 y4QOs5PpW9UUUTepMgqGkGG20r/XiXBQcWA6Q4De5z9PdXXhX/LoIb4F6xaZmqChTrO5
 zYFuVB5qxpkD9658ufYmYsrJU+qd3/RNNIvmb8Tb2P52TLVXnvRGN+zl2ouNn5O19E4x
 y6mTVHmroyHEo6ZCW9YhPCLN4visi/Ej1rzEmAZ/DwCH1A7xZndI2qDhK4JJb+DxGHzY
 D57w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=23tGp7NVxClsWCeh1Ysl13bLUR+QGxFMrqh95tQ3ASI=;
 b=Ok/QIA/ePdGmJG+W4ZaaS8L0OxuqqjUWNCb3Eu/+pAYP+2SLygnAyiV2/OsZUpW2ih
 DGlQj1F3NTwdA9EjpOvg02bA+09i3t+bWQMTReBemmNp6xaHFLCQdCWKJCVBTKcYXCOJ
 8vZN8q4hdoBpNmW1RWZji2DIDw/u/ZrZSa1waCmFrZQ/j1yrQcfFhgbAV/aJ/XhpQGu/
 Up3Jqv7Ao+hvu5qAh05lswUhQw+/ZX2Y/+fRSGlS8YJkdeyoDZZ5t/jS0Z42ZuqNXn7r
 DZpxHcBGt+RMoXgGGTU4nuy5i+ZMtQTpb26H41pYAW3x6Va+zjbv9p4mhJbOLoYIpU5g
 zWmg==
X-Gm-Message-State: APjAAAUK07kplbDdEZrCJyeriQMjfO25Uqz0qMxS0dKgL2w+w1myJf2M
 Le/kj3k102bktoweNBXqIdFkiQ==
X-Google-Smtp-Source: APXvYqx/P77BXqMMx8nzB1EJxnUscaWE6vwnRzDEG5gOSqX8Cc4ZHImlKrddBmxURIcCydXlb7VIgA==
X-Received: by 2002:a5d:9703:: with SMTP id h3mr709747iol.152.1565051117512;
 Mon, 05 Aug 2019 17:25:17 -0700 (PDT)
Received: from [192.168.1.138] ([216.160.37.230])
 by smtp.gmail.com with ESMTPSA id d25sm70589333iom.52.2019.08.05.17.25.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 17:25:16 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: Random memory corruption with v5.2
From: Troy Benjegerdes <troy.benjegerdes@sifive.com>
In-Reply-To: <45823bccd515273e08bd2e0c634b0b207e60db9c.camel@wdc.com>
Date: Mon, 5 Aug 2019 19:25:15 -0500
Message-Id: <5A726234-65BA-4248-8D07-CDADDAE44E2D@sifive.com>
References: <mvm8sshcdwc.fsf@suse.de>
 <CAEn-LTpM-0TMxkNNh6nnLH9Bnr9Zm+VFLf=z1y9sER6RXrQooQ@mail.gmail.com>
 <mvm1ry8au3f.fsf@suse.de>
 <alpine.DEB.2.21.9999.1907301709510.4874@viisi.sifive.com>
 <mvmwofw68ji.fsf@suse.de>
 <CAAhSdy0ZPk1So_ieahn5dVaye1WajRmwkYHhSox4FcvuOuZchw@mail.gmail.com>
 <mvmmugn4sd4.fsf@suse.de> <mvmimrb4r5q.fsf@suse.de>
 <45823bccd515273e08bd2e0c634b0b207e60db9c.camel@wdc.com>
To: Atish Patra <Atish.Patra@wdc.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_172519_320788_4C8CDDD3 
X-CRM114-Status: GOOD (  20.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "david.abdurachmanov@gmail.com" <david.abdurachmanov@gmail.com>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "opensbi@lists.infradead.org" <opensbi@lists.infradead.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "schwab@suse.de" <schwab@suse.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



> On Aug 5, 2019, at 5:34 PM, Atish Patra <Atish.Patra@wdc.com> wrote:
> 
> On Mon, 2019-08-05 at 16:34 +0200, Andreas Schwab wrote:
>> But this does help:
>> 
>> --- a/arch/riscv/include/asm/tlbflush.h
>> +++ b/arch/riscv/include/asm/tlbflush.h
>> @@ -49,7 +49,7 @@ static inline void remote_sfence_vma(struct cpumask
>> *cmask, unsigned long start,
>> 
>> 	cpumask_clear(&hmask);
>> 	riscv_cpuid_to_hartid_mask(cmask, &hmask);
>> -	sbi_remote_sfence_vma(hmask.bits, start, size);
>> +	sbi_remote_sfence_vma(hmask.bits, 0, -1);
>> }
>> 
>> #define flush_tlb_all() sbi_remote_sfence_vma(NULL, 0, -1)
>> 
> 
> I am also able to reprduce the issue while doing a install-locales.
> Here is the temporary fix that seems to solve the issue.
> 
> diff --git a/arch/riscv/include/asm/tlbflush.h
> b/arch/riscv/include/asm/tlbflush.h
> index 687dd19735a7..29b2bd7c9923 100644
> --- a/arch/riscv/include/asm/tlbflush.h
> +++ b/arch/riscv/include/asm/tlbflush.h
> @@ -55,7 +55,7 @@ static inline void remote_sfence_vma(struct cpumask
> *cmask, unsigned long start,
> #define flush_tlb_all() sbi_remote_sfence_vma(NULL, 0, -1)
> #define flush_tlb_page(vma, addr) flush_tlb_range(vma, addr, 0)
> #define flush_tlb_range(vma, start, end) \
> -       remote_sfence_vma(mm_cpumask((vma)->vm_mm), start, (end) -
> (start))
> +       remote_sfence_vma(mm_cpumask((vma)->vm_mm), 0, -1)
> #define flush_tlb_mm(mm) \
>        remote_sfence_vma(mm_cpumask(mm), 0, -1)
> 
> Can you please verify at your end?
> 
> 
> While your fix flushes the entire tlb for every type of remote tlb
> flush, this fix proves that the issue is with flush_tlb_range call
> only.
> 
> I am looking at the OpenSBI/Kernel implementation to figure out if it
> is an OpenSBI issue or something changed in kernel recently to trigger
> this.
> 
> Additionally, do you know if a particular or group of locale install 
> is causing this issue? 
> 
> It takes more than hour to finish the full install-locales on unleashe
> board which makes it bit difficult to try out possible fixes.
> 

Did you reproduce with SDcard, or NFS?

> 
>> Andreas.
>> 
> 
> -- 
> Regards,
> Atish
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
