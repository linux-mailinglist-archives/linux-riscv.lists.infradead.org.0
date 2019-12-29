Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 946AB12CAA8
	for <lists+linux-riscv@lfdr.de>; Sun, 29 Dec 2019 20:35:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lrUl2jb9V51Cj2/TCKkSDyPeWKOR4cxujyfOIlxV4ps=; b=lOru12jJekbH+2Cr5YPOCiyWS
	qilyrvElP/LxE575ROzsymKRbH10kR2crCBfskEFTK2PYrarn+g2Ls2kxHX3+ke2UQTGCxAt++d/z
	Gqh7guV9P1rfW814Eg8vwUzut+C6+ggMmIm9CtTb4Pj2bzDGGUqVNrvrXpKD8ivzBWXbaTWWNDErz
	tXH6kUwCbXZM5f2oo6wxaLs8o9aOaTCtl/xLMqiecWly0thDjYiH5rccHOt967v4dP0oa6LTC/EpG
	NOSzds/vQ264hbr5ONwAhMh0o2JLOj5r0QSCFUKTmZxmo65+SxWIdwsLfyOr7H/FMQNM6sJKiV0NG
	w21Q3ZwoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ileLG-0003ai-Qv; Sun, 29 Dec 2019 19:35:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ileLD-0003N6-J2
 for linux-riscv@lists.infradead.org; Sun, 29 Dec 2019 19:35:08 +0000
Subject: Re: [GIT PULL] RISC-V updates for v5.5-rc4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577648106;
 bh=xxYoTET7e/wH3hkJT+fld7Y6Yj0O25w85B8QzOHe9uk=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=Pn8rGdKZCoFeDTDBlXEsoDNd1M6+RNBw0fMpqDuaSGNOQLpp/MJ19tl45oBGh4XSw
 MbvLLkw5oSvvpPaOq4lDT6l2X3mxjjESk2uRrMN44kCxO4s5+4nGVSOVpr9NIPQS69
 nEyWQKnMMA60ndAT12CCIcivPbCDsG37Qpl7LDyw=
From: pr-tracker-bot@kernel.org
In-Reply-To: <alpine.DEB.2.21.9999.1912290921260.204131@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1912290921260.204131@viisi.sifive.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <alpine.DEB.2.21.9999.1912290921260.204131@viisi.sifive.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git
 tags/riscv/for-v5.5-rc4
X-PR-Tracked-Commit-Id: 1833e327a5ea1d1f356fbf6ded0760c9ff4b0594
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: a99efa00891b66405ebd25e49868efc701fe1546
Message-Id: <157764810672.31581.14083159610729733661.pr-tracker-bot@kernel.org>
Date: Sun, 29 Dec 2019 19:35:06 +0000
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_113507_654294_82435297 
X-CRM114-Status: UNSURE (   0.71  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The pull request you sent on Sun, 29 Dec 2019 09:22:29 -0800 (PST):

> git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv/for-v5.5-rc4

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/a99efa00891b66405ebd25e49868efc701fe1546

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

