Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E74EAAE389
	for <lists+linux-riscv@lfdr.de>; Tue, 10 Sep 2019 08:14:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rLbuUx811eOTZPiabxEhzwMpo8+uL/w2JtA4w/B06bg=; b=YPYN9xkQBFI1Na
	fQaAXB6huRIwYkR/NtLrjILjBYzelKFyLU0clckdAj1MaTw9bcNr3NweP8GSptrWM2agg2Xu574gC
	nGQtj5555O4IIvWOG+kp2y2uzZVDFuMdKOr+wiJXK78QIMWFja92/nFNL4yzdiWTssQuBalxMKOAZ
	R0ocM8QXMWyzDkc4Kx2FcRjgOK486QDnZRVpkVQ86OJVTJnPfH+5qxlsb973/Q8PktJ4ctHHdJYlW
	NBPUgfb/ig/sqmgMyBwD8Cfgyn1YVhyqmeJV5LHBO6HfYyV20RR0F9x83fcqrMogk6BTm+iWHi5rn
	jY7l45elJSFciSIic3zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7ZQD-0005nU-HY; Tue, 10 Sep 2019 06:14:37 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i7ZQ7-0005nI-MC; Tue, 10 Sep 2019 06:14:31 +0000
Date: Mon, 9 Sep 2019 23:14:31 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Bin Meng <bmeng.cn@gmail.com>
Subject: Re: [PATCH v2] riscv: dts: sifive: Drop "clock-frequency" property
 of cpu nodes
Message-ID: <20190910061431.GB10968@infradead.org>
References: <1567687553-22334-1-git-send-email-bmeng.cn@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567687553-22334-1-git-send-email-bmeng.cn@gmail.com>
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
Cc: linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Sep 05, 2019 at 05:45:53AM -0700, Bin Meng wrote:
> The "clock-frequency" property of cpu nodes isn't required. Drop it.
> 
> Signed-off-by: Bin Meng <bmeng.cn@gmail.com>

Looks good:

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
