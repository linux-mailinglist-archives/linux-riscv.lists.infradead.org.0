Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D52DF83E18
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 02:02:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FzGSGnQuqdiTpCpfbIbJ8r7My9C5rVf/WP/UV4nWzhg=; b=Ldq7AO4mfjqgLi
	JK7AkM3st4kvHLscncQzZGO96z9KLLbxjqAdx/lznKySYIfG7ML8Lr0N1w5B/6dx81vF1PbtutHdP
	rAbZ7sPvz5Fg/w9DRK3UJ+UF2Krss1M7OHN7gxqhrtnz3ZKcOk+dsQjFsYQbGx31l/KfnkYeLkxLD
	l7KgRc8B/6oCB3hKLTORYQukFstrxMilLB2zpwwwBn3nX/CS63T9x7PyJHBywCaDAOOSWXBvZkcAR
	ld2XDAVCRPtukOe8VlXEEujnq3FVINiKtHvx5HP6PI78sHolGkniEeRA9Udt1ODq240YvB+gbBWKH
	LPXvyyNqVZGTa2xHTYdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv9P8-0004uu-OP; Wed, 07 Aug 2019 00:02:10 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv9P4-0004u8-4b
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 00:02:07 +0000
Received: by mail-ot1-x344.google.com with SMTP id d17so97267433oth.5
 for <linux-riscv@lists.infradead.org>; Tue, 06 Aug 2019 17:02:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=EsLJ2/WO+JOrpoglqRsrGS0vmJibi9voB0KhRKPNQUg=;
 b=feHop8KeJUz1KDFucXnATMzna85iQds8u7MC4cAVeZqxlp/qlB8phz6FXT9QG1Lg7o
 r3RPSMpLym1QeKcCeS2yigwu+N8+rPhCjC3GJmBUp5pCPvvNq4HObxmQlTCGFqiF32s9
 dLYh9E4Dyi4tSzEsXZECs+3s9UT4KOZpTYzaVk0Al/apddubi5Z0jmYLkSV9ue59GZyJ
 gsfzDl6uS/64YZf7/lzRxcuprGZ3547IB/2SZuPSS1K0Vdfx7tTyZuLqmV9AkJUJ33g2
 cki7Vi5G6YkxCxNYtskVnT7WwROwaLVriEgHMD7nvbNb/qbsld2osBi6G4bAEikG2t3e
 f/cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=EsLJ2/WO+JOrpoglqRsrGS0vmJibi9voB0KhRKPNQUg=;
 b=iooMihmxS+UfOZ1WOqTFajAH9wrm2S3Lek2mUysyYXV6BnfRmlImQbGimkNexpgFPR
 vFuYmHuzE5NsmbBNrAkgl7DZdyyHN5IjiapDszQVsfbRA4sJDd9LkympFzK+aE7wAc0f
 a3mh9bggPLgdmpd+pnKOEhpmWmf5W8oT6bECy5eq7Vvf38KSkZlpISciUVzeBwtsFWPC
 kKUEyQf+FKlD7J2vHnqXN6bZIFGiTFCcPNOCkE8uVorYv9M6bSDfkJgUQyvFyEe4R1d9
 FzcxdDYNYLZ4LGUG0UREMTlQLXtZphfp3O7NEDCpadYKR/CCK+mXg6inVzxCh/fnk3td
 qQyA==
X-Gm-Message-State: APjAAAWPzqAiuTILiO0pCYDfbiIdDDOHFFkO/dajl7XS5cFDZtemlqYf
 XmFBKr8OZ2tOARKDXjxkPJ3uCQ==
X-Google-Smtp-Source: APXvYqzBQs0khY8qe+AqoyOpzrk/0CG77v1CoPKjVxs9FbYTqqUqRYV4cypEJ/zJSoB8fbxNMi61Lw==
X-Received: by 2002:a6b:ed01:: with SMTP id n1mr6572247iog.255.1565136125193; 
 Tue, 06 Aug 2019 17:02:05 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 p3sm76970566iog.70.2019.08.06.17.02.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 17:02:04 -0700 (PDT)
Date: Tue, 6 Aug 2019 17:02:03 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH] riscv: kbuild: add virtual memory system selection
In-Reply-To: <20190802084453.GA1410@infradead.org>
Message-ID: <alpine.DEB.2.21.9999.1908061648220.13971@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1907261259420.26670@viisi.sifive.com>
 <20190802084453.GA1410@infradead.org>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_170206_246699_44492D6F 
X-CRM114-Status: GOOD (  18.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 Alexandre Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 2 Aug 2019, Christoph Hellwig wrote:

> On Fri, Jul 26, 2019 at 01:00:49PM -0700, Paul Walmsley wrote:
> > 
> > The RISC-V specifications currently define three virtual memory
> > translation systems: Sv32, Sv39, and Sv48.  Sv32 is currently specific
> > to 32-bit systems; Sv39 and Sv48 are currently specific to 64-bit
> > systems.  The current kernel only supports Sv32 and Sv39, but we'd
> > like to start preparing for Sv48.  As an initial step, allow the
> > virtual memory translation system to be selected via kbuild, and stop
> > the build if an option is selected that the kernel doen't currently
> > support.
> > 
> > This patch currently has no functional impact.
> 
> It cause the user to be able to select a config which thus won't build.
> So it is not just useless, which already is a reason not to merge it,

The rationale is to encourage others to start laying the groundwork for 
future Sv48 support.  The immediate trigger for it was Alex's mmap 
randomization support patch series, which needs to set some Kconfig 
options differently depending on the selection of Sv32/39/48.  

> but actively harmful, which is even worse.

Reflecting on this assertion, the only case that I could come up with is 
that randconfig or allyesconfig build testing could fail.  Is this the 
case that you're thinking of, or is there a different one?  If that's the 
one, I do agree that it would be best to avoid this case, and it looks 
like there's no obvious way to work around that issue.

> Even if we assume we want to implement Sv48 eventually (which seems
> to be a bit off), we need to make this a runtime choice and not a
> compile time one to not balloon the number of configs that distributions
> (and kernel developers) need to support.

The expectation is that kernels that support multiple virtual memory 
system modes at runtime will probably incur either a performance or a 
memory layout penalty for doing so.  So performance-sensitive embedded 
applications will select only the model that they use, while distribution 
kernels will likely take the performance hit for broader single-kernel 
support.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
