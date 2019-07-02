Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9535B5D31B
	for <lists+linux-riscv@lfdr.de>; Tue,  2 Jul 2019 17:40:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XMDp4g5PtqDKapPEmBaCa5keibZ8eXS9K699yS5fJgQ=; b=Eiito/KrW+SLF8rVDTuFR1RBf
	nSRUDLi15rnB9Xvly4xwOAKWoYNqRgu4WjbpB8D9y9+LX2It3mpftzJga9e6BqCTZVxwLwsJaa/Gk
	I8U1na/yaM6+12ignjs5U1NbSE1bwYfZXYPs8CwtT5oabQiTBBMLX3kAYO4s4f0+gE/JYWBIAYOm/
	6rTT38bC38CYLxo1sG7rJTevjc4Omy5tcfPiadTVFvUB/PiAd+HeyDtkPZwAdQlxciJLjW7DHYZnE
	c7nIKwEtKtyH/FYI0FkUbxSTNK4thf8fYi5rEgxbVbqHDa8cItr2VnRIRV/pCkbQ4T8vnsv4XE7en
	sO5Q1Pn9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiKtV-00077t-7L; Tue, 02 Jul 2019 15:40:33 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiKsz-0005bR-Dy; Tue, 02 Jul 2019 15:40:03 +0000
X-Originating-IP: 81.250.144.103
Received: from [10.30.1.20] (lneuilly-657-1-5-103.w81-250.abo.wanadoo.fr
 [81.250.144.103]) (Authenticated sender: alex@ghiti.fr)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 51AC420016;
 Tue,  2 Jul 2019 15:39:36 +0000 (UTC)
Subject: Re: [PATCH v3 2/2] riscv: Introduce huge page support for 32/64bit
 kernel
To: Christoph Hellwig <hch@infradead.org>
References: <20190701175900.4034-1-alex@ghiti.fr>
 <20190701175900.4034-3-alex@ghiti.fr> <20190702132418.GB17480@infradead.org>
From: Alexandre Ghiti <alex@ghiti.fr>
Message-ID: <1596717d-430b-a429-4840-89ca30d654eb@ghiti.fr>
Date: Tue, 2 Jul 2019 17:39:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190702132418.GB17480@infradead.org>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_084001_665298_795CD206 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Hanjun Guo <guohanjun@huawei.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Mike Kravetz <mike.kravetz@oracle.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 7/2/19 3:24 PM, Christoph Hellwig wrote:
>> +config ARCH_WANT_GENERAL_HUGETLB
>> +	def_bool y
>> +
>> +config SYS_SUPPORTS_HUGETLBFS
>> +	def_bool y
> In a perfect world these would be in mm/Kconfig and only selected
> by the architectures.  But I don't want to force you to clean up all
> that mess first, so:
>
> Reviewed-by: Christoph Hellwig <hch@lst.de>


Thanks, I'll clean that up ;)

Alex


>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
