Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF95682D0A
	for <lists+linux-riscv@lfdr.de>; Tue,  6 Aug 2019 09:44:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vx96n8+Y78J2BJ/AeG4D/Wk6tUYtTBrg1kNaEE2n6ko=; b=Adc4dDn28kVlWm
	6JJWGvFkVNB/co69XP1nHIIhqjUg+HZUuVKPSq84tCMEu1o1kpujUFj9ceM5063zuUX5kFMeX/eLc
	A0wRBfGzGEHVjRmcy+yVJKpUSW4e41Zd4j5MuBvqlaOSUIdrbXD+v0IAg11LeOYeeG804sbBnc7lV
	XT/LiC+Mv/HkgzokmgT6KGtLvIAn/06JwBBK8C9ehkgka9prPWDiFh/7R504UDXdmJ3HuLGisQIMS
	wUuzFlTkLUpIiUHSrQXYfhmPg7HxkDqojxvtS8ZIPZfAdZdSePhWc3GSRtBmCOY0FAyxkc0K/rNvD
	15uGgvk0SIzCwywGpOOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huu8f-0002pB-Lq; Tue, 06 Aug 2019 07:44:09 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huu8R-0002g1-7T; Tue, 06 Aug 2019 07:43:56 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id CCD65ACB7;
 Tue,  6 Aug 2019 07:43:51 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Atish Patra <Atish.Patra@wdc.com>
Subject: Re: Random memory corruption with v5.2
References: <mvm8sshcdwc.fsf@suse.de>
 <CAEn-LTpM-0TMxkNNh6nnLH9Bnr9Zm+VFLf=z1y9sER6RXrQooQ@mail.gmail.com>
 <mvm1ry8au3f.fsf@suse.de>
 <alpine.DEB.2.21.9999.1907301709510.4874@viisi.sifive.com>
 <mvmwofw68ji.fsf@suse.de>
 <CAAhSdy0ZPk1So_ieahn5dVaye1WajRmwkYHhSox4FcvuOuZchw@mail.gmail.com>
 <mvmmugn4sd4.fsf@suse.de> <mvmimrb4r5q.fsf@suse.de>
 <45823bccd515273e08bd2e0c634b0b207e60db9c.camel@wdc.com>
X-Yow: Civilization is fun!  Anyway, it keeps me busy!!
Date: Tue, 06 Aug 2019 09:43:51 +0200
In-Reply-To: <45823bccd515273e08bd2e0c634b0b207e60db9c.camel@wdc.com> (Atish
 Patra's message of "Mon, 5 Aug 2019 22:34:53 +0000")
Message-ID: <mvmsgqe3fig.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2.90 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_004355_463654_2DDC808C 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "anup@brainfault.org" <anup@brainfault.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "david.abdurachmanov@gmail.com" <david.abdurachmanov@gmail.com>,
 "opensbi@lists.infradead.org" <opensbi@lists.infradead.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Aug 05 2019, Atish Patra <Atish.Patra@wdc.com> wrote:

> On Mon, 2019-08-05 at 16:34 +0200, Andreas Schwab wrote:
>> But this does help:
>> 
>> --- a/arch/riscv/include/asm/tlbflush.h
>> +++ b/arch/riscv/include/asm/tlbflush.h
>> @@ -49,7 +49,7 @@ static inline void remote_sfence_vma(struct cpumask
>> *cmask, unsigned long start,
>>  
>>  	cpumask_clear(&hmask);
>>  	riscv_cpuid_to_hartid_mask(cmask, &hmask);
>> -	sbi_remote_sfence_vma(hmask.bits, start, size);
>> +	sbi_remote_sfence_vma(hmask.bits, 0, -1);
>>  }
>>  
>>  #define flush_tlb_all() sbi_remote_sfence_vma(NULL, 0, -1)
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
>  #define flush_tlb_all() sbi_remote_sfence_vma(NULL, 0, -1)
>  #define flush_tlb_page(vma, addr) flush_tlb_range(vma, addr, 0)
>  #define flush_tlb_range(vma, start, end) \
> -       remote_sfence_vma(mm_cpumask((vma)->vm_mm), start, (end) -
> (start))
> +       remote_sfence_vma(mm_cpumask((vma)->vm_mm), 0, -1)
>  #define flush_tlb_mm(mm) \
>         remote_sfence_vma(mm_cpumask(mm), 0, -1)
>
> Can you please verify at your end?

This is equivalent to my patch since all other uses already pass 0,-1.

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
