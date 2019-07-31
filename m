Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F26EE7CA84
	for <lists+linux-riscv@lfdr.de>; Wed, 31 Jul 2019 19:33:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/oVoKs+cIt9u3O6SvtfXepLw8g3Sg/6Ca5vrANdR4Wo=; b=suJKumrVKZsCF3
	oC8wzADCLClTT3md0zrEBe2UiWE2hwVFf78Gf9yzHuBibKjkdE2qDpewAyAXSX6g62VdPIJS0Esov
	citL3vL/GUxYyQfoPRTAt11d2CNZJzbLLwKaR8htEOufYfHwZZj1rFT76N8kIMMblAEoPbyvHLTBJ
	DF+Vhiurkh78je52C+F6vP6zg8gF/VLcbBmcmy6C/WWa5beAhgZ43slV+SOKLI3l+LZTGVx/9QiYn
	wx1Gcf5yZMpmcW6coN/iEpcFZco/c8G/3A5koODwl20CjoxWG0+w7oHspGQWD2ZWt/uKbBqHA6Jon
	bmbxltxNWTyy3j+LCm8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hssTn-0002wF-RA; Wed, 31 Jul 2019 17:33:35 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hssTd-0002nY-Ff; Wed, 31 Jul 2019 17:33:27 +0000
Received: by mail-pg1-x543.google.com with SMTP id u17so32388232pgi.6;
 Wed, 31 Jul 2019 10:33:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1mUzN69TbVh9yZT+F3MQDO+6tQ5Mp+B1rUEtD2T6Huc=;
 b=YOxge0Yl9i70G+adD8fcIAQFr/+MKP/AFeajQGmNOUU3PSBiJFy13XEVeByt0H23Fm
 eQzDcQe68Apu1iZpVUkzBjb1K8sNEmZZT1vTc0iVLJa71adt7IaZsg7HXfFrupSDvu2t
 /AbaO7TzbQzEOfsYUnbE8+0dT8MWRwsp1fjykU0avS6hF4Jk57q5gwhJWRcTwnruRx8D
 PzGi9hcvi/tT1aDkbKf0dLDit1UyoCPYI0SUX4i4V74v4YxmWPog8KRGZn0aniBLbdUA
 HNRGCy5jpKlcLfKvyalbj8kL5hQfmFY6LXC6ZzkipEieZEKSDhpcT5WZw6P56IE6NcoA
 AxYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=1mUzN69TbVh9yZT+F3MQDO+6tQ5Mp+B1rUEtD2T6Huc=;
 b=UTrC3aTTe+f9EdgEjNu/NDeUPwyGR1E+HkpyNsk0JQxgpBdnRm4CMvoKplkv7MDO+A
 +BwXmT+lPrl/KCDj5bTr1qVkoz2GGhLt3M5GfnNa3OwYMBNmQztU6sIHReXViaDCNDV9
 4v9fEEe5fJEEDgSf3iQhmkNxddmYNml1HQGRizUcpmFJCNfYI6P3kUOefBHHv5BQsX5V
 fOz47k73qW44mVsIe7O37+ujvgjbjdhbnvX3Ae+DV+y88vXNupzrWRpxZCYnzET/1/xo
 RSnn6SjXSeZxcY04QZUDoayFgGtcqNhuFZsKVcXov6lqJQJkmk00Xum4Ul9MKQ70HeNf
 ku5Q==
X-Gm-Message-State: APjAAAVaazAfBqG4pNVioF+c8oWZXwMaFUzF76ZmLT8/RyoHAOecvR3p
 i5veU02nI6D07UWjd/mCH8A=
X-Google-Smtp-Source: APXvYqwzc3V4hpBjzjfpPb1vXFYPZ0Qeb7PGWHW8bph0fdJAOdbQdQV14uAoPp6X+iZ/zBHaMBAOoQ==
X-Received: by 2002:a62:7d13:: with SMTP id y19mr48612603pfc.62.1564594404588; 
 Wed, 31 Jul 2019 10:33:24 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id e10sm71043899pfi.173.2019.07.31.10.33.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 10:33:23 -0700 (PDT)
Date: Wed, 31 Jul 2019 10:33:22 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Alex Ghiti <alex@ghiti.fr>
Subject: Re: [PATCH v5 14/14] riscv: Make mmap allocation top-down by default
Message-ID: <20190731173322.GA30870@roeck-us.net>
References: <20190730055113.23635-1-alex@ghiti.fr>
 <20190730055113.23635-15-alex@ghiti.fr>
 <88a9bbf8-872f-97cc-fc1a-83eb7694478f@ghiti.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <88a9bbf8-872f-97cc-fc1a-83eb7694478f@ghiti.fr>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_103325_522743_0031DB39 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Russell King <linux@armlinux.org.uk>,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Luis Chamberlain <mcgrof@kernel.org>,
 linux-riscv@lists.infradead.org, Paul Burton <paul.burton@mips.com>,
 James Hogan <jhogan@kernel.org>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linux-mips@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 02:05:23AM -0400, Alex Ghiti wrote:
> On 7/30/19 1:51 AM, Alexandre Ghiti wrote:
> >In order to avoid wasting user address space by using bottom-up mmap
> >allocation scheme, prefer top-down scheme when possible.
> >
> >Before:
> >root@qemuriscv64:~# cat /proc/self/maps
> >00010000-00016000 r-xp 00000000 fe:00 6389       /bin/cat.coreutils
> >00016000-00017000 r--p 00005000 fe:00 6389       /bin/cat.coreutils
> >00017000-00018000 rw-p 00006000 fe:00 6389       /bin/cat.coreutils
> >00018000-00039000 rw-p 00000000 00:00 0          [heap]
> >1555556000-155556d000 r-xp 00000000 fe:00 7193   /lib/ld-2.28.so
> >155556d000-155556e000 r--p 00016000 fe:00 7193   /lib/ld-2.28.so
> >155556e000-155556f000 rw-p 00017000 fe:00 7193   /lib/ld-2.28.so
> >155556f000-1555570000 rw-p 00000000 00:00 0
> >1555570000-1555572000 r-xp 00000000 00:00 0      [vdso]
> >1555574000-1555576000 rw-p 00000000 00:00 0
> >1555576000-1555674000 r-xp 00000000 fe:00 7187   /lib/libc-2.28.so
> >1555674000-1555678000 r--p 000fd000 fe:00 7187   /lib/libc-2.28.so
> >1555678000-155567a000 rw-p 00101000 fe:00 7187   /lib/libc-2.28.so
> >155567a000-15556a0000 rw-p 00000000 00:00 0
> >3fffb90000-3fffbb1000 rw-p 00000000 00:00 0      [stack]
> >
> >After:
> >root@qemuriscv64:~# cat /proc/self/maps
> >00010000-00016000 r-xp 00000000 fe:00 6389       /bin/cat.coreutils
> >00016000-00017000 r--p 00005000 fe:00 6389       /bin/cat.coreutils
> >00017000-00018000 rw-p 00006000 fe:00 6389       /bin/cat.coreutils
> >2de81000-2dea2000 rw-p 00000000 00:00 0          [heap]
> >3ff7eb6000-3ff7ed8000 rw-p 00000000 00:00 0
> >3ff7ed8000-3ff7fd6000 r-xp 00000000 fe:00 7187   /lib/libc-2.28.so
> >3ff7fd6000-3ff7fda000 r--p 000fd000 fe:00 7187   /lib/libc-2.28.so
> >3ff7fda000-3ff7fdc000 rw-p 00101000 fe:00 7187   /lib/libc-2.28.so
> >3ff7fdc000-3ff7fe2000 rw-p 00000000 00:00 0
> >3ff7fe4000-3ff7fe6000 r-xp 00000000 00:00 0      [vdso]
> >3ff7fe6000-3ff7ffd000 r-xp 00000000 fe:00 7193   /lib/ld-2.28.so
> >3ff7ffd000-3ff7ffe000 r--p 00016000 fe:00 7193   /lib/ld-2.28.so
> >3ff7ffe000-3ff7fff000 rw-p 00017000 fe:00 7193   /lib/ld-2.28.so
> >3ff7fff000-3ff8000000 rw-p 00000000 00:00 0
> >3fff888000-3fff8a9000 rw-p 00000000 00:00 0      [stack]
> >
> >Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
> >Reviewed-by: Christoph Hellwig <hch@lst.de>
> >Reviewed-by: Kees Cook <keescook@chromium.org>
> >Reviewed-by: Luis Chamberlain <mcgrof@kernel.org>
> >---
> >  arch/riscv/Kconfig | 13 +++++++++++++
> >  1 file changed, 13 insertions(+)
> >
> >diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> >index 8ef64fe2c2b3..8d0d8af1a744 100644
> >--- a/arch/riscv/Kconfig
> >+++ b/arch/riscv/Kconfig
> >@@ -54,6 +54,19 @@ config RISCV
> >  	select EDAC_SUPPORT
> >  	select ARCH_HAS_GIGANTIC_PAGE
> >  	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
> >+	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
> >+	select HAVE_ARCH_MMAP_RND_BITS
> >+
> >+config ARCH_MMAP_RND_BITS_MIN
> >+	default 18 if 64BIT
> >+	default 8
> >+
> >+# max bits determined by the following formula:
> >+#  VA_BITS - PAGE_SHIFT - 3
> >+config ARCH_MMAP_RND_BITS_MAX
> >+	default 33 if RISCV_VM_SV48
> >+	default 24 if RISCV_VM_SV39
> >+	default 17 if RISCV_VM_SV32
> >  config MMU
> >  	def_bool y
> 
> 
> Hi Andrew,
> 
> I have just seen you took this series into mmotm but without Paul's patch
> ("riscv: kbuild: add virtual memory system selection") on which this commit
> relies, I'm not sure it could
> compile without it as there is no default for ARCH_MMAP_RND_BITS_MAX.
> 
Yes, this patch results in a bad configuration file.

CONFIG_ARCH_MMAP_RND_BITS_MIN=18
CONFIG_HAVE_ARCH_MMAP_RND_BITS=y
CONFIG_ARCH_MMAP_RND_BITS=0

CONFIG_ARCH_MMAP_RND_BITS=0 is outside the valid range, causing make to ask
for a valid number. Since none exists, one is stuck with something like:

Number of bits to use for ASLR of mmap base address (ARCH_MMAP_RND_BITS) [0] (NEW) 1
Number of bits to use for ASLR of mmap base address (ARCH_MMAP_RND_BITS) [0] (NEW) 2
Number of bits to use for ASLR of mmap base address (ARCH_MMAP_RND_BITS) [0] (NEW) 3
Number of bits to use for ASLR of mmap base address (ARCH_MMAP_RND_BITS) [0] (NEW) 4
Number of bits to use for ASLR of mmap base address (ARCH_MMAP_RND_BITS) [0] (NEW) 5
Number of bits to use for ASLR of mmap base address (ARCH_MMAP_RND_BITS) [0] (NEW) 6
Number of bits to use for ASLR of mmap base address (ARCH_MMAP_RND_BITS) [0] (NEW) 7
Number of bits to use for ASLR of mmap base address (ARCH_MMAP_RND_BITS) [0] (NEW) 8
Number of bits to use for ASLR of mmap base address (ARCH_MMAP_RND_BITS) [0] (NEW) 19
Number of bits to use for ASLR of mmap base address (ARCH_MMAP_RND_BITS) [0] (NEW) 18

when trying to compile riscv images. Plus, of course, all automatic builders
bail out as result. 

Guenter

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
