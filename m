Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0406520EE7
	for <lists+linux-riscv@lfdr.de>; Thu, 16 May 2019 20:45:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bcj9jofngvvfUMLBVn3UXdcxM0BDZnJ2UmKPbxYcpAo=; b=OOS6ZKPA6x4Q0A
	HED/C9gwqIE/eN0igiXOGZL1ShnUD4u4kgVKaWDc81GspmBrZofZdgPNqwOAiChvN0SnL7PNBkbDu
	u03jHa+Cuns3loPjuRLtmTQMNM9HQLUadExMdhZ5IsmmEzziPdk4rpbCR6G/N1VBlcCMQfiRX/CTu
	DdBdpkCsDZCeHLddq1SL4GAZEaJreslWWBHuy9lLi93x4xpwpUztExU7aXhHUaT3Ic7uhw9u0KLgG
	XlhIPLdF8CX91zyMfPjtRAPoNcC2C5AJkGePhorDFNyGab5pTB5VkcY7UqB3Xryi7deAlTZjpvNuv
	mJI3+2cXkyhVIS7dURRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRLNb-0003iB-Tw; Thu, 16 May 2019 18:45:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRLNY-0003hB-9t
 for linux-riscv@lists.infradead.org; Thu, 16 May 2019 18:45:21 +0000
Subject: Re: [GIT PULL] asm-generic: kill <asm/segment.h> and improve nommu
 generic uaccess helpers
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558032319;
 bh=SgtY/JlSUlVVPncUe4OJ6/DSHqGDEWfDNv/bzTAKQzs=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=NW/zXGx5s+CfJAXbSUXvzCViBb4G4ivXR9fkrYDmPDUNEdOgHLnvBmlHZrXAWMxwE
 /cHK5bfj3UbCbG5ooYhHzAx1BmjIUv95L+VPLSGz0estvjRROtUUukzgiRwMHstmuo
 qJ2ETKjL6j+eS2gR040W5UT+sjIb5mpn6YrnCAoE=
From: pr-tracker-bot@kernel.org
In-Reply-To: <CAK8P3a2+RHAReOZdo8nEvqDeC1EPj83L2Ug4JuVRiUh943AuNw@mail.gmail.com>
References: <CAK8P3a2+RHAReOZdo8nEvqDeC1EPj83L2Ug4JuVRiUh943AuNw@mail.gmail.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <CAK8P3a2+RHAReOZdo8nEvqDeC1EPj83L2Ug4JuVRiUh943AuNw@mail.gmail.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/arnd/asm-generic.git
 tags/asm-generic-nommu
X-PR-Tracked-Commit-Id: 6edd1dbace0e8529ed167e8a5f9da63c0cc763cc
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 27ebbf9d5bc0ab0a8ca875119e0ce4cd267fa2fc
Message-Id: <155803231962.24051.5619683992341077407.pr-tracker-bot@kernel.org>
Date: Thu, 16 May 2019 18:45:19 +0000
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_114520_363210_5C02C0C9 
X-CRM114-Status: UNSURE (   1.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arch <linux-arch@vger.kernel.org>, linux-riscv@lists.infradead.org,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The pull request you sent on Thu, 16 May 2019 14:09:08 +0200:

> git://git.kernel.org/pub/scm/linux/kernel/git/arnd/asm-generic.git tags/asm-generic-nommu

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/27ebbf9d5bc0ab0a8ca875119e0ce4cd267fa2fc

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
