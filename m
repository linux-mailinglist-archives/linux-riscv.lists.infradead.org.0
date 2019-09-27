Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E77AC0DEE
	for <lists+linux-riscv@lfdr.de>; Sat, 28 Sep 2019 00:19:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EAVt/hRGF6hU9U5P+4vBxmoJP9/J6tzfKhyL7CXAfgY=; b=U532EH8q4pvtD/
	5e4hzHVto4nOHpxCItbPAy4Q7e12mSDEWA4A/6GKNfAFXrc6JhzZMSAiRJPFAxfE0G1PR0iW7lBSg
	B725wtiGs9xLbJCKvHVLbEYGXP+PhcAuJaMpShG/C9fXuRAAPSAPKns+gb6pIx7hOAq1C4dW/ZVTV
	A6cAT75ude8gh19MjUv3qvf6WJltIleUD7sDgjNCFfwzK0vs28Gug9w9t1Cqwy9PsjPs7erNrXL6G
	MIuxuHfc/3tEsithSDr8CrtyOA2ex3ggNw6y9PCwLVOzyDUswQzzr25QyQ4xmb2VUH8ndiIHyDSos
	J1ZA9OH2xfPpy7hlc62Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDya4-0001I4-4c; Fri, 27 Sep 2019 22:19:16 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red
 Hat Linux)) id 1iDya1-0001HT-7d; Fri, 27 Sep 2019 22:19:13 +0000
Date: Fri, 27 Sep 2019 15:19:13 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH v2 0/3] Add support for SBI v0.2
Message-ID: <20190927221913.GA4700@infradead.org>
References: <20190927000915.31781-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190927000915.31781-1-atish.patra@wdc.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Alan Kao <alankao@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Anup Patel <anup@brainfault.org>, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Gary Guo <gary@garyguo.net>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Sep 26, 2019 at 05:09:12PM -0700, Atish Patra wrote:
> The Supervisor Binary Interface(SBI) specification[1] now defines a
> base extension that provides extendability to add future extensions
> while maintaining backward compatibility with previous versions.
> The new version is defined as 0.2 and older version is marked as 0.1.
> 
> This series adds support v0.2 and a unified calling convention
> implementation between 0.1 and 0.2. It also adds minimal SBI functions
> from 0.2 as well to keep the series lean. 

So before we do this game can be please make sure we have a clean 0.2
environment that never uses the legacy extensions as discussed before?
Without that all this work is rather futile.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
