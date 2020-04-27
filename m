Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23DB41B9666
	for <lists+linux-riscv@lfdr.de>; Mon, 27 Apr 2020 07:05:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RpEFDruZhhlXBhX9QpFVEyfUVGVZWtywwb585yNz+7Y=; b=WWqTG7M5KkzaYc
	qktwf+/PlxnGSUD8H5aoxGLUiGXMyTV9TYIii0p6VN45ZdID74RSkuqYUB8cmnlUwggpAkyTctB08
	Y74eXuyXk3Ccw7WA2GaFZV2Vn+juALv8TjHlXWwDn9uBmUmchHJk8dfCZ3qqiA9SkKVMvMFZrd+JV
	WXF6LAOhRQmFsrupHyOfJJH3g0xwz94d4s+Vc4e1ITdaB2HrnZh/vDn3k8sdMBgWg8kvhdwyk9KKn
	Fz2AdsGkQO+LrZz78oBNkYvBdbHhI6Y6L/AyKV2UJ0lZA8D1E6VKWywJUzTyc4CPexIkMuYN4Hop8
	B3BfTGjXqsj3at1xw28g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSvwr-0004lK-EE; Mon, 27 Apr 2020 05:04:53 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSvwo-0004k7-Tj; Mon, 27 Apr 2020 05:04:52 +0000
Received: by mail-pj1-x1043.google.com with SMTP id mq3so7014106pjb.1;
 Sun, 26 Apr 2020 22:04:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=RpEFDruZhhlXBhX9QpFVEyfUVGVZWtywwb585yNz+7Y=;
 b=bT29SBfOK96SESehhTW4BCxtsJFVttVeoi/t0urpRpj0AFJ020vN2h1/7jbZohDiWY
 G+7rYY/cyjMWRX2nWM1nQUHRK5DYY0Z3Re/LQsmmL5pheEmdu3Z1rJ7IPvBhUWW1vcYA
 rRAUC3qAszhg7SieSVaXNxX3irqWsJ185lS+6xxGA+5B6PInlCzT3e4IzLqCdgG84LZT
 0O5T2gDAaSxEEY9ruwlPztv5j6dMcOK3Fxvpnkz0f3/jF7y8KJINeGHpr20aF1GemJoJ
 vZnP/QcZkHuVdvvx0xYhq+BbBscy9ve367kNA6XTMOpJq4QXGHxO/ZNnzNN5zxO0WihD
 fgVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RpEFDruZhhlXBhX9QpFVEyfUVGVZWtywwb585yNz+7Y=;
 b=DzRjgRJj1kh4iDymIPee3w2IwOUD2NkMrFpm7SNMQUWzxYzJA88im6Tlbi+YvwmM5D
 LML5y5iabzeRNAmLhTCJtsUgSsEOeZ3+XzkZCsTrDx7oY86lzsV76OkXpl0Rwkm0YGUH
 tRkXBObepob+4+BXdgF7GEybi7DUl116JczOCPF7BVPDefOrb3g7CBMoFWyvkjH9YVrb
 9+UfTzF8QL6m9uv8KK5oixA9STUPPgCj/y4HZGhrYVJ3L+D3dXpPwKi+ia7Jz+kqZDYa
 T4JlW2cuoL3/Lc/ljN6BZnzadPJwBh+yBJ+oxXAhSU98cx1M4igU6ibwAnMAtwMLCPiR
 P9mw==
X-Gm-Message-State: AGi0PuZC3i59JWzzlX+7m4MDmh6GNEU/31viWgQylNKwK4qqPQd5NGT+
 WAv+vprzIzyk0yX3boPcxIo=
X-Google-Smtp-Source: APiQypIf/qo/TUxxXd3N0x5q5i+APW/p3XTbnR6PLJskh1YyRzL4PAyXKe0dL0wTZKlCFIs0r3ai3g==
X-Received: by 2002:a17:90a:3f8e:: with SMTP id
 m14mr20357937pjc.92.1587963888745; 
 Sun, 26 Apr 2020 22:04:48 -0700 (PDT)
Received: from [192.168.0.102] ([49.205.220.192])
 by smtp.gmail.com with ESMTPSA id o21sm9822670pgk.16.2020.04.26.22.04.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 26 Apr 2020 22:04:48 -0700 (PDT)
Subject: Re: [PATCH v3 2/4] hugetlbfs: move hugepagesz= parsing to arch
 independent code
To: Mike Kravetz <mike.kravetz@oracle.com>
References: <20200417185049.275845-1-mike.kravetz@oracle.com>
 <20200417185049.275845-3-mike.kravetz@oracle.com>
From: Sandipan Das <sandipan.osd@gmail.com>
Message-ID: <7583dfcc-62d8-2a54-6eef-bcb4e01129b3@gmail.com>
Date: Mon, 27 Apr 2020 10:34:36 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200417185049.275845-3-mike.kravetz@oracle.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_220450_984206_17E8AF96 
X-CRM114-Status: GOOD (  18.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sandipan.osd[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-doc@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Peter Xu <peterx@redhat.com>,
 linux-mm@kvack.org, Paul Mackerras <paulus@samba.org>,
 sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, Mina Almasry <almasrymina@google.com>,
 linux-s390@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Longpeng <longpeng2@huawei.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Vasily Gorbik <gor@linux.ibm.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Nitesh Narayan Lal <nitesh@redhat.com>, Randy Dunlap <rdunlap@infradead.org>,
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S . Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Mike,

On 18/04/20 12:20 am, Mike Kravetz wrote:
> Now that architectures provide arch_hugetlb_valid_size(), parsing
> of "hugepagesz=" can be done in architecture independent code.
> Create a single routine to handle hugepagesz= parsing and remove
> all arch specific routines.  We can also remove the interface
> hugetlb_bad_size() as this is no longer used outside arch independent
> code.
> 
> This also provides consistent behavior of hugetlbfs command line
> options.  The hugepagesz= option should only be specified once for
> a specific size, but some architectures allow multiple instances.
> This appears to be more of an oversight when code was added by some
> architectures to set up ALL huge pages sizes.
> 
> [...]
> 
> diff --git a/arch/powerpc/mm/hugetlbpage.c b/arch/powerpc/mm/hugetlbpage.c
> index de54d2a37830..2c3fa0a7787b 100644
> --- a/arch/powerpc/mm/hugetlbpage.c
> +++ b/arch/powerpc/mm/hugetlbpage.c
> @@ -589,21 +589,6 @@ static int __init add_huge_page_size(unsigned long long size)
>  	return 0;
>  }
>  
> -static int __init hugepage_setup_sz(char *str)
> -{
> -	unsigned long long size;
> -
> -	size = memparse(str, &str);
> -
> -	if (add_huge_page_size(size) != 0) {
> -		hugetlb_bad_size();
> -		pr_err("Invalid huge page size specified(%llu)\n", size);
> -	}
> -
> -	return 1;
> -}
> -__setup("hugepagesz=", hugepage_setup_sz);
> -
> [...]

This isn't working as expected on powerpc64.

  [    0.000000] Kernel command line: root=UUID=dc7b49cf-95a2-4996-8e7d-7c64ddc7a6ff hugepagesz=16G hugepages=2 
  [    0.000000] HugeTLB: huge pages not supported, ignoring hugepagesz = 16G
  [    0.000000] HugeTLB: huge pages not supported, ignoring hugepages = 2
  [    0.284177] HugeTLB registered 16.0 MiB page size, pre-allocated 0 pages
  [    0.284182] HugeTLB registered 16.0 GiB page size, pre-allocated 0 pages
  [    2.585062]     hugepagesz=16G
  [    2.585063]     hugepages=2

The "huge pages not supported" messages are under a !hugepages_supported()
condition which checks if HPAGE_SHIFT is non-zero. On powerpc64, HPAGE_SHIFT
comes from the hpage_shift variable. At this point, it is still zero and yet
to be set. Hence the check fails. The reason being hugetlbpage_init_default(),
which sets hpage_shift, it now called after hugepage_setup_sz().


- Sandipan

