Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 326937DF88
	for <lists+linux-riscv@lfdr.de>; Thu,  1 Aug 2019 17:56:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YebHN7Ua+7tZdkQf7hSF2SsdvWf6yfZqzK3KxvRLJGo=; b=f8z/hLfA06FS+Y
	RRMtoFVfna7aNT3fxcOtzzNJcgvo341aCnw2NmJpqPr1ebACG3LG7gi/Hsxq8oezN77iwm+tWjhFw
	Kd449YtHCldAyOGgXtWbsqCwiGHwSTJbyd0P+EIrtSkwwEtiFEt31P1eOZ7/LslAzD9OTFfGUB0ZG
	2/DWeFbAA1N5hECXEpv56Od2o+oJ9+x6HRKZ9HuH/nMulvS81KMnTcNp9ykoBkis1iPFRKixGfNvq
	yNlZORQVySnbYqmNs3W5PU3ZIrAtU2kGK6aW2KNg7lQcDuybwngTPUcTUYIa1MtPBc7+D6NzKNm7c
	5F/peY//ZJ15FdZ7zXAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htDRU-000097-Vl; Thu, 01 Aug 2019 15:56:36 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1htDRR-00008w-Kf; Thu, 01 Aug 2019 15:56:33 +0000
Date: Thu, 1 Aug 2019 08:56:33 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH v3 4/5] RISC-V: Export few kernel symbols
Message-ID: <20190801155633.GA366@infradead.org>
References: <20190801005843.10343-1-atish.patra@wdc.com>
 <20190801005843.10343-5-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190801005843.10343-5-atish.patra@wdc.com>
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Yangtao Li <tiny.windzz@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Johan Hovold <johan@kernel.org>, Anup Patel <anup.patel@wdc.com>,
 Rob Herring <robh+dt@kernel.org>, Palmer Dabbelt <palmer@sifive.com>,
 Gary Guo <gary@garyguo.net>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Enrico Weigelt <info@metux.net>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 05:58:42PM -0700, Atish Patra wrote:
> Export few symbols used by kvm module. Without this, kvm can not
> be compiled as a module.

Please add this to the kvm series instead as we don't merge exports
without their users in the same series.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
