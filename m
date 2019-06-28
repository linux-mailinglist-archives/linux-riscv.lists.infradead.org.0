Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B74593A1
	for <lists+linux-riscv@lfdr.de>; Fri, 28 Jun 2019 07:47:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FVYQK31NkCkCpLBwlcycQLUmyyHwGensBP+PnsuExy0=; b=ltYMlNAoACX0F5
	TjUSQpOfv1RgtdqZd4m2org6Xo3bx010gXRBNGCtY4rExWLWZ9n5F0BPkMHAe3oLcBvVcJJz1406p
	u8AnLDBE/dKxGR1KZIQd5VBpoWvppju+5akwAIsI/xiMMYGnxN01nNzVdaNzyAIo8+NwB9yWeNWjs
	9noabwFCNINnANCdbZ6zfkPBV83yclgnGhUM1Zfa5G+M5bQz6P1X9FyGyHJlqYD9tyjLXIoCePvTT
	IzfupmSQLOQo/65twzRVyY5y8myBKrV8PA0E6Ls7Hh7oGFbh7z0p1g7MYx12Niw0gsROZEuHUsGwe
	gRm2NEx1/+DqZ7hByHNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgjjc-0003J2-4E; Fri, 28 Jun 2019 05:47:44 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgjjY-0003IC-Kk
 for linux-riscv@lists.infradead.org; Fri, 28 Jun 2019 05:47:41 +0000
Received: by mail-io1-xd42.google.com with SMTP id j6so10029157ioa.5
 for <linux-riscv@lists.infradead.org>; Thu, 27 Jun 2019 22:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=JonNVAGavnRlJhh68LVsFtVqprQdtcLj2PTjdYw2e9k=;
 b=lmpx8dS8SmmI+bod4CIGHygIhMfXqrGVR8dl/YJdRJFestIpTr/2lSxlvkarvtECIz
 jx6ZaHJ4aIqG/48rZvDj+pl6lnRoAg9OZ9mxYeLRu+N9SYpUGe3wfh4MU68CNNoASNHc
 CGNxA2syIdCf+HG0oxmfLEi5SFjUdX3hg9TniJxA+g7sQYNxfgMtpYyJie9GQC9bxwvC
 cReJnEEoKLA8nTHOoZ5SvxX9pXWN/Xc6nNnzVxLP0Q0BGFsjFwe1RkKw61gfOyGVyCmv
 qoJTVQu/+2v//+Sk7Cwc3qJ9hw8ZgudhaYDERLiqQNqOdyIAwuu6iSAeKjQ6bW/nLZQu
 bTRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=JonNVAGavnRlJhh68LVsFtVqprQdtcLj2PTjdYw2e9k=;
 b=IsNJkrgB9ESGMggb8LLhWsHzJk7ZUgHXnaHAxKRQUw+LEnKjKTSifcoNnGdC18hsOS
 1gva3dRrn4YHs0Xw5/cwwPzsoncq8vanZfUwPmAuNSRTYiBKRVNWFDGbkyWbyZ8pQu6x
 3pKSA5C9QKXBvVBzj+hWttQv90nCTRIF1y0NWhyExWbPrSO1pgf5UldOLGwV60xUTGxY
 fUKgxtPFBf4H6Sw0Px04n428PdBIV/VSkhi2q6FjRRNtM9+su8w2NC37R8rYu9vx3DZg
 +zABVO4/51ctRkc+dIYxjz3CgDida94fFThYMUbzU7L4I/tj7ES6M83H01yyzEzC9qRs
 /JaA==
X-Gm-Message-State: APjAAAWvkzM98F3IBaEdbF3ZwKQ2CwCrXCTy/3m305W0MQ/Xfhoa2NhW
 VYpwkXYjecJQvuHJsh0wbsAW/w==
X-Google-Smtp-Source: APXvYqxSBxEznv5crFBLQNZa0Y7NNPYl7akgvsmNh/b7ftqbAIdgqF6gL+AZSuyVieJq0WKR7ZDQsQ==
X-Received: by 2002:a5d:8195:: with SMTP id u21mr9407119ion.260.1561700858671; 
 Thu, 27 Jun 2019 22:47:38 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 t4sm1064999ioj.26.2019.06.27.22.47.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 27 Jun 2019 22:47:38 -0700 (PDT)
Date: Thu, 27 Jun 2019 22:47:37 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <atish.patra@wdc.com>, Ingo Molnar <mingo@redhat.com>
Subject: Re: [PATCH v3 1/3] x86: Move DEBUG_TLBFLUSH option.
In-Reply-To: <20190429212750.26165-2-atish.patra@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1906272236550.3867@viisi.sifive.com>
References: <20190429212750.26165-1-atish.patra@wdc.com>
 <20190429212750.26165-2-atish.patra@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_224740_680244_726AA8E4 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "maintainer:X86 ARCHITECTURE 32-BIT AND 64-BIT" <x86@kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 linux-mm@kvack.org, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@infradead.org>,
 Changbin Du <changbin.du@intel.com>, Borislav Petkov <bp@alien8.de>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Gary Guo <gary@garyguo.net>,
 "H. Peter Anvin" <hpa@zytor.com>, Thomas Gleixner <tglx@linutronix.de>,
 Andrew Morton <akpm@linux-foundation.org>, Vlastimil Babka <vbabka@suse.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 29 Apr 2019, Atish Patra wrote:

> CONFIG_DEBUG_TLBFLUSH was added in
> 
> 'commit 3df3212f9722 ("x86/tlb: add tlb_flushall_shift knob into debugfs")'
> to support tlb_flushall_shift knob. The knob was removed in
> 
> 'commit e9f4e0a9fe27 ("x86/mm: Rip out complicated, out-of-date, buggy
> TLB flushing")'.
> However, the debug option was never removed from Kconfig. It was reused
> in commit
> 
> '9824cf9753ec ("mm: vmstats: tlb flush counters")'
> but the commit text was never updated accordingly.
> 
> Update the Kconfig option description as per its current usage.
> 
> Take this opportunity to make this kconfig option a common option as it
> touches the common vmstat code. Introduce another arch specific config
> HAVE_ARCH_DEBUG_TLBFLUSH that can be selected to enable this config.

Looks like this one still needs to be merged or acked by one of the x86 
maintainers?


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
