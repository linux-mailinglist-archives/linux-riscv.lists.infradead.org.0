Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2310A202647
	for <lists+linux-riscv@lfdr.de>; Sat, 20 Jun 2020 21:55:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M/iMIb8fZqEBIOWeMcSS+BKxnDKWo5dKysnvtn/IYr8=; b=m3YVKWBoX9Gk3xEhngDvQ8HMc
	d6CH+B1v6nusPSgwPUbvDEt5X+ee35fIlzJa6jSxxGuOrot8Y7GxoKamB3gXL62NzP6D8HtrYorqx
	CRfLLdnB3WMEMdpkinv/iRFwnUMjOR88aMCgyJ9XhDE3yYMC+ku89gHpRvfeil7lVZzhAGtfKWGn+
	t+fwD2Yx9K1A3rQZ7qC/gxryV78uP2hLzufo0CRklDiBLXJe410U4VrLnGOo6IZxv+NjkknBqE05B
	3OFyXvqP+Mvvoh1uC8dMYDNxtvc0hUpCmTwy8+5M60jDjONMfp46AIy5qcx2GqVXsfBM/0zbRhCqV
	NK/nXvFeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmjaK-00020E-Ve; Sat, 20 Jun 2020 19:55:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmjaH-0001zs-Je
 for linux-riscv@lists.infradead.org; Sat, 20 Jun 2020 19:55:27 +0000
Subject: Re: [GIT PULL] RISC-V Fixes for 5.8-rc2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592682924;
 bh=YOhXoTb1o5C1Jl/TLWwhF9JZzy9ZzY00Jlr6C3UMC2c=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=m6rbiu3I9do1tLyhAU9d/FO1rwxxO3a++llJhkKpGOFC5G/G4vYgEm56Y6SE6m5vX
 B9bLvVJcGEx+f2/z6ioEWkBWUvt4PGwv5wFeTmtC4znX4ryv917ZTBX95/OsUjiH+c
 oSb/dPuiy72Y/m63oZhzPny0+2I7WuZx+aX8OIso=
From: pr-tracker-bot@kernel.org
In-Reply-To: <mhng-ff59c9fd-a367-4804-bc35-73c8a572b016@palmerdabbelt-glaptop1>
References: <mhng-ff59c9fd-a367-4804-bc35-73c8a572b016@palmerdabbelt-glaptop1>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <mhng-ff59c9fd-a367-4804-bc35-73c8a572b016@palmerdabbelt-glaptop1>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git
 tags/riscv-for-linus-5.8-rc2
X-PR-Tracked-Commit-Id: 0e2c09011d4de4161f615ff860a605a9186cf62a
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 7fdfbe08a2b3e2bf776e2f2b341768ba93c2e158
Message-Id: <159268292459.15446.1815019867968444758.pr-tracker-bot@kernel.org>
Date: Sat, 20 Jun 2020 19:55:24 +0000
To: Palmer Dabbelt <palmer@dabbelt.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_125525_666244_28486530 
X-CRM114-Status: UNSURE (   0.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: linux-riscv@lists.infradead.org,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 19 Jun 2020 16:24:29 -0700 (PDT):

> git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv-for-linus-5.8-rc2

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/7fdfbe08a2b3e2bf776e2f2b341768ba93c2e158

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

