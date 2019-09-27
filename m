Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4296CC0E2B
	for <lists+linux-riscv@lfdr.de>; Sat, 28 Sep 2019 00:56:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mmr84+LXw8a+l38UZRvHQA/ROeChKuRPw3AkE/qSJbo=; b=XN82Mv3qDnZlVx
	KBlc+KhHy5isa1OF5CRubQF2NnFplhrczr9xZ0/paYDy7A3uAdO2ZdKAeogJUrl7PYq+uM1NEcI3r
	eiFfF/tD+yrx4Tza+DpPMBZeVudIco2yBv9MpRzmRQmisWXAZwWL2t35qs+OEpvHoTdmNb7bXPauz
	OdVkOSOVNxOFXcCXQ3vCUW4QmZCcTFA0j6dzZaClRlZyhg2J4Lp+zL7+nvOvdTKYa2SDNTKzDwy/f
	c1xGngJ4fFTWWaRFmWWeLRP3bYbGHSgsXkztjfJKG4MmjSK16NA57Gty8zm3pniRWX7Xp0rRi0a8Y
	Reu0cxX0bIwMSN8wqQmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDz9z-00073i-Jj; Fri, 27 Sep 2019 22:56:23 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red
 Hat Linux)) id 1iDz9w-00072z-OF; Fri, 27 Sep 2019 22:56:20 +0000
Date: Fri, 27 Sep 2019 15:56:20 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Vincent Chen <vincent.chen@sifive.com>
Subject: Re: [PATCH 2/4] rsicv: avoid sending a SIGTRAP to a user thread
 trapped in WARN()
Message-ID: <20190927225620.GA26970@infradead.org>
References: <1569199517-5884-1-git-send-email-vincent.chen@sifive.com>
 <1569199517-5884-3-git-send-email-vincent.chen@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1569199517-5884-3-git-send-email-vincent.chen@sifive.com>
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
Cc: linux-riscv@lists.infradead.org, palmer@sifive.com,
 linux-kernel@vger.kernel.org, aou@eecs.berkeley.edu, paul.walmsley@sifive.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Oh and s/rsicv/riscv/ in the subject, please.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
