Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCDFE1C5697
	for <lists+linux-riscv@lfdr.de>; Tue,  5 May 2020 15:18:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YTVuB3nFO2ZJkwopWJScapBjoH2ODr8djIHuBvrmxls=; b=NEz8FHum/z1rAK
	OzkCEUePn0ii7zi8fEKjxbfVNaOpf6ksFvVucmb/X+WxwNWY1lnfSP6/YrtshfvJhxKJnnefJH68+
	dxx9jNFXgLdhirTTDnTUI/XBIQlqK0cH8ly38Fm6NGPR7q+rAph6pH745sv3PDYaZohSLOG8xUaXR
	TWxX4De8lnwBfNRQLpEHUM4drxQ3QayDw9p8NcfQMvU0tyBZ/GAy39mM4jg9/WnLjbBhB8dk7l7vb
	tjB+b2IFu/Yqxeod4sZWKp4FRJ5LZBn1oKtEshqtIpBGRUTNmpFLEa/Q+asa7I5Xxf40TLT8gqxJu
	sMWI1xeQ09jN/GmtuUmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVxSo-0001C7-OA; Tue, 05 May 2020 13:18:22 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVxSk-0001Ay-7B; Tue, 05 May 2020 13:18:20 +0000
Received: by mail-pg1-x542.google.com with SMTP id s8so1071526pgq.1;
 Tue, 05 May 2020 06:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YTVuB3nFO2ZJkwopWJScapBjoH2ODr8djIHuBvrmxls=;
 b=fruBUflDQ6Jeq31XBd3e7ltzEHuo9b/4IfeOLDlJxtRoAHNVReRI4naQPO8gaw9ItY
 oTH4F4i0UGGmndg13WybQGu5JAx1DohGtTWybng2+Qb3WimoaR/cd+IYWZpA38zDZNjc
 ESbdDRGoJGq3pgJmzssH/d9Mgy0xGnno3T1IJAMO1ojEEcgv0Hz91k0k6ELOCkKvABm4
 +wSO9l57ugUBf4HWTPbqQB6+5p79v7TE0bebHVmPWiVgxKNZGOR7kv24hrtvRpe63vmF
 TKU6PNwIkhG6wWAJFbSWbJxU58njxZQlJajAdmJZm2AUDlXm4XN0/+XHppMvuiTQD825
 ksCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=YTVuB3nFO2ZJkwopWJScapBjoH2ODr8djIHuBvrmxls=;
 b=Khpn18tM8lpckxlhP581yKVIWwONI2HOO1fOBTn5TKSLPy3Ih0xNumPh+I8eY95yRI
 aJoIl6aq+9uG3Iog9ApCxBqjOxiUN3CvB653/DchbeRmjFKwgK3R5mRcqhGnpcxpLubb
 dpxNIu8JaWKhrQBWYtRk3UewxVJZ/VcoVV9boHk/BGtquCyJD4rjyrGigsIiT6dVSrHW
 tE9ilxGaviSXmgJ2/Y5TaprHHGO+3msI7fT80/wiPbSXVLY0bkn/W8pEfaI7oZ6LzY2M
 oZMimKPVdUq6/h2wrTkoyuAIaNQWW6bJrRhVFWz8KcZB9OjuAqRZGp+Y8pN58zvSdcsG
 LPDA==
X-Gm-Message-State: AGi0PuZqv+WYKquWCHhGTQeFlT2s1cEw9DY3JqisObsbBwH4WhWva1Wk
 TWZ2/f5+p41uN5aPD6iKjCg=
X-Google-Smtp-Source: APiQypKlF0tkB910YoBZeknyoe9MlscvGyvM0R4uMbc7bEc9kOFPUpDJJ2pcEUb510HcPsDkqbHR4Q==
X-Received: by 2002:a65:4107:: with SMTP id w7mr2715562pgp.438.1588684697051; 
 Tue, 05 May 2020 06:18:17 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 g40sm2101882pje.38.2020.05.05.06.18.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 May 2020 06:18:15 -0700 (PDT)
Subject: Re: [PATCH v2 17/20] mm: free_area_init: allow defining max_zone_pfn
 in descending order
To: Mike Rapoport <rppt@kernel.org>
References: <20200429121126.17989-1-rppt@kernel.org>
 <20200429121126.17989-18-rppt@kernel.org>
 <20200503174138.GA114085@roeck-us.net> <20200503184300.GA154219@roeck-us.net>
 <20200504153901.GM14260@kernel.org>
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
Message-ID: <ca099c3e-c0bc-cd2f-cdb0-852dfc2c10db@roeck-us.net>
Date: Tue, 5 May 2020 06:18:11 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200504153901.GM14260@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_061818_268145_AE206F1C 
X-CRM114-Status: GOOD (  24.88  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 linux-doc@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, x86@kernel.org,
 Michal Hocko <mhocko@kernel.org>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Guo Ren <guoren@kernel.org>,
 Ley Foon Tan <ley.foon.tan@intel.com>, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, Greg Ungerer <gerg@linux-m68k.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, Baoquan He <bhe@redhat.com>,
 Jonathan Corbet <corbet@lwn.net>, linux-hexagon@vger.kernel.org,
 Helge Deller <deller@gmx.de>, linux-sh@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-csky@vger.kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Hoan Tran <Hoan@os.amperecomputing.com>, Mark Salter <msalter@redhat.com>,
 Matt Turner <mattst88@gmail.com>, linux-snps-arc@lists.infradead.org,
 uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
 Nick Hu <nickhu@andestech.com>, linux-alpha@vger.kernel.org,
 linux-um@lists.infradead.org, linux-mips@vger.kernel.org,
 Richard Weinberger <richard@nod.at>, linux-m68k@lists.linux-m68k.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Qian Cai <cai@lca.pw>,
 Greentime Hu <green.hu@gmail.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Stafford Horne <shorne@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, Michal Simek <monstr@monstr.eu>,
 Tony Luck <tony.luck@intel.com>, Yoshinori Sato <ysato@users.sourceforge.jp>,
 linux-parisc@vger.kernel.org, linux-mm@kvack.org,
 Vineet Gupta <vgupta@synopsys.com>, Brian Cain <bcain@codeaurora.org>,
 linux-kernel@vger.kernel.org, openrisc@lists.librecores.org,
 Michael Ellerman <mpe@ellerman.id.au>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 5/4/20 8:39 AM, Mike Rapoport wrote:
> On Sun, May 03, 2020 at 11:43:00AM -0700, Guenter Roeck wrote:
>> On Sun, May 03, 2020 at 10:41:38AM -0700, Guenter Roeck wrote:
>>> Hi,
>>>
>>> On Wed, Apr 29, 2020 at 03:11:23PM +0300, Mike Rapoport wrote:
>>>> From: Mike Rapoport <rppt@linux.ibm.com>
>>>>
>>>> Some architectures (e.g. ARC) have the ZONE_HIGHMEM zone below the
>>>> ZONE_NORMAL. Allowing free_area_init() parse max_zone_pfn array even it is
>>>> sorted in descending order allows using free_area_init() on such
>>>> architectures.
>>>>
>>>> Add top -> down traversal of max_zone_pfn array in free_area_init() and use
>>>> the latter in ARC node/zone initialization.
>>>>
>>>> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
>>>
>>> This patch causes my microblazeel qemu boot test in linux-next to fail.
>>> Reverting it fixes the problem.
>>>
>> The same problem is seen with s390 emulations.
> 
> Yeah, this patch breaks some others as well :(
> 
> My assumption that max_zone_pfn defines architectural limit for maximal
> PFN that can belong to a zone was over-optimistic. Several arches
> actually do that, but others do
> 
> 	max_zone_pfn[ZONE_DMA] = MAX_DMA_PFN;
> 	max_zone_pfn[ZONE_NORMAL] = max_pfn;
> 
> where MAX_DMA_PFN is build-time constrain and max_pfn is run time limit
> for the current system.
> 
> So, when max_pfn is lower than MAX_DMA_PFN, the free_init_area() will
> consider max_zone_pfn as descending and will wrongly calculate zone
> extents.
> 
> That said, instead of trying to create a generic way to special case
> ARC, I suggest to simply use the below patch instead.
> 

As a reminder, I reported the problem against s390 and microblazeel
(interestingly enough, microblaze (big endian) works), not against arc.

Guenter

> diff --git a/arch/arc/mm/init.c b/arch/arc/mm/init.c
> index 41eb9be1653c..386959bac3d2 100644
> --- a/arch/arc/mm/init.c
> +++ b/arch/arc/mm/init.c
> @@ -77,6 +77,11 @@ void __init early_init_dt_add_memory_arch(u64 base, u64 size)
>  		base, TO_MB(size), !in_use ? "Not used":"");
>  }
>  
> +bool arch_has_descending_max_zone_pfns(void)
> +{
> +	return true;
> +}
> +
>  /*
>   * First memory setup routine called from setup_arch()
>   * 1. setup swapper's mm @init_mm
> diff --git a/mm/page_alloc.c b/mm/page_alloc.c
> index b990e9734474..114f0e027144 100644
> --- a/mm/page_alloc.c
> +++ b/mm/page_alloc.c
> @@ -7307,6 +7307,15 @@ static void check_for_memory(pg_data_t *pgdat, int nid)
>  	}
>  }
>  
> +/*
> + * Some architecturs, e.g. ARC may have ZONE_HIGHMEM below ZONE_NORMAL. For
> + * such cases we allow max_zone_pfn sorted in the descending order
> + */
> +bool __weak arch_has_descending_max_zone_pfns(void)
> +{
> +	return false;
> +}
> +
>  /**
>   * free_area_init - Initialise all pg_data_t and zone data
>   * @max_zone_pfn: an array of max PFNs for each zone
> @@ -7324,7 +7333,7 @@ void __init free_area_init(unsigned long *max_zone_pfn)
>  {
>  	unsigned long start_pfn, end_pfn;
>  	int i, nid, zone;
> -	bool descending = false;
> +	bool descending;
>  
>  	/* Record where the zone boundaries are */
>  	memset(arch_zone_lowest_possible_pfn, 0,
> @@ -7333,14 +7342,7 @@ void __init free_area_init(unsigned long *max_zone_pfn)
>  				sizeof(arch_zone_highest_possible_pfn));
>  
>  	start_pfn = find_min_pfn_with_active_regions();
> -
> -	/*
> -	 * Some architecturs, e.g. ARC may have ZONE_HIGHMEM below
> -	 * ZONE_NORMAL. For such cases we allow max_zone_pfn sorted in the
> -	 * descending order
> -	 */
> -	if (MAX_NR_ZONES > 1 && max_zone_pfn[0] > max_zone_pfn[1])
> -		descending = true;
> +	descending = arch_has_descending_max_zone_pfns();
>  
>  	for (i = 0; i < MAX_NR_ZONES; i++) {
>  		if (descending)
> 
>> Guenter
>>
>>> qemu command line:
>>>
>>> qemu-system-microblazeel -M petalogix-ml605 -m 256 \
>>> 	-kernel arch/microblaze/boot/linux.bin -no-reboot \
>>> 	-initrd rootfs.cpio \
>>> 	-append 'panic=-1 slub_debug=FZPUA rdinit=/sbin/init console=ttyS0,115200' \
>>> 	-monitor none -serial stdio -nographic
>>>
>>> initrd:
>>> 	https://github.com/groeck/linux-build-test/blob/master/rootfs/microblazeel/rootfs.cpio.gz
>>> configuration:
>>> 	https://github.com/groeck/linux-build-test/blob/master/rootfs/microblazeel/qemu_microblazeel_ml605_defconfig
>>>
>>> Bisect log is below.
>>>
>>> Guenter
>>>
>>> ---
>>> # bad: [fb9d670f57e3f6478602328bbbf71138be06ca4f] Add linux-next specific files for 20200501
>>> # good: [6a8b55ed4056ea5559ebe4f6a4b247f627870d4c] Linux 5.7-rc3
>>> git bisect start 'HEAD' 'v5.7-rc3'
>>> # good: [068b80b68a670f0b17288c8a3d1ee751f35162ab] Merge remote-tracking branch 'drm/drm-next'
>>> git bisect good 068b80b68a670f0b17288c8a3d1ee751f35162ab
>>> # good: [46c70fc6a3ac35cd72ddad248dcbe4eee716d2a5] Merge remote-tracking branch 'drivers-x86/for-next'
>>> git bisect good 46c70fc6a3ac35cd72ddad248dcbe4eee716d2a5
>>> # good: [f39c4ad479a2f005f972a2b941b40efa6b9c9349] Merge remote-tracking branch 'rpmsg/for-next'
>>> git bisect good f39c4ad479a2f005f972a2b941b40efa6b9c9349
>>> # bad: [165d3ee0162fe28efc2c8180176633e33515df15] ipc-convert-ipcs_idr-to-xarray-update
>>> git bisect bad 165d3ee0162fe28efc2c8180176633e33515df15
>>> # good: [001f1d211ed2ed0f005838dc4390993930bbbd69] mm: remove early_pfn_in_nid() and CONFIG_NODES_SPAN_OTHER_NODES
>>> git bisect good 001f1d211ed2ed0f005838dc4390993930bbbd69
>>> # bad: [aaad7401bd32f10c1d591dd886b3a9b9595c6d77] mm/vmsan: fix some typos in comment
>>> git bisect bad aaad7401bd32f10c1d591dd886b3a9b9595c6d77
>>> # bad: [09f9d0ab1fbed85623b283995aa7a7d78daa1611] khugepaged: allow to collapse PTE-mapped compound pages
>>> git bisect bad 09f9d0ab1fbed85623b283995aa7a7d78daa1611
>>> # bad: [c942fc8a3e5088407bc32d94f554bab205175f8a] mm/vmstat.c: do not show lowmem reserve protection information of empty zone
>>> git bisect bad c942fc8a3e5088407bc32d94f554bab205175f8a
>>> # bad: [b29358d269ace3826d8521bea842fc2984cfc11b] mm/page_alloc.c: rename free_pages_check() to check_free_page()
>>> git bisect bad b29358d269ace3826d8521bea842fc2984cfc11b
>>> # bad: [be0fb591a1f1df20a00c8f023f9ca4891f177b0d] mm: simplify find_min_pfn_with_active_regions()
>>> git bisect bad be0fb591a1f1df20a00c8f023f9ca4891f177b0d
>>> # bad: [c17422a008d36dcf3e9f51469758c5762716cb0a] mm: rename free_area_init_node() to free_area_init_memoryless_node()
>>> git bisect bad c17422a008d36dcf3e9f51469758c5762716cb0a
>>> # bad: [51a2f644fd020d5f090044825c388444d11029d5] mm: free_area_init: allow defining max_zone_pfn in descending order
>>> git bisect bad 51a2f644fd020d5f090044825c388444d11029d5
>>> # first bad commit: [51a2f644fd020d5f090044825c388444d11029d5] mm: free_area_init: allow defining max_zone_pfn in descending order
> 


