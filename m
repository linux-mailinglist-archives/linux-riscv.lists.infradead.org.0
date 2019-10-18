Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 688E7DCAE3
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 18:21:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ssiqysXYW+qJhFsZMa5H04mT1t07pok8wsUmbZCdeEY=; b=Zf8MnsPi+TJaxX
	MGNXGITebDsDngskQjPHUX75Z+Qvdj7+qphgV3S0a+fKxIlaauKk1cwXoh9Hm9LKVejtLSs24MKH9
	NKBDwxwDI/rXGvGyQHf9fgfegQR0g40fEkPQU41Za6UozWHgkv0EfYtlESR140lhLEZeyf8gHu3X9
	F3T+oZ2CuVqGK0AJ5lfmpTVzj83iwCLJG4tBPUqcFYk8K53oT142G6K6cghHXaI5qrls3+EVsomTu
	RazoMJixPI1K0uBtwSv+C2s36AecOXvb8OAU/+wkJUpnFN7sxX2Dfo8fwNt0awd0afZ7FXamHbKP0
	ZbG+zpBZ4Lq0Fhz2ocDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUzr-0003D8-Nc; Fri, 18 Oct 2019 16:20:59 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUze-0002zw-8g; Fri, 18 Oct 2019 16:20:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 98337C8F;
 Fri, 18 Oct 2019 09:20:35 -0700 (PDT)
Received: from [10.1.194.43] (e112269-lin.cambridge.arm.com [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1B9163F718;
 Fri, 18 Oct 2019 09:20:32 -0700 (PDT)
Subject: Re: [PATCH v12 07/22] riscv: mm: Add p?d_leaf() definitions
To: Christoph Hellwig <hch@infradead.org>
References: <20191018101248.33727-1-steven.price@arm.com>
 <20191018101248.33727-8-steven.price@arm.com>
 <20191018155743.GG25386@infradead.org>
From: Steven Price <steven.price@arm.com>
Message-ID: <fe6a0fe4-e789-fb4b-4481-b3934234e16f@arm.com>
Date: Fri, 18 Oct 2019 17:20:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191018155743.GG25386@infradead.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_092046_351488_1CEA4CC6 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
 Dave Hansen <dave.hansen@linux.intel.com>, linux-mm@kvack.org,
 "H. Peter Anvin" <hpa@zytor.com>, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, "Liang, Kan" <kan.liang@linux.intel.com>,
 Alexandre Ghiti <alex@ghiti.fr>, x86@kernel.org,
 Ingo Molnar <mingo@redhat.com>, Palmer Dabbelt <palmer@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Arnd Bergmann <arnd@arndb.de>,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 18/10/2019 16:57, Christoph Hellwig wrote:
>> +	return pud_present(pud)
>> +		&& (pud_val(pud) & (_PAGE_READ | _PAGE_WRITE | _PAGE_EXEC));
>> +}
> 
> The operators always need to go before the line break, not after it
> per linux coding style.  There are a few more spots like this, so please
> audit the whole series for it.

Fair enough. In this case I was just copying the example in pte_huge()
that already existed - but you're right this isn't the kernel coding style.

Thanks,

Steve

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
