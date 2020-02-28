Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE801733B4
	for <lists+linux-riscv@lfdr.de>; Fri, 28 Feb 2020 10:20:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c5EdPI1LbJqBsR9L9BbbPDSisPGCoNmpHNd4EJ/cKcc=; b=WjJ8Yt4mLAIUzr
	/OaE7cMYElbHTDvvm5KC2TlsVAy5PYFrqo1uUSYR6oo3ei7u4ANqgHy/npRtyH60N0Kbu9DGhoIVS
	sme120ewmgXLpdsBiDWI4rqe17SAF3QXjEuFTl44Cv2FkjPHaeCcLukZmjFfoMVAyuh5EECOEWWOG
	+DFUvF7451WEdtZvrczagtl0sS7TZX0QLW1FQroDyWRWUyma8kD4w2bI+gEbRFXErwJtxBCrnmTw5
	u+hywGSXcgkKcj3ulpXLD+7yFIe0joBrP+phOE+vVtlhalyp60saGe0iHZaL+nXbVH3Tbg2BVymQb
	VXjsv/YFa8s97cUBqGLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7bp5-0002be-1U; Fri, 28 Feb 2020 09:20:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7bom-0002I2-JJ; Fri, 28 Feb 2020 09:20:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E2C8E1FB;
 Fri, 28 Feb 2020 01:20:19 -0800 (PST)
Received: from [10.163.1.119] (unknown [10.163.1.119])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E52C03F7B4;
 Fri, 28 Feb 2020 01:20:10 -0800 (PST)
Subject: Re: [PATCH] mm/debug: Add tests validating arch page table helpers
 for core features
To: Christophe Leroy <christophe.leroy@c-s.fr>, linux-mm@kvack.org
References: <1582799637-11786-1-git-send-email-anshuman.khandual@arm.com>
 <51421bb3-9075-d7e9-1750-0553a1ebe64a@c-s.fr>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <f99692be-5d38-fdb7-46f1-205c7cc7481c@arm.com>
Date: Fri, 28 Feb 2020 14:50:09 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <51421bb3-9075-d7e9-1750-0553a1ebe64a@c-s.fr>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_012024_696067_761E8A50 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, x86@kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 linux-snps-arc@lists.infradead.org, Vasily Gorbik <gor@linux.ibm.com>,
 Borislav Petkov <bp@alien8.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Vineet Gupta <vgupta@synopsys.com>, linux-kernel@vger.kernel.org,
 Palmer Dabbelt <palmer@dabbelt.com>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 02/27/2020 04:12 PM, Christophe Leroy wrote:
> 
> 
> Le 27/02/2020 à 11:33, Anshuman Khandual a écrit :
>> This adds new tests validating arch page table helpers for these following
>> core memory features. These tests create and test specific mapping types at
>> various page table levels.
>>
>> * SPECIAL mapping
>> * PROTNONE mapping
>> * DEVMAP mapping
>> * SOFTDIRTY mapping
>> * SWAP mapping
>> * MIGRATION mapping
>> * HUGETLB mapping
> 
> For testing HUGETLB mappings, you also have to include tests of hugepd functions/helpers. Not all archictures have hugepage size which matches with page tables levels (e.g. powerpc). Those architectures use hugepd_t.

Dont see much hugepd_t in generic HugeTLB. Just wondering which generic
hugepd helpers can be tested here. Could you please be bit more specific.
As we have not yet started looking for arch specific page table helpers
test requirements, all the test scenarios here need to be generic.

> 
> Christophe
> 

