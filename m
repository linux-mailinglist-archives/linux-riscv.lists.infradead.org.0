Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2A845934
	for <lists+linux-riscv@lfdr.de>; Fri, 14 Jun 2019 11:49:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3IjbT6sBkm7pmQAZ9jpSvwR/bze08coNofW2PoGTrsQ=; b=jiy514QLc9RVfU
	picATwXtZF8mReneAIDM8W7d8Ja4p9FVvlBjWhf4nhaWzcx0yUqXrMz7cxoB9uANaTSCExmaYZ03W
	rN43jOMEezc96q+OrR72thUD516030+rhmbfMiSI1BnrokpXzPQT9m8x3Bcly6rWEfksHwQegIKN4
	6xrCwlZcfdVz6bPEB5LvuSSfEo75QqTqjhOq953o70Fbc21wO7FC37WM5mW1rh/dUKbJ8b3tT72C5
	3nWcfOEcPe4fif1rNoTDg2qWZNruKgAY0rp9K8okekhuDI17HYNi5zZvQRC8jq/R+jj8k0q/dvKHi
	tXmWzWNjprBgwg/kNE4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbipo-0006om-II; Fri, 14 Jun 2019 09:49:24 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbipj-0006mZ-Vd
 for linux-riscv@lists.infradead.org; Fri, 14 Jun 2019 09:49:21 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 8158F227A86; Fri, 14 Jun 2019 11:48:48 +0200 (CEST)
Date: Fri, 14 Jun 2019 11:48:47 +0200
From: Christoph Hellwig <hch@lst.de>
To: Vladimir Murzin <vladimir.murzin@arm.com>
Subject: Re: [PATCH 02/17] mm: stub out all of swapops.h for !CONFIG_MMU
Message-ID: <20190614094847.GI17292@lst.de>
References: <20190610221621.10938-1-hch@lst.de>
 <20190610221621.10938-3-hch@lst.de>
 <516c8def-22db-027c-873d-a943454e33af@arm.com>
 <20190611141841.GA29151@lst.de>
 <80d01a1d-b6b0-18e8-811c-71af14cba3b9@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <80d01a1d-b6b0-18e8-811c-71af14cba3b9@arm.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_024920_188164_A5E55AF1 
X-CRM114-Status: UNSURE (   7.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, uclinux-dev@uclinux.org,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 03:36:53PM +0100, Vladimir Murzin wrote:
> It looks like NOMMU ports tend to define those. For ARM they are:
> 
> #define __swp_type(x)           (0)
> #define __swp_offset(x)         (0)
> #define __swp_entry(typ,off)    ((swp_entry_t) { ((typ) | ((off) << 7)) })
> #define __pte_to_swp_entry(pte) ((swp_entry_t) { pte_val(pte) })
> #define __swp_entry_to_pte(x)   ((pte_t) { (x).val })
> 
> Anyway, I have no strong opinion on which is better :)

It just seems a lot easier to stub out swapops.h rather than providing
stubs in each arch so that inlines which we are never going to use can
build.  I can look into dropping this from the other nommu ports for
the next merge window, though.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
