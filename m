Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A569170E7B
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Feb 2020 03:34:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B8y16mXH8XEtAUAnOUgG8t+nAh9OcXyht4zpdy9Qh60=; b=DctNYxI4LgUw2G
	exrI2vQ0yXoBy/uW9A9WDyZ/ixWUtJpYqKgLUVeM2iudhSoKqOJgTw8m8J8PLG6RQCPEG5eflwmXk
	Vt2glf0dmDqR5dBsDG6vnKxtcViJEBYNh2Br/OopS6LiS/uzGu1oe8mXFey72dOemD60H1a8QqL5p
	R/14zc/iT5WITv2TFS9+VO5/7BuasfR5fH+aksTToFnR32oM0gs6qApHIZ5xaWBazRxILcnHd25QW
	44qVQbKRnVNevH9hckGDd9BlfWO8bTHdwekw82wGWqSTU2lCfPAAch288vEHjs3CXq/N1ON0iino1
	cmNvPQQIvFH2qmSAcJJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j790Y-0005Nd-5Y; Thu, 27 Feb 2020 02:34:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j790E-0005C4-Lb; Thu, 27 Feb 2020 02:34:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A9D9F1FB;
 Wed, 26 Feb 2020 18:34:15 -0800 (PST)
Received: from [10.163.1.119] (unknown [10.163.1.119])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6D8323F819;
 Wed, 26 Feb 2020 18:34:06 -0800 (PST)
From: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V14] mm/debug: Add tests validating architecture page
 table helpers
To: Christophe Leroy <christophe.leroy@c-s.fr>, Qian Cai <cai@lca.pw>,
 linux-mm@kvack.org
References: <1581909460-19148-1-git-send-email-anshuman.khandual@arm.com>
 <1582726182.7365.123.camel@lca.pw> <1582726340.7365.124.camel@lca.pw>
 <eb154054-68ab-a659-065b-f4f7dcbb8671@c-s.fr>
Message-ID: <52db1e9b-83b3-c41f-ef03-0f43e2159a83@arm.com>
Date: Thu, 27 Feb 2020 08:04:05 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <eb154054-68ab-a659-065b-f4f7dcbb8671@c-s.fr>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_183418_750168_0EB2F9C1 
X-CRM114-Status: GOOD (  14.19  )
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
 linux-s390@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 James Morse <james.morse@arm.com>, linux-snps-arc@lists.infradead.org,
 Vasily Gorbik <gor@linux.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Vineet Gupta <vgupta@synopsys.com>, linux-kernel@vger.kernel.org,
 Palmer Dabbelt <palmer@dabbelt.com>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 02/26/2020 08:14 PM, Christophe Leroy wrote:
> 
> 
> Le 26/02/2020 à 15:12, Qian Cai a écrit :
>> On Wed, 2020-02-26 at 09:09 -0500, Qian Cai wrote:
>>> On Mon, 2020-02-17 at 08:47 +0530, Anshuman Khandual wrote:
>>>
>>> How useful is this that straightly crash the powerpc?
>>
>> And then generate warnings on arm64,
>>
>> [  146.634626][    T1] debug_vm_pgtable: debug_vm_pgtable: Validating
>> architecture page table helpers
>> [  146.643995][    T1] ------------[ cut here ]------------
>> [  146.649350][    T1] virt_to_phys used for non-linear address:
>> (____ptrval____) (start_kernel+0x0/0x580)
> 
> Must be something wrong with the following in debug_vm_pgtable()
> 
>     paddr = __pa(&start_kernel);
> 
> Is there any explaination why start_kernel() is not in linear memory on ARM64 ?


Cc: + James Morse <james.morse@arm.com>

This warning gets exposed with DEBUG_VIRTUAL due to __pa() on a kernel symbol
i.e 'start_kernel' which might be outside the linear map. This happens due to
kernel mapping position randomization with KASLR. Adding James here in case he
might like to add more.

__pa_symbol() should have been used instead, for accessing the physical address
here. On arm64 __pa() does check for linear address with __is_lm_address() and
switch accordingly if it is a kernel text symbol. Nevertheless, its much better
to use __pa_symbol() here rather than __pa().

Rather than respining the patch once more, will just send a fix replacing this
helper __pa() with __pa_symbol() for Andrew to pick up as this patch is already
part of linux-next (next-20200226). But can definitely respin if that will be
preferred.

Thanks Qian for catching this.

> 
> Christophe
> 

