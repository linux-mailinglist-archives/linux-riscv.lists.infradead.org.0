Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6230C128FB0
	for <lists+linux-riscv@lfdr.de>; Sun, 22 Dec 2019 20:10:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CSxk2lYkfEMeh2VzYkbTjL7M+gInLN5RMei88Y6MAX4=; b=TetQzD4SKJe0YqBUFu30C2jnS
	jeVLg5pAH3RNxkSDUwtjsDbgEqL2kVsiXSoWTuVWdhfMGvLPmq5r4zLTUc03qsIhIhC+OBSJdxCrh
	EWLkdonMiWz/h/gr2bTg13rOVpzvUyrSqK26dnwJTnuKvznLFYMKaK79dSbw9jHgSVW+RuhBWA9dY
	oXTpJ0YZ/zibAT7d3JfxBt+7+qIiQfOZEadKJTcKeNvusys9o7ptdHcB8jNZkseYBxndcYZ4fijzy
	99m2rtKNbfAGmnAsUpFVgpdWuTsy1BlDpAy+S4eQD16SQyJHqOds1BOh+I01RDnOuPnbtaNxlnijj
	9+Iy/IRzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij6cI-0003RB-Ql; Sun, 22 Dec 2019 19:10:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij6cF-0003QG-Kp
 for linux-riscv@lists.infradead.org; Sun, 22 Dec 2019 19:10:12 +0000
Subject: Re: [GIT PULL] RISC-V updates for v5.5-rc3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577041810;
 bh=ScRRJJEPWTofBaOZWjnSQVNLkENmzibt2MZHv4Bp+cE=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=lsD1f8RpkYewEVVKKSPz7ekLnTYB1hcl7SsrqO3JpB7Bao3ldMoswHYXqIJ2b7V2e
 MZ+DKdJAEdBGb6YgO9KrgHntS7urNloPDnyMHZaIBkXI5z6He3E+cSOkdeRANRC22K
 GJmekekflRbgJHNTOf7qP9/2ugE55AqSHj8Fw2KI=
From: pr-tracker-bot@kernel.org
In-Reply-To: <alpine.DEB.2.21.9999.1912211854440.57866@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1912211854440.57866@viisi.sifive.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <alpine.DEB.2.21.9999.1912211854440.57866@viisi.sifive.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git
 tags/riscv/for-v5.5-rc3
X-PR-Tracked-Commit-Id: 9209fb51896fe0eef8dfac85afe1f357e9265c0d
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 7214618c60e947b8cea12b47d8279bd4220f21bc
Message-Id: <157704181043.1067.2754149951561806766.pr-tracker-bot@kernel.org>
Date: Sun, 22 Dec 2019 19:10:10 +0000
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_111011_710620_4A3B97D9 
X-CRM114-Status: UNSURE (   0.38  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

The pull request you sent on Sat, 21 Dec 2019 18:57:50 -0800 (PST):

> git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv/for-v5.5-rc3

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/7214618c60e947b8cea12b47d8279bd4220f21bc

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

