Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6965CE58C6
	for <lists+linux-riscv@lfdr.de>; Sat, 26 Oct 2019 07:33:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O1DFJSepYsC+6abJK2ZjaR+dDnLDJL5hVZO+zm4N4vw=; b=GT8d6XXR9M7Bd0
	DF7sY7ak8rx2uUtHVK8E95uLt9qri1NOwJRD3q0sezIpsBNScVTqcQ6yKaBWQ4rKjw241y/BoBi9R
	j1gg+iHm4kzXbkUbucgjkcYyxItqIkU9OYaoEK1+qrRgWYz/NgUy6PpcHuAFfNP+hYhRgamecBCNp
	Z/1YlGJYsBQ1DrhdAx6d1SctWBmM4B60lyH2i+2IXU8OMeSQwamvfzuumSwS+48Lb3XOJ0XIpbKSk
	/RFPcEmk2+gv81OS1ksXzKVXL92N1h3NuBCHIsqNCSp6o0awQh4N8Cw8HKzTB6JFrE2oqjbtwHl28
	ycR711Axn45z6zBD0X3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOEhF-0003FH-PM; Sat, 26 Oct 2019 05:33:05 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iOEhC-0003Eu-J1; Sat, 26 Oct 2019 05:33:02 +0000
Date: Fri, 25 Oct 2019 22:33:02 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Anup Patel <anup@brainfault.org>
Subject: Re: [PATCH v9 00/22] KVM RISC-V Support
Message-ID: <20191026053302.GA12368@infradead.org>
References: <20191016160649.24622-1-anup.patel@wdc.com>
 <alpine.DEB.2.21.9999.1910251609500.12828@viisi.sifive.com>
 <CAAhSdy1zfL2kPM-Le6TZSqS2TU1RkgC+zTbB4y31t8TXwVjhEg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAhSdy1zfL2kPM-Le6TZSqS2TU1RkgC+zTbB4y31t8TXwVjhEg@mail.gmail.com>
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
Cc: Alistair Francis <Alistair.Francis@wdc.com>,
 Palmer Dabbelt <palmer@sifive.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Radim K <rkrcmar@redhat.com>,
 Anup Patel <Anup.Patel@wdc.com>, Damien Le Moal <Damien.LeMoal@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alexander Graf <graf@amazon.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Oct 26, 2019 at 08:52:16AM +0530, Anup Patel wrote:
> I generally run checkpatch.pl every time before sending patches.
> 
> I will try checkpatch.pl with --strict parameter as well in v10 series.

--strict is a load of bullshit.  Please don't do that.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
