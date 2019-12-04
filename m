Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D841135A3
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Dec 2019 20:25:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nRcZKB9a9kFrkIfrVsDgcuG7/3uCjIjyyXkh34PqGMI=; b=oMcHyo6ULPhRwAebgK4BGO5u2
	2zrIEaNV+7ncxIjxEZ0Kd51pPgnTXrbaZELtQ1cwyvISk8d8QBBMrv9enUKAGxI+moZ6t+yyy/5h2
	RjiPXE+yRZ/2M3kLwxo78x2xXvEOZcAMxegx2M159BQw7ZaFQd0x0nMZ9lFKf35zlcMAIvNY3u5VD
	FLx+YLvmRbw7+sWSRtRNV8Y/Q5ADo9sGgCN/OScndqol+ohIXJ88D6cyDlAFGjz3vAOyRfW5TtOrP
	HinD7tHkN78MbQuoKtbvhDG/0Y78O4Y2M6WqcJkqldH/rlgQBNrWjCW6uQVyzPP8I5Tg0s9lGtt4c
	3SrCW1fEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icaH6-000548-Ra; Wed, 04 Dec 2019 19:25:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icaH4-00053M-4T
 for linux-riscv@lists.infradead.org; Wed, 04 Dec 2019 19:25:23 +0000
Subject: Re: [GIT PULL] Second set of RISC-V updates for v5.5-rc1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575487520;
 bh=p001tXcFFs4/gCV/Xle86ZqhJzzEvFjeeOtj7m5tDYk=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=zd0KqNteV4mItYA7tH6031GmT+IAq5Vfi+HbOMI+Z07IxkSpw/jXCvg0wVBNMi0co
 qNrYVOqSaSERjM8Ypdkj181rWOyErZVREr2VfiYqjGC/CBKEdkdlsAIofn6BD/m9R1
 bmerxKjSiS790gf/SFzvexbF8eVBl9u3g61B804M=
From: pr-tracker-bot@kernel.org
In-Reply-To: <alpine.DEB.2.21.9999.1912040050430.56420@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1912040050430.56420@viisi.sifive.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <alpine.DEB.2.21.9999.1912040050430.56420@viisi.sifive.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git
 tags/riscv/for-v5.5-rc1-2
X-PR-Tracked-Commit-Id: 1646220a6d4b27153ddb5ffb117aa1f4c39e3d1f
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 6cdc7f2efc25a6dbddf7c57bb2eee5d6c033d678
Message-Id: <157548751994.30814.9638490489513007318.pr-tracker-bot@kernel.org>
Date: Wed, 04 Dec 2019 19:25:19 +0000
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_112522_198348_6DA98CD0 
X-CRM114-Status: UNSURE (   0.67  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The pull request you sent on Wed, 4 Dec 2019 00:52:08 -0800 (PST):

> git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv/for-v5.5-rc1-2

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/6cdc7f2efc25a6dbddf7c57bb2eee5d6c033d678

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

