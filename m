Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD0A17C87B
	for <lists+linux-riscv@lfdr.de>; Fri,  6 Mar 2020 23:45:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Bvp+KWDuFob7X2NfPPSVB8eEpW2OwFvRx8zTrNl9iZ0=; b=SlhUFDlKgd7J0xXMoaeUb0R+k
	YJPfgwzJskGA46GuRhq7X35juWJImc4s06t086m1OwN30/RJg4rQXfjRTrZ48KAKY9blPK3/WR9uJ
	bY9acf0y6L1fhTANU6HLWZEasc+z/z+1ezaqtAbaMKN9ZZxkw9/F188XoiyIiSTz0DJKy1/WUl7yX
	g4kRIyTiFAptmc+Bg5ScVGYsWNMcZvo5yBfNTRECJwqtzWyR4cYX3rAyyvkssXwj585jniqc/QsNi
	T6zA0sk5xUnXRiEcKct5Lop7WC6xUNH40/fdgGaFYPH+sJZL3GazEtRt03yrHo3HFKXzgFURvKQE/
	ezF4FxMbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jALiQ-00032S-QH; Fri, 06 Mar 2020 22:45:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jALiL-0002SN-Ec
 for linux-riscv@lists.infradead.org; Fri, 06 Mar 2020 22:45:06 +0000
Subject: Re: [GIT PULL] RISC-V Fixes for 5.6-rc5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583534704;
 bh=yX6aPpHu7Ib0+yyhoAJCyIMSrKCwvDxeGj4jBZ4m5co=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=A/NfKyIDaH1GvuqGly+CRxQNg9P5Z6PSoqp1xsPHogX7kkyQ84vl0iJOLam7XaDB2
 o0ZPjR0ZiLHXzikX+iQuxuYS74uxl825Ygs4VSKTaYmwcYSN4rSxsTGV9yb8lY70D2
 BeIY/35XeyPi5MizzBv9L58rKqCb0F77iIS8t+V8=
From: pr-tracker-bot@kernel.org
In-Reply-To: <mhng-ceb3e2ad-8656-4228-b1c3-b90731c84c5f@palmerdabbelt-glaptop1>
References: <mhng-ceb3e2ad-8656-4228-b1c3-b90731c84c5f@palmerdabbelt-glaptop1>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <mhng-ceb3e2ad-8656-4228-b1c3-b90731c84c5f@palmerdabbelt-glaptop1>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git
 tags/riscv-for-linus-5.6-rc5
X-PR-Tracked-Commit-Id: af33d2433b03d63ed31fcfda842f46676a5e1afc
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 7e6582ef32f6cbd55b9c752727847b0ee6710e78
Message-Id: <158353470481.2424.9286208999466559244.pr-tracker-bot@kernel.org>
Date: Fri, 06 Mar 2020 22:45:04 +0000
To: Palmer Dabbelt <palmer@dabbelt.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_144505_516588_5C656C30 
X-CRM114-Status: UNSURE (   0.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

The pull request you sent on Fri, 06 Mar 2020 14:24:17 -0800 (PST):

> git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv-for-linus-5.6-rc5

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/7e6582ef32f6cbd55b9c752727847b0ee6710e78

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

