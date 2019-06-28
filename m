Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CBFA59407
	for <lists+linux-riscv@lfdr.de>; Fri, 28 Jun 2019 08:11:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R4pqp/tQgACow6UUJUb6sWWUm3T7FWXIcB1Jk/9/if8=; b=q6BoXewrbHoMTL
	JE1DzJuZbfCbQ60Hh2WqKlefQhnBeYulZKG0/ELkh9AayRTEV9SxSWgMteXLEsvq15dO4BBuN6rvj
	2z2aZkHgrgep1C8pAxIXVQQU7JpKg+K9rAe7D5gD6Q9BbuFezAuzA0bH0tcjaC7vc1PG+U+S1gAJ6
	/k0+EXLRaQJOeFLR1xRWlJewQY9ZXKXJJBLQc7nqF2r1kdV/jtACAu0RL7jx+r+wOkwsU5NI9Ia+d
	aXsKw54ypFDnze5+hAnpTA++5YMMUIJmFT8IENKcox4BvUnZ8yC/1FWKoEpGdFeCjncCapgLmbupT
	JEg+kjo4JU8lObsTG7rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgk6I-000445-NJ; Fri, 28 Jun 2019 06:11:10 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hgk6G-00043w-BW; Fri, 28 Jun 2019 06:11:08 +0000
Date: Thu, 27 Jun 2019 23:11:08 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Palmer Dabbelt <palmer@sifive.com>
Subject: Re: [PATCH] MAINTAINERS: Add Paul as a RISC-V maintainer
Message-ID: <20190628061108.GA9834@infradead.org>
References: <20190628002753.5573-1-palmer@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190628002753.5573-1-palmer@sifive.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

>  RISC-V ARCHITECTURE
> +M:	Paul Walmsley <paul.walmsley@sifive.com>
>  M:	Palmer Dabbelt <palmer@sifive.com>
>  M:	Albert Ou <aou@eecs.berkeley.edu>

Is Albert going to come back to actively maintain anything?  I've
not actually seen him active ever since the port went mainline.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
