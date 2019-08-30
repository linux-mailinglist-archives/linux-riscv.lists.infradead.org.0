Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D31A312A
	for <lists+linux-riscv@lfdr.de>; Fri, 30 Aug 2019 09:39:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=06bQG+NTTBaH4DyxIj2NwMEg9hDqWzT1W0d37nS85QU=; b=ZFsIauA4rzL5NQ
	+ZI3iysfZD+s4QH2RgIUZBpXEJ4656e7PZBZNVAfcf5agZXg6Uuzrem6LfSzsk9Z8ZmF6SE7NHy3+
	avxyEryYLoCmV+4ExmhaH9FHI/DZU//+6qMLhnsLy7M4MHhwxNGehkTt7/D7pBY+ma01cqeUXCI32
	kY8pvaddMxZA0gXABHYnRztbLOJWcQjfGZaeNlV+zR5H1W70pgzu1gH1PaQpwGFZ5rFwn7gXzwMSM
	ZeQYa9mFz0fczezYD1nz+suHQhwLj5yt17wrzOXtMGpOdf6ZN/cU3dTIPd1I30/sdvpqwtXC6NCk+
	DJnzPvCbZEtVVzc4sCZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3bVQ-0001aF-09; Fri, 30 Aug 2019 07:39:36 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i3bV3-0001J0-M9; Fri, 30 Aug 2019 07:39:13 +0000
Date: Fri, 30 Aug 2019 00:39:13 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@sifive.com>, linux-riscv@lists.infradead.org
Subject: 5.4 tree ping
Message-ID: <20190830073913.GA1807@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi riscv port maintainers,

what is the plan for the 5.4 merge window?  Paul replied to various
patches that he applied them, but despite multiple pings no branch
containing those patches has appeared.  At the same time we also
have a huge backlog of outstanding patches while the merge window
is nearing the end.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
