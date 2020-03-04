Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 317F0178AD2
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Mar 2020 07:49:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wrQNL9rvesEDlWoNS4tGcfPvGhYnLZNAbgZHq9fGbnE=; b=LpxPamzj8rgdiS
	UdV2KP5f+ZOWPpkRkYE/eokDmYBlja+1zWjj39beYYxoQP3qF4BTcr4hDe6e66dSlQuPUSj3J2gqW
	e7zCjwb/nrDJmUVtNtYeM1DjS5tCj9yS0EB3AF4uG8KzyiO4oOXnZJ6xgGN6eOjDydjBrLUA2UgAK
	i+yZLHrAPck3my0/ag8CUoZMRnqfWtCIj2anTpKgi8c20Fx/59eLG0ISM9B6zZxzPtIus9Qc0lhx1
	njukDcQVadNNVQKOssX9ZhbsquPeSIGNLWB5LLJDxygBsNPj5E/mbxsIzh06gMb/gvZIczaw7ZQbv
	+/1wl2blv4p7BRrtFmJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9NqG-0008M1-8O; Wed, 04 Mar 2020 06:49:16 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Nq7-0008GN-Md; Wed, 04 Mar 2020 06:49:09 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 48XPcF5vVkz9v0st;
 Wed,  4 Mar 2020 07:49:01 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=TjnV6xMQ; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id dW39OVxTZgd8; Wed,  4 Mar 2020 07:49:01 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 48XPcF4ZcKz9v0ss;
 Wed,  4 Mar 2020 07:49:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1583304541; bh=wrQNL9rvesEDlWoNS4tGcfPvGhYnLZNAbgZHq9fGbnE=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=TjnV6xMQKz2IO1bGDE4HAZJMFDjYTtnjTtNNjZEsh1GJH/DNUiegOPbfzQzRdUJdq
 mfbcsqR6vxFcKaMgtar20QBjEJl5cDZGZqEWM5VabMwt/qfmG0b/5ARzKJJU0pQlpP
 HX98Thi1AQonukArlC4ShOrxhDCLgoABIqbXgKFo=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 784788B826;
 Wed,  4 Mar 2020 07:49:02 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id oPUcSMTN_Vcy; Wed,  4 Mar 2020 07:49:02 +0100 (CET)
Received: from [172.25.230.100] (po15451.idsi0.si.c-s.fr [172.25.230.100])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 2A1098B820;
 Wed,  4 Mar 2020 07:49:02 +0100 (CET)
Subject: Re: [PATCH V14] mm/debug: Add tests validating architecture page
 table helpers
To: Qian Cai <cai@lca.pw>, Anshuman Khandual <anshuman.khandual@arm.com>
References: <1581909460-19148-1-git-send-email-anshuman.khandual@arm.com>
 <1582726182.7365.123.camel@lca.pw>
 <7c707b7f-ce3d-993b-8042-44fdc1ed28bf@c-s.fr>
 <1582732318.7365.129.camel@lca.pw> <1583178042.7365.146.camel@lca.pw>
 <e8516497-f1b9-b222-e219-73b68880ac75@arm.com>
 <12260F9A-695D-40F8-932F-61D86D77D441@lca.pw>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <c022e863-0807-fab1-cd41-3c320381f448@c-s.fr>
Date: Wed, 4 Mar 2020 07:48:54 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <12260F9A-695D-40F8-932F-61D86D77D441@lca.pw>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: fr
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_224908_201407_50865962 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>,
 the arch/x86 maintainers <x86@kernel.org>, Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-snps-arc@lists.infradead.org,
 Vasily Gorbik <gor@linux.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Vineet Gupta <vgupta@synopsys.com>, LKML <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



Le 04/03/2020 à 02:39, Qian Cai a écrit :
> 
>> Below is slightly modified version of your change above and should still
>> prevent the bug on powerpc. Will it be possible for you to re-test this
>> ? Once confirmed, will send a patch enabling this test on powerpc64
>> keeping your authorship. Thank you.
> 
> This works fine on radix MMU but I decided to go a bit future to test hash
> MMU. The kernel will stuck here below. I did confirm that pte_alloc_map_lock()
> was successful, so I don’t understand hash MMU well enough to tell why
> it could still take an interrupt at pte_clear_tests() even before we calls
> pte_unmap_unlock()?

AFAIU, you are not taking an interrupt here. You are stuck in the 
pte_update(), most likely due to nested locks. Try with LOCKDEP ?

Christophe

> 
> [   33.881515][    T1] ok 8 - property-entry
> [   33.883653][    T1] debug_vm_pgtable: debug_vm_pgtable: Validating
> architecture page table helpers
> [   60.418885][    C8] watchdog: BUG: soft lockup - CPU#8 stuck for 23s!
> [swapper/0:1]


