Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D47ACF845
	for <lists+linux-riscv@lfdr.de>; Tue,  8 Oct 2019 13:32:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uNU/Y/ENh9EEh2orZLRqubMo24ZPGmsG/mJsxbyGdcM=; b=FXa/nU7Cg+a0Sq9mn/lhg4+yo
	5jKNqmCQMM8bBC+AwE9yzJWepuMdnY6kvv5mQRtYcF3A6E78n9jbH+0uqETpUidZoITndwgR0xPLP
	8k55xd2M361+/3KvdjiaZHnshwQA+GrKN0kbbjs+AUboHci8pdSUydwJdyEzZAC1v28MUfVVXI0Ps
	tBduU/xjl1yadW4eRL1qSLOSJBOmR4V7D4A0d8WUGU0UKTc0xUFoGoPPw76VJDEC/IrEigKJBt/Lh
	teZ9e9hITRym+tun5ONPbKFsghIDc4UpDgvph7Fs3iqugvOfmVpYo8VqE7Z0wbH98W7thZranc76B
	reA9I/DcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHniy-00063N-Ai; Tue, 08 Oct 2019 11:32:16 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHnim-0005x1-B4; Tue, 08 Oct 2019 11:32:06 +0000
X-Originating-IP: 81.185.168.180
Received: from [192.168.43.237] (180.168.185.81.rev.sfr.net [81.185.168.180])
 (Authenticated sender: alex@ghiti.fr)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 4F5AEFF809;
 Tue,  8 Oct 2019 11:31:43 +0000 (UTC)
Subject: Re: [PATCH v11 07/22] riscv: mm: Add p?d_leaf() definitions
To: Steven Price <steven.price@arm.com>, linux-mm@kvack.org
References: <20191007153822.16518-1-steven.price@arm.com>
 <20191007153822.16518-8-steven.price@arm.com>
From: Alex Ghiti <alex@ghiti.fr>
Message-ID: <69a56736-4093-202a-4eaf-feeaaa0216d1@ghiti.fr>
Date: Tue, 8 Oct 2019 07:31:42 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191007153822.16518-8-steven.price@arm.com>
Content-Language: sv-FI
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_043204_520141_D3DF17CB 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.199 listed in wl.mailspike.net]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, "H. Peter Anvin" <hpa@zytor.com>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>, "Liang,
 Kan" <kan.liang@linux.intel.com>, x86@kernel.org,
 Ingo Molnar <mingo@redhat.com>, Palmer Dabbelt <palmer@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Arnd Bergmann <arnd@arndb.de>,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Andrew Morton <akpm@linux-foundation.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 10/7/19 11:38 AM, Steven Price wrote:
> walk_page_range() is going to be allowed to walk page tables other than
> those of user space. For this it needs to know when it has reached a
> 'leaf' entry in the page tables. This information is provided by the
> p?d_leaf() functions/macros.
>
> For riscv a page is a leaf page when it has a read, write or execute bit
> set on it.
>
> CC: Palmer Dabbelt <palmer@sifive.com>
> CC: Albert Ou <aou@eecs.berkeley.edu>
> CC: linux-riscv@lists.infradead.org
> Signed-off-by: Steven Price <steven.price@arm.com>
> ---
>   arch/riscv/include/asm/pgtable-64.h | 7 +++++++
>   arch/riscv/include/asm/pgtable.h    | 7 +++++++
>   2 files changed, 14 insertions(+)
>
> diff --git a/arch/riscv/include/asm/pgtable-64.h b/arch/riscv/include/asm/pgtable-64.h
> index 74630989006d..e88a8e8acbdf 100644
> --- a/arch/riscv/include/asm/pgtable-64.h
> +++ b/arch/riscv/include/asm/pgtable-64.h
> @@ -43,6 +43,13 @@ static inline int pud_bad(pud_t pud)
>   	return !pud_present(pud);
>   }
>   
> +#define pud_leaf	pud_leaf
> +static inline int pud_leaf(pud_t pud)
> +{
> +	return pud_present(pud)
> +		&& (pud_val(pud) & (_PAGE_READ | _PAGE_WRITE | _PAGE_EXEC));
> +}
> +
>   static inline void set_pud(pud_t *pudp, pud_t pud)
>   {
>   	*pudp = pud;
> diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
> index 7255f2d8395b..b9a679153265 100644
> --- a/arch/riscv/include/asm/pgtable.h
> +++ b/arch/riscv/include/asm/pgtable.h
> @@ -130,6 +130,13 @@ static inline int pmd_bad(pmd_t pmd)
>   	return !pmd_present(pmd);
>   }
>   
> +#define pmd_leaf	pmd_leaf
> +static inline int pmd_leaf(pmd_t pmd)
> +{
> +	return pmd_present(pmd)
> +		&& (pmd_val(pmd) & (_PAGE_READ | _PAGE_WRITE | _PAGE_EXEC));
> +}
> +
>   static inline void set_pmd(pmd_t *pmdp, pmd_t pmd)
>   {
>   	*pmdp = pmd;

Hi Steven,

The way you check leaf entries is correct: we do the same for hugepages. 
So is
there a reason you did not use the pmd/pud_huge functions that are 
defined in
arch/riscv/mm/hugetlbpage.c ?

Anyway, FWIW:

Reviewed-by: Alexandre Ghiti <alex@ghiti.fr>

Thanks,

Alex


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
