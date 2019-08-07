Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D14844CA
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 08:49:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VjasSr6WklCRCumMeKjxivVBfe8Fu7cL1O0PnR7DDHU=; b=cT1G8Tx1w5LKmE
	vKDl1Lz0uw8Qd+JUd9TQSMeDf2TnYLY7adB7cthf9knNvsK7ifX3btY/2QfNYhz31YQjm2KPG3FjG
	KwVVNPAi+TmXiHZYU1FGjxDJySHrQNvHau3L2tzGsy4dRNsjhFreVKwtvoqtZDLycnlfPMtaMkk1Z
	uK6O+jHo7u5VV3GFuMPnyDJp9JoA9UEteaq6D6Cs6nHp+QnLpYFC8g8x2T+XViQIqkYECHSy9kdQd
	44jMA6Qw4+5gfHsodI0dKWfu3oUdcWPFMh8ItorysA8c07EH8cWWMfBFs8oGc0/aeA9xcfBxuWXVk
	RlQ8zMHEewep6CMxByaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvFl3-0001xe-9O; Wed, 07 Aug 2019 06:49:13 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hvFl1-0001xQ-N6; Wed, 07 Aug 2019 06:49:11 +0000
Date: Tue, 6 Aug 2019 23:49:11 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH] riscv: kbuild: drop CONFIG_RISCV_ISA_C
Message-ID: <20190807064911.GB6942@infradead.org>
References: <alpine.DEB.2.21.9999.1908061929230.19468@viisi.sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.9999.1908061929230.19468@viisi.sifive.com>
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
Cc: atish.patra@wdc.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Aug 06, 2019 at 07:30:24PM -0700, Paul Walmsley wrote:
> 
> The baseline ISA support requirement for the RISC-V Linux kernel
> mandates compressed instructions, so it doesn't make sense for
> compressed instruction support to be configurable.

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
