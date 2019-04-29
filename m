Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFFA5EB53
	for <lists+linux-riscv@lfdr.de>; Mon, 29 Apr 2019 22:06:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZSxfzaKCBVbaHUMmIT+dMD3B5gjouv1trBnTZar4E2E=; b=BSAvgD/tzkgtZs
	zyR3eRM6TuhBIVWulVM/JubA7tNORTACqfie3SP80kkXWEjexfDsWDukx4ypxeSpijU0kVnEmMq4W
	Ea3cXThbI38SUi0I8lw+HKikL4ZbtiJlFuOkNXVG+fbl61tU+sZtw0H4sjAyfGQA/F4gPL6MT3Wfu
	L4BVJJaY6IkOO0w0Q6V1pQPZf9Oxs7/kXS2JzrdvotmL9n+n5fOmu8MCreJHI7RoVatQP0xxQeNyq
	9LcsyPYg25lFwo9Iq4QKJmU8BNvLIBEEH6wfuk9dY5hjzlw9EfCY/5nx74WUaUJJ3CLJNejWfiCKn
	UIP1E+G2N7UXbeIfN6cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLCXS-00075n-4k; Mon, 29 Apr 2019 20:06:10 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLCXJ-00074p-Jw
 for linux-riscv@lists.infradead.org; Mon, 29 Apr 2019 20:06:03 +0000
Received: by mail-wm1-x341.google.com with SMTP id n25so857743wmk.4
 for <linux-riscv@lists.infradead.org>; Mon, 29 Apr 2019 13:05:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3bA1GjyiOqhiuVg99bZFV+UdtqoiitioJOxxTtpTJvM=;
 b=hSNfUmq2FWt0hwGZGwRRx6ux4gGT19Z5mAXNwVuJXSN0QwcB9VBBQjDL8/gAfaXgqB
 PRlKgIyaEV14eqq9h9L4TUyYrd5sgX0pGXQdZc909GLHZU364d3jtzd7xrRSpqa9A11b
 D+Fs7K3AvlCcHWx8JTwPW3VZzB4DCl4bQlclAVlHOg4hc1KdEatZsLbKfVe8Z7vHPT9h
 LEKz9P0XxBAI+WUUh4KOezOQ/PkWGLnMO4oHEX0ohv3qDcS7KWvjVKizM2Xlp9Zpd7OX
 DZ2dAcF/7yL9BguEcP2PmPY8/G1Uz1NPA+EmHwCRlS5y9XWA4wBAg0gvQ7b2KYHtVEgX
 L0aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=3bA1GjyiOqhiuVg99bZFV+UdtqoiitioJOxxTtpTJvM=;
 b=Kbp6pmfa7sjXNed4N1oDQoy9tu3po0dYx+Dbgprg77s2Z39GeqN9/n2O8+2WfhjnTK
 62ksmdHYNq5GkZdDnaPpI3yRdrjlwM4QekcFfc6OM6mLV596yqiXkiYsw220X5WBmiDF
 fyi6A+dQV4lLqd2tdaHe8fkKJyDI4JF/cv9dAFS+enUsU8DLXtDTdfkadz0L53OM2E4p
 0wQcUUYxFo3xy6gGAZ+9B1L4iQq5mSrLjKeYbKbJhrCht05ACkm76DNnPU4ETL49xtF1
 33DtgDZDTmlds0Zn7sf1Z1ZgUzfcQTGRPfx/rFoYJNU1ufmJENSvmbpxzum9aA7EbzvC
 OKrw==
X-Gm-Message-State: APjAAAUflqBh/uY1tCHPrm77e76LxWMhtBmkLDvuet5amvzjqiHMzo1r
 WdCG7upIUErwxyD2oBmCPLk=
X-Google-Smtp-Source: APXvYqxGiHSnnNJ1a/9EZhUrXaRjPVCn9qMn/skaREokKLrBVmvLfqx2RSYt4Z2utXm9gg1l+N3zKw==
X-Received: by 2002:a1c:d7:: with SMTP id 206mr567213wma.69.1556568358168;
 Mon, 29 Apr 2019 13:05:58 -0700 (PDT)
Received: from gmail.com (2E8B0CD5.catv.pool.telekom.hu. [46.139.12.213])
 by smtp.gmail.com with ESMTPSA id c63sm762243wma.29.2019.04.29.13.05.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 13:05:57 -0700 (PDT)
Date: Mon, 29 Apr 2019 22:05:54 +0200
From: Ingo Molnar <mingo@kernel.org>
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH v2 1/3] x86: Move DEBUG_TLBFLUSH option.
Message-ID: <20190429200554.GA102486@gmail.com>
References: <20190429195759.18330-1-atish.patra@wdc.com>
 <20190429195759.18330-2-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190429195759.18330-2-atish.patra@wdc.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_130601_718351_790E9AE0 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.4 FSL_HELO_FAKE          No description available.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mingo.kernel.org[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: "maintainer:X86 ARCHITECTURE \(32-BIT AND 64-BIT\)" <x86@kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Thomas Gleixner <tglx@linutronix.de>,
 Kees Cook <keescook@chromium.org>, linux-mm@kvack.org,
 Anup Patel <anup@brainfault.org>, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 Changbin Du <changbin.du@intel.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Vlastimil Babka <vbabka@suse.cz>,
 Gary Guo <gary@garyguo.net>, "H. Peter Anvin" <hpa@zytor.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-riscv@lists.infradead.org,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


* Atish Patra <atish.patra@wdc.com> wrote:

> CONFIG_DEBUG_TLBFLUSH was added in 'commit 3df3212f9722 ("x86/tlb: add
> tlb_flushall_shift knob into debugfs")' to support tlb_flushall_shift
> knob. The knob was removed in 'commit e9f4e0a9fe27 ("x86/mm: Rip out
> complicated, out-of-date, buggy TLB flushing")'.  However, the debug
> option was never removed from Kconfig. It was reused in commit
> '9824cf9753ec ("mm: vmstats: tlb flush counters")' but the commit text
> was never updated accordingly.

Please, when you mention several commits, put them into new lines to make 
it readable, i.e.:

  3df3212f9722 ("x86/tlb: add tlb_flushall_shift knob into debugfs")

etc.

> Update the Kconfig option description as per its current usage.
> 
> Take this opprtunity to make this kconfig option a common option as it
> touches the common vmstat code. Introduce another arch specific config
> HAVE_ARCH_DEBUG_TLBFLUSH that can be selected to enable this config.

"opprtunity"?

> +config HAVE_ARCH_DEBUG_TLBFLUSH
> +	bool
> +	depends on DEBUG_KERNEL
> +
> +config DEBUG_TLBFLUSH
> +	bool "Save tlb flush statstics to vmstat"
> +	depends on HAVE_ARCH_DEBUG_TLBFLUSH
> +	help
> +
> +	Add tlbflush statstics to vmstat. It is really helpful understand tlbflush
> +	performance and behavior. It should be enabled only for debugging purpose
> +	by individual architectures explicitly by selecting HAVE_ARCH_DEBUG_TLBFLUSH.

"statstics"??

Please put a spell checker into your workflow or read what you are 
writing ...

Thanks,

	Ingo

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
