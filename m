Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 928865E3C1
	for <lists+linux-riscv@lfdr.de>; Wed,  3 Jul 2019 14:24:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lJBNBza425Y9AbX0LH6WFlDH+M2/Uj5t9jcOPEVJ5Xc=; b=qSXjoBKcbNH59Z
	eAnoBWNfnYJodgqlJTKaVlPWorzWlqdXVewjxZ1Xs1RbzkKI73H/ZJ6lqWbdIE3OqpOidJoXCEJpG
	FOwWZe7suQeAPZhmIVv6XuirmnE5uktFXlQwkA9rnNy8uYBuW416utiQMXNBqMnLIK5l71De3AXsi
	nlupnP4m8oxjmeEfXmtZzPaqCp7x7NHOrkdMYHVR4GKj55JuzeFs2uqYYlFdJbiwEE06tiHwEuzmb
	6Ospw/knP0HkrmsBLzdhXCVIkQioYT/m9hXU0ndrIZ5HHybpRvyOk3tqtItygiBVavmRvl77RpTSx
	aYvEka4Tcq1MderJLBZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hieIt-0002GL-8j; Wed, 03 Jul 2019 12:24:03 +0000
Received: from [12.46.110.2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hieIp-0002Fj-EV; Wed, 03 Jul 2019 12:23:59 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: nommu fixups
Date: Wed,  3 Jul 2019 05:23:56 -0700
Message-Id: <20190703122359.18200-1-hch@lst.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
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
Cc: linux-arch@vger.kernel.org, linux-mm@kvack.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Andrew,

the patches are fixups developed for the RISC-V nommu port.  Can you
queue them up in -mm?

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
