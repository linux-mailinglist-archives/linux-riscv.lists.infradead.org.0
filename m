Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE0BCC452
	for <lists+linux-riscv@lfdr.de>; Fri,  4 Oct 2019 22:40:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FX6FNsKZLQp6uSp528+f8TIxkh2jqu9lxD3uze7QuOI=; b=Ey1B02Q2JRa8wC
	aYpEbGlr4KorS8vcK3DkfBZTofvrKbaKWUzSU9/IXgUERT9+OYvoozv9OGTc4UUT3aDlKkxMBB9Sg
	WfLwrdfJDRVbPPzIgrr01LZwSXKyD6Uaej+obs2iw4Xf184NfPRUOHFBPWC5TeFtXpGpKcCUj1+6q
	IJ2QmsBxs7VhxUpKRRXNYC89tcqu0FU1S8LXzswl/f74pvFE2BuWVB1Kj4Iw9A9tBHTZe0oIlCwJq
	C6kSIyIJVKgVXV02wrAcEJdgWnTX/IW/oKZNbygPuo3KTJw48PTdtk632tubFMM8rbw/8EQvW2po9
	syVBf+PC8oxtq27Su3bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGUN9-0006Ra-44; Fri, 04 Oct 2019 20:40:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGUN4-0006Ls-FY
 for linux-riscv@lists.infradead.org; Fri, 04 Oct 2019 20:40:17 +0000
Subject: Re: [GIT PULL] RISC-V updates for v5.4-rc2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570221613;
 bh=KzerK/f3QXvAsnl4IaRxU3mdhQB2zwWapZZSem9lYVc=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=vSIq9J8Oe6MBe9NJwAGB7ivXE/KmAnJxT0tq6XETHd2kg1HlsZireCeo7Sa+2zmer
 kvMgNLkcQJCccdBslcfGpxZpe/q/HpdgzdXcAV3GR9P3LPGz6KEMQJrQ5ak7WZ2DoS
 mmP0MwA0hS1+jrLJ4qYBEK8MFSWwSwlhvEJ2BwU4=
From: pr-tracker-bot@kernel.org
In-Reply-To: <alpine.DEB.2.21.9999.1910041036010.15827@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1910041036010.15827@viisi.sifive.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <alpine.DEB.2.21.9999.1910041036010.15827@viisi.sifive.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git
 tags/riscv/for-v5.4-rc2
X-PR-Tracked-Commit-Id: 922b0375fc93fb1a20c5617e37c389c26bbccb70
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 812ad49d88b51fab551acb3c2d9c7d054bc69423
Message-Id: <157022161327.19958.10759204343706672644.pr-tracker-bot@kernel.org>
Date: Fri, 04 Oct 2019 20:40:13 +0000
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_134014_549076_1F268902 
X-CRM114-Status: UNSURE (   1.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-riscv@lists.infradead.org, torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 4 Oct 2019 10:36:54 -0700 (PDT):

> git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv/for-v5.4-rc2

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/812ad49d88b51fab551acb3c2d9c7d054bc69423

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
