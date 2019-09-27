Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F85C0DF7
	for <lists+linux-riscv@lfdr.de>; Sat, 28 Sep 2019 00:21:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wrzJZQ5gAsHrhF1ql91dZBUN3j0B8QLpcz1jpj7M2DE=; b=DxmqBCKZHawceG
	2XNO7lzCy/C8F19hnYnKrV2v0bZz9rAflt4okv3VZ/FAebo43KS9pyPXQ7vNSjWD0cnAqr5AaEd8M
	NuCrpz/0WfjWCNlsPSm+wOzVTE7Jq9cvN3wBZZckHd+HgHwQXCpEKWLDVKS0dQKbrzSrpRUlzcT1R
	oRRxKSIJc2gpBajxTLO5SXPlytX+dGv2O/e6TyNBcZVjBmOhSmauITl5QO8pGIc5IOIM7c0mpBbcp
	YzgsGU5xFqrAC4bwvUnr20VkPmkDyuI5S3sQ5po7DoYIAIMWh0WXYtNwENAULGRaOQ7ZfG6DdsJFp
	37C/hQ5AtPmRRFzHtTdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDybu-0002it-LR; Fri, 27 Sep 2019 22:21:10 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red
 Hat Linux)) id 1iDybs-0002ih-0Z; Fri, 27 Sep 2019 22:21:08 +0000
Date: Fri, 27 Sep 2019 15:21:07 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH v2 3/3] RISC-V: Move SBI related macros under uapi.
Message-ID: <20190927222107.GC4700@infradead.org>
References: <20190927000915.31781-1-atish.patra@wdc.com>
 <20190927000915.31781-4-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190927000915.31781-4-atish.patra@wdc.com>
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

On Thu, Sep 26, 2019 at 05:09:15PM -0700, Atish Patra wrote:
> All SBI related macros can be reused by KVM RISC-V and userspace tools
> such as kvmtool, qemu-kvm. SBI calls can also be emulated by userspace
> if required. Any future vendor extensions can leverage this to emulate
> the specific extension in userspace instead of kernel.

Just because userspace can use them that doesn't mean they are a
userspace API.  Please don't do this as this limits how we can ever
remove previously existing symbols.  Just copy over the current
version of the file into the other project of your choice instead
of creating and API we need to maintain.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
