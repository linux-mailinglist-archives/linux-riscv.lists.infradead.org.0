Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0181BB2D4E
	for <lists+linux-riscv@lfdr.de>; Sun, 15 Sep 2019 01:25:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ixvvnb9t5HiyEYlyJmO/njsyo+Ox9yyCqBwmHBuKq6Y=; b=NGV0Wv+SBZFj61
	TieBL4cA9ocEreIlKf492pnKMtwAa9UsuNZSxbsVOo4SsAOaKk+DC7xhrC2P5WDMaO4/yH5C5o0fV
	bVyuxE7aNI+bE2zi+wrfCZndXaHsnje9Vswlbh+l3dmxgmI3b2dSOkZIUjT8Aogzb3ozh10Jp6A7Y
	u1SLcIusbDnIz/boMWeR/lAE46gziBOIdkm0sFOX2hNQCQ/Z87PqRQurCdoeuWamKyN4Ji0DXVV+/
	QXehKBJQ6xOIHgnnIAn56dxwWWmVvnXRlBgB7Hu+LTwNjj34VpEip/qbSIcJZA/rVos+8/vMBupXz
	Ivz0Dj0UojAEQPjKmWHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9HPm-00066n-43; Sat, 14 Sep 2019 23:25:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9HPg-0005q1-MV
 for linux-riscv@lists.infradead.org; Sat, 14 Sep 2019 23:25:10 +0000
Subject: Re: [GIT PULL] Urgent RISC-V fix for v5.3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568503506;
 bh=zN3AiQcN4OyiNPGhUtI2YBjvp2tsF6+c4sX8WDAP87o=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=FgMzG401RLitCgZXMvXvc1xiSlLn4yaOOxbIvc+qJa3Gtpm8me5fPcEB+zyBlvWVS
 JkhZVCuipJELlCGbs8XzdMvUZO74w7a8t+8EE8QzFyRIW91oC5XlSL6z8bWnFchD5K
 PTPPt3S/D6ACZwcKGWdbHfaonECCHDrYx5Ct1qiM=
From: pr-tracker-bot@kernel.org
In-Reply-To: <alpine.DEB.2.21.9999.1909140651430.10284@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1909140651430.10284@viisi.sifive.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <alpine.DEB.2.21.9999.1909140651430.10284@viisi.sifive.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git
 tags/riscv/for-v5.3
X-PR-Tracked-Commit-Id: 474efecb65dceb15f793b6e2f2b226e952f0f8e9
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: b03c036e6f96340dd311817c7b964dad183c4141
Message-Id: <156850350617.2116.314351951829278963.pr-tracker-bot@kernel.org>
Date: Sat, 14 Sep 2019 23:25:06 +0000
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_162508_760910_C6D54B9A 
X-CRM114-Status: UNSURE (   0.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-riscv@lists.infradead.org, palmer@sifive.com,
 torvalds@linux-foundation.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The pull request you sent on Sat, 14 Sep 2019 06:52:48 -0700 (PDT):

> git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv/for-v5.3

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/b03c036e6f96340dd311817c7b964dad183c4141

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
