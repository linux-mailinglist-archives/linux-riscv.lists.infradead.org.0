Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB07F1DDE79
	for <lists+linux-riscv@lfdr.de>; Fri, 22 May 2020 05:58:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GTCRS5itnhr1mF/qxix34YoD9buZ+IJ+Kp8+rInUWII=; b=ErveURnCNbkHXg
	haTg8VAUYD/EhAo6ORQ8woQ9/WJbjpCtiEfZPzoDG/zbJBSk/WB4sNMRbu6X+c3ia6vIk7qBQ4iLZ
	RPDPndK5iqwhRaG4/Q0KB1gkBj7WmHRKIat3O1Aul1IvDXUksjykkJnNQWQ3j6DLmZmMu9G1GSa/K
	HaW+O3P9WyXzGuRlp5FwoeO+YxSBdcr3UzSK+LHUzO4vRokEC6QfmwPGHscH6wu9rhSXi6m1unf/7
	7jcj82O/mets2uwpHOaoosh+xm73PCAv5EGXu9h8BFx84195Dn6OMVkEU8/Dvnr70By1fhQfeAHeo
	GTOKyRY/a4WXIaOLWDHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbypV-0006tI-LJ; Fri, 22 May 2020 03:58:41 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbypR-0006su-AE; Fri, 22 May 2020 03:58:38 +0000
Received: by mail-pg1-x543.google.com with SMTP id s10so4387281pgm.0;
 Thu, 21 May 2020 20:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding;
 bh=GTCRS5itnhr1mF/qxix34YoD9buZ+IJ+Kp8+rInUWII=;
 b=vDaWIoTIRHXzzZ3IA67i/cjCOtcGp88y+O8jyIDLaixqV8pz490fe22V8IP7iTQfe1
 YwtcB0HXkIAL18fDGByNvpebTUqZeqxG3FlwKcZJ1Rym7igoGACDWDHdcDBYqJJuNLOI
 oZn65R21HDSkTDywMd4YyKKdZqHI8Xl/970SsXN17v9J/1Kg2jzRKPsMbuWWObylBAmc
 W9QoRKVSiHMEi/BkfW/W7rWjSbhmbs/f0NpoEeE3KtEJmsy2KSw3a6vcQ/BGxaFPyVrb
 3deUq6U9z9ks+56TV3IJRzy8XC0zMZTSeUpI7Sk5rvdeo5JtniS9vK2H1HU2EfckOjdn
 AIWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=GTCRS5itnhr1mF/qxix34YoD9buZ+IJ+Kp8+rInUWII=;
 b=OXD92NT8Mn7gIvSRMHWt0CTV/ZAuUrIFKPH3uFCVIiOPWsbdW6wDXV3s6VzQy+6sxY
 rO1KkYgH+RixQP+VKjnlGaIxMLaGyrG/C0PXXp7bMnkACAwaDh5vstzsO9jV3VwVQ6K1
 GFNkRffEwbXj6UigyyqfR8+ZTsv04TVuYhi3psLg5CluApKkhAaWIj/omh2PjrA8Q+W8
 +bCFqR17lr0+Mrq6gD80iUDzPZ2ajYY3hAcfkdw43/1x0ZxnBa3f/xuCR7L99F3TQV41
 KEfHQdMTJr1UZmzFn3gZLc9Co9oSHYga+lyDzIJlfV7EYHocKmjFI0tJq9BcO7UPCTqn
 cgvg==
X-Gm-Message-State: AOAM531p2Ebn9cIBQpQd2yri/XFD6y1WjmZA9/25uxm5zMspZUwV6ql9
 tGtabGaFspoABlY9z2c2KMI=
X-Google-Smtp-Source: ABdhPJx/4KdYW3Afcw6UEXV6omcwrg39GzRW/S4XSWQxqsjDVfrymkFMOI5pi2hIOfpxCf9XMGqlMg==
X-Received: by 2002:a63:7453:: with SMTP id e19mr4549034pgn.139.1590119915296; 
 Thu, 21 May 2020 20:58:35 -0700 (PDT)
Received: from [0.0.0.0] ([45.76.223.48])
 by smtp.gmail.com with ESMTPSA id o25sm4993865pgn.84.2020.05.21.20.58.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 May 2020 20:58:34 -0700 (PDT)
From: Jia He <jiakernel2@gmail.com>
Subject: Re: [PATCH V3 0/3] arm64: Enable vmemmap mapping from device memory
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
References: <1585631387-18819-1-git-send-email-anshuman.khandual@arm.com>
Message-ID: <4853d33f-d524-8209-4f8d-c26ee1eaa85b@gmail.com>
Date: Fri, 22 May 2020 11:58:06 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <1585631387-18819-1-git-send-email-anshuman.khandual@arm.com>
Content-Type: text/plain; charset=gbk; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_205837_378148_F0A8E075 
X-CRM114-Status: GOOD (  18.36  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jiakernel2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jiakernel2[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Michal Hocko <mhocko@suse.com>,
 Thomas Gleixner <tglx@linutronix.de>, David Hildenbrand <david@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Paul Mackerras <paulus@samba.org>,
 linux-ia64@vger.kernel.org, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, jgg@mellanox.com, aneesh.kumar@linux.ibm.com,
 x86@kernel.org, "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Kaly Xin <Kaly.Xin@arm.com>,
 Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Fenghua Yu <fenghua.yu@intel.com>, rcampbell@nvidia.com,
 Pavel Tatashin <pasha.tatashin@soleen.com>, jglisse@redhat.com,
 Andy Lutomirski <luto@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org,
 Tony Luck <tony.luck@intel.com>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Andrew Morton <akpm@linux-foundation.org>, robin.murphy@arm.com,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi

On 2020/3/31 13:09, Anshuman Khandual wrote:
> This series enables vmemmap backing memory allocation from device memory
> ranges on arm64. But before that, it enables vmemmap_populate_basepages()
> and vmemmap_alloc_block_buf() to accommodate struct vmem_altmap based
> alocation requests.

I verified no obvious regression after this patch series.

Host: ThunderX2(armv8a server), kernel v5.4

qemu:v3.1, -M virt \

-object 
memory-backend-file,id=mem1,share=on,mem-path=/tmp2/nvdimm.img,size=4G,align=2M \

-device nvdimm,id=nvdimm1,memdev=mem1,label-size=2M

Guest: kernel v5.7.0-rc5 with this patch series.

Tested case:

- 4K PAGESIZE, boot, mount w/ -o dax, mount w/o -o dax, basic io

- 64K PAGESIZE,boot, mount w/ -o dax, mount w/o -o dax, basic io

Not tested:

- 16K pagesize due to my hardware limiation(can't run 16K pgsz kernel)

- hot-add/remove nvdimm device from qemu due to no fully support on arm64 qemu yet

- Host nvdimm device hotplug

Hence from above result,

Tested-by: Jia He <justin.he@arm.com>

> This series applies after latest (v14) arm64 memory hot remove series
> (https://lkml.org/lkml/2020/3/3/1746) on Linux 5.6.
>
> Pending Question:
>
> altmap_alloc_block_buf() does not have any other remaining users in the
> tree after this change. Should it be converted into a static function and
> it's declaration be dropped from the header (include/linux/mm.h). Avoided
> doing so because I was not sure if there are any off-tree users or not.
>
> Changes in V3:
>
> - Dropped comment from free_hotplug_page_range() per Robin
> - Modified comment in unmap_hotplug_range() per Robin
> - Enabled altmap support in vmemmap_alloc_block_buf() per Robin
>
> Changes in V2: (https://lkml.org/lkml/2020/3/4/475)
>
> - Rebased on latest hot-remove series (v14) adding P4D page table support
>
> Changes in V1: (https://lkml.org/lkml/2020/1/23/12)
>
> - Added an WARN_ON() in unmap_hotplug_range() when altmap is
>    provided without the page table backing memory being freed
>
> Changes in RFC V2: (https://lkml.org/lkml/2019/10/21/11)
>
> - Changed the commit message on 1/2 patch per Will
> - Changed the commit message on 2/2 patch as well
> - Rebased on arm64 memory hot remove series (v10)
>
> RFC V1: (https://lkml.org/lkml/2019/6/28/32)
>
> Cc: Catalin Marinas<catalin.marinas@arm.com>
> Cc: Will Deacon<will@kernel.org>
> Cc: Mark Rutland<mark.rutland@arm.com>
> Cc: Paul Walmsley<paul.walmsley@sifive.com>
> Cc: Palmer Dabbelt<palmer@dabbelt.com>
> Cc: Tony Luck<tony.luck@intel.com>
> Cc: Fenghua Yu<fenghua.yu@intel.com>
> Cc: Dave Hansen<dave.hansen@linux.intel.com>
> Cc: Andy Lutomirski<luto@kernel.org>
> Cc: Peter Zijlstra<peterz@infradead.org>
> Cc: Thomas Gleixner<tglx@linutronix.de>
> Cc: Ingo Molnar<mingo@redhat.com>
> Cc: David Hildenbrand<david@redhat.com>
> Cc: Mike Rapoport<rppt@linux.ibm.com>
> Cc: Michal Hocko<mhocko@suse.com>
> Cc: "Matthew Wilcox (Oracle)"<willy@infradead.org>
> Cc: "Kirill A. Shutemov"<kirill.shutemov@linux.intel.com>
> Cc: Andrew Morton<akpm@linux-foundation.org>
> Cc: Dan Williams<dan.j.williams@intel.com>
> Cc: Pavel Tatashin<pasha.tatashin@soleen.com>
> Cc: Benjamin Herrenschmidt<benh@kernel.crashing.org>
> Cc: Paul Mackerras<paulus@samba.org>
> Cc: Michael Ellerman<mpe@ellerman.id.au>
> Cc:linux-arm-kernel@lists.infradead.org
> Cc:linux-ia64@vger.kernel.org
> Cc:linux-riscv@lists.infradead.org
> Cc:x86@kernel.org
> Cc:linuxppc-dev@lists.ozlabs.org
> Cc:linux-mm@kvack.org
> Cc:linux-kernel@vger.kernel.org
>
> Anshuman Khandual (3):
>    mm/sparsemem: Enable vmem_altmap support in vmemmap_populate_basepages()
>    mm/sparsemem: Enable vmem_altmap support in vmemmap_alloc_block_buf()
>    arm64/mm: Enable vmem_altmap support for vmemmap mappings
>
>   arch/arm64/mm/mmu.c       | 59 ++++++++++++++++++++++++++-------------
>   arch/ia64/mm/discontig.c  |  2 +-
>   arch/powerpc/mm/init_64.c | 10 +++----
>   arch/riscv/mm/init.c      |  2 +-
>   arch/x86/mm/init_64.c     | 12 ++++----
>   include/linux/mm.h        |  8 ++++--
>   mm/sparse-vmemmap.c       | 38 ++++++++++++++++++++-----
>   7 files changed, 87 insertions(+), 44 deletions(-)
>
-- 

---
Cheers,
Justin (Jia He)


