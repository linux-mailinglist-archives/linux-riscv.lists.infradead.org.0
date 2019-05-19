Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E40227ED
	for <lists+linux-riscv@lfdr.de>; Sun, 19 May 2019 19:45:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6MNvaxO60SiHArJDYoXYPxHUQ5pRGGqY9WhNeVofYzI=; b=QMbeb399h1QG/d
	XtBIz0abaiSMlm/+t4sdvrXvG9QETvNt8YJryonjTX5gzkjn8YlE92PuUiMPUjva8V8D+Zz2Mo5OD
	Gq+n7Al4Rw1X307evnYEQo2jr7FFT3ROOnPhDwLZXqsKOlezA1ImvZIRxzTiuQOP6JKNnMSX5ZVwF
	mhb+Axc6lLHcIK+xoEfcbc9DjN5d1zr91WzdeIwHtTPXvkcPVvL8LEKNZStO0k1m6oE15Tv4+ff4m
	eoxiTMzwsFcYYqzpVJsWwsTDFSqxHwAbma78ast3qG/CyKImVNjzV2O4dhV8RcXoqeReVsmL9eLkQ
	9IYm65Wfa6oJo/td/t7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSPsB-0002Co-8u; Sun, 19 May 2019 17:45:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSPs8-0002CV-LW
 for linux-riscv@lists.infradead.org; Sun, 19 May 2019 17:45:22 +0000
Subject: Re: [GIT PULL] RISC-V Patches for the 5.2 Merge Window, Part 1 v3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558287919;
 bh=p39cSE+YEWhDHipYq4l9ZwR+n0AoruN4qVTWJAWJBQs=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=g/N50TXJro8HgipULDBQ0NRm6iWMMBeUcu0xAdPvcDyuyf5IvpXumGiVkSVOtTgN3
 jfVLkpkoZt/HujSErPZRON8IcSnrqFQ9tHIhxbfG/gLESnr3vF3rSDxa6+7MZkLFie
 uECoogAOSAfEOIHnIN52UoKAI1H/UIvKCKnn8lSs=
From: pr-tracker-bot@kernel.org
In-Reply-To: <mhng-2cfcab49-74d1-4656-9913-36853a5be29d@palmer-si-x1e>
References: <mhng-2cfcab49-74d1-4656-9913-36853a5be29d@palmer-si-x1e>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <mhng-2cfcab49-74d1-4656-9913-36853a5be29d@palmer-si-x1e>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/palmer/riscv-linux.git
 tags/riscv-for-linus-5.2-mw2
X-PR-Tracked-Commit-Id: 8fef9900d43feb9d5017c72840966733085e3e82
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: b0bb1269b9788a35af68587505d8df90498df75f
Message-Id: <155828791965.9186.7458955761237233525.pr-tracker-bot@kernel.org>
Date: Sun, 19 May 2019 17:45:19 +0000
To: Palmer Dabbelt <palmer@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_104520_724582_E7802BEE 
X-CRM114-Status: UNSURE (   1.13  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-riscv@lists.infradead.org,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 17 May 2019 15:54:33 -0700 (PDT):

> git://git.kernel.org/pub/scm/linux/kernel/git/palmer/riscv-linux.git tags/riscv-for-linus-5.2-mw2

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/b0bb1269b9788a35af68587505d8df90498df75f

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
