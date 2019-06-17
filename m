Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC7E483EB
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 15:28:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jQa6NaK8TVwN72plIswuA6s+9TBZcYTbR1X3I4cfonk=; b=b50lzdotMjGrck
	9N7pl1OcmseN7HAOarQBGvDPuDmKkyXALYk4KV59LQAjHxVYkd4z7arXsRzK4fpH61G4EFhj6NV0t
	UWPisLdAvNnhFlV73+U9dO4ESzvaoig9Nh5tMcU+GWzdPFkjvT9TbQiLs1qOi/nzFYyOklfiPSIx0
	PYi0uP2CrUJFpcfx4g3taz+Er1Grrw4agfyDWf5irFUpQDyYvPi8rXGOJ8gQYYUhQouSnIWRd/a6T
	SkW1xh5hnOT4CkJEgio+NyfpYTTsi45YAWY5Fw9RdWE6VowkSbNEOZ+aGdy6uPQg1RTExN+ojYSRC
	/XUwwBeA+O1yb7JaswKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcrge-00009U-Od; Mon, 17 Jun 2019 13:28:40 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcrgb-00009D-8T
 for linux-riscv@lists.infradead.org; Mon, 17 Jun 2019 13:28:38 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 8330EAF7F;
 Mon, 17 Jun 2019 13:28:35 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: Working device tree for the HifiveU
References: <mvmlfy05xjm.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170347460.19994@viisi.sifive.com>
 <mvm8su05rqc.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170546100.4549@viisi.sifive.com>
 <mvm4l4o5qdd.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170625480.32654@viisi.sifive.com>
X-Yow: If Robert Di Niro assassinates Walter Slezak, will
 Jodie Foster marry Bonzo??
Date: Mon, 17 Jun 2019 15:28:33 +0200
In-Reply-To: <alpine.DEB.2.21.9999.1906170625480.32654@viisi.sifive.com> (Paul
 Walmsley's message of "Mon, 17 Jun 2019 06:26:42 -0700 (PDT)")
Message-ID: <mvmzhmg49z2.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2.90 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_062837_447731_9F6CB87A 
X-CRM114-Status: UNSURE (   7.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Jun 17 2019, Paul Walmsley <paul.walmsley@sifive.com> wrote:

> We can't add the Ethernet data yet, since it hasn't been approved by the 
> DT maintainers.  But of course you can always add it yourself to your own 
> kernel branch, along with the driver.

Which driver?

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
