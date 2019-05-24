Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6FE29114
	for <lists+linux-riscv@lfdr.de>; Fri, 24 May 2019 08:38:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qoaBwiG10FrndaSrHTnSoxUAMx0qeX//l7bIcvrUe1c=; b=gadNZ4E1tWzbc6
	TkDem5UT7qmyOVaYzdVp8uQj2LY/b9xszBDU9erJ7ZIsOqsuTp6SQWGyNILJBiLau8QLTvFkswIbW
	cAhhnWH9wIMPGm7ilc1/DgfrFiKwg8i1ETZ1Chmc04FVSjth3Mk+Sk8h+MNS19h1BilbhCzgm0jYd
	ETFtaScoiX4qDgi+vr3gzhm4nwsClp1veoE4qvNOw1bLe1ptq0LfsoujfYKuU3uYv29VBBpZN1RpO
	ixoRT4S9q3M1OeJvRZ/hA0HBMF+kkNuHOipPDy0JVwSOH0xr5hGkqeYiJ14uSnNvsv5PB8xHwaGkG
	lZt9gfQfOJikWhweIZaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU3qG-0007H0-Lb; Fri, 24 May 2019 06:38:12 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hU3qD-0007En-RA; Fri, 24 May 2019 06:38:09 +0000
Date: Thu, 23 May 2019 23:38:09 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Alan Mikhak <alan.mikhak@sifive.com>
Subject: Re: [PATCH v2] PCI: endpoint: Set endpoint controller pointer to null
Message-ID: <20190524063809.GA25866@infradead.org>
References: <1558647944-13816-1-git-send-email-alan.mikhak@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558647944-13816-1-git-send-email-alan.mikhak@sifive.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: linux-riscv@lists.infradead.org, palmer@sifive.com,
 paul.walmsley@sifive.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

[trimming recipient list]


How is this related to arch/riscv?

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
