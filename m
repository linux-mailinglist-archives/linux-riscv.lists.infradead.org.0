Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4CF195A66
	for <lists+linux-riscv@lfdr.de>; Tue, 20 Aug 2019 10:53:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dK9tb/w1a2eaS7XHXXkyRymeaut/rbSuhT/yX3arujQ=; b=JEvN7INhbzqnjJ
	SBaZQafumVOJhcBJer+HTJXn6SFYLMi+rAKEyE8HgYI0Huz3MN71aZZHE3OfKpQ21LV0LwKFL64pw
	GnQ2vkr1ZRmcSrcKBuYuBOOgcSANKMbQbI1hhTp8x0kK0IjEfMlO4NjdHoZr4SFS+3pw3W5qcG6HB
	7aQZqzWDV1tYtz4nmcitDZGS8TF+c6wizd/MyzzgpZMUfgfuJ+t5E0YDLEqicnkwrqxRcm70jsURP
	V380wjkrOjdn2ZPS4pSLiFwnb466LKn1mRDEpcgZxteMW9pofx3h2ZfW0s7tXif5hv8m+0cY3bz1L
	YoX4UhY+kPonx84PE7jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzztN-0003gM-Ht; Tue, 20 Aug 2019 08:53:25 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzzrG-0001gp-9b
 for linux-riscv@lists.infradead.org; Tue, 20 Aug 2019 08:51:16 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 46CPf55hJxz1rK4j;
 Tue, 20 Aug 2019 10:51:09 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 46CPf54PDPz1qqkR;
 Tue, 20 Aug 2019 10:51:09 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id L20mSo19cVoG; Tue, 20 Aug 2019 10:51:08 +0200 (CEST)
X-Auth-Info: xcY6E7IcabXdliwAorIpwgVxvtg+uHfQdCPV1Me18qGqBrFxBMgTnTm+lnzp4WNr
Received: from hawking (charybdis-ext.suse.de [195.135.221.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 20 Aug 2019 10:51:08 +0200 (CEST)
From: Andreas Schwab <schwab@linux-m68k.org>
To: Atish Patra <Atish.Patra@wdc.com>
Subject: Re: [v2 PATCH] RISC-V: Optimize tlb flush path.
References: <20190820004735.18518-1-atish.patra@wdc.com>
 <mvmh86cl1o3.fsf@linux-m68k.org>
 <b2510462b55ffd93dba0c1b7cc28f9eef3089b50.camel@wdc.com>
X-Yow: Hold the MAYO & pass the COSMIC AWARENESS...
Date: Tue, 20 Aug 2019 10:51:07 +0200
In-Reply-To: <b2510462b55ffd93dba0c1b7cc28f9eef3089b50.camel@wdc.com> (Atish
 Patra's message of "Tue, 20 Aug 2019 08:42:19 +0000")
Message-ID: <mvma7c4kyo4.fsf@linux-m68k.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2.90 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_015114_646318_1356E23C 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "hch@infradead.org" <hch@infradead.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Aug 20 2019, Atish Patra <Atish.Patra@wdc.com> wrote:

> +
> +       cpuid = get_cpu();
> +	if (!cmask) {
> +               riscv_cpuid_to_hartid_mask(cpu_online_mask, &hmask);
> +               goto issue_sfence;
> +       }
> +
> +       
> +       if (cpumask_test_cpu(cpuid, cmask) && cpumask_weight(cmask) ==
> 1) {
> +               /* Save trap cost by issuing a local tlb flush here */
> +               if ((start == 0 && size == -1) || (size > PAGE_SIZE))
> +                       local_flush_tlb_all();
> +               else if (size == PAGE_SIZE)
> +                       local_flush_tlb_page(start);
> +               goto done;
> +       }
> +
>         riscv_cpuid_to_hartid_mask(cmask, &hmask);
> +
> +issue_sfence:
>         sbi_remote_sfence_vma(hmask.bits, start, size);
> +done:
> +       put_cpu();
>  }
>
> This is much simpler than what I had done in v2. I will address the if
> condition around size as well.

I still think that this function should be moved out of the header.

Andreas.

-- 
Andreas Schwab, schwab@linux-m68k.org
GPG Key fingerprint = 7578 EB47 D4E5 4D69 2510  2552 DF73 E780 A9DA AEC1
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
