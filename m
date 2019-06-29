Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C928A5A9D6
	for <lists+linux-riscv@lfdr.de>; Sat, 29 Jun 2019 11:30:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Da0oe0oJ5e/LD1vyyd+l6k31o+ZzUh8gCLUDh7r4Ijs=; b=QfqzEKHKoSpuA5
	CVw6aC5WfWyz9b6UuplKKXfYjRYq+E5n57R5QlwfsdTc+rHzcpOywjGA/oQZwvPH0lf8Qm45EfJ/M
	5GkGxyWGbZOxypP9fSE+ZFCTv2w1vcyGrxQ6513otgAMzJZAdKIJQjOa4cnaI/YICmIY4b5hWWNF3
	ICQfXtKUd+grDGFMXkNP4LhmKlVYeHGnPdmCfF/Ptc+VFlD6BHdNebQC7488cUOBy1nax/V0PDkmr
	WFY1Re32tgZ3C1D7e8Vku69G6tUQ8uIwL2V3jKJDWabPxTEqcwR33+mLov2/84LenJiJ65wMtDB0U
	HZVefy7BQ1+gTqlTj/aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hh9gT-0006mx-V7; Sat, 29 Jun 2019 09:30:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hh9gL-0005x7-UX
 for linux-riscv@lists.infradead.org; Sat, 29 Jun 2019 09:30:10 +0000
Subject: Re: [GIT PULL] RISC-V patches for v5.2-rc7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561800604;
 bh=W3KLJ7WI0SIswj+3tMpOF9FFvFWt7HRPZjQT+a2v2Qk=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=0HdqAKkktDH103Es/5uvSbDb2rOUamgSCWK7Vd8JQ/pQG10NjMNBjLOWVtufAZAx1
 NYClhHUafz7EnLSeW+yGY1+GXfYRo5zXNpGdf2IeNtQoZY/4WfHEMuBZ06eQo6/tCh
 1kbN0PrcmrJmShqNbIrAY7avLQb1iFoWbKWs4Vvk=
From: pr-tracker-bot@kernel.org
In-Reply-To: <alpine.DEB.2.21.9999.1906281541520.3867@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1906281541520.3867@viisi.sifive.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <alpine.DEB.2.21.9999.1906281541520.3867@viisi.sifive.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git
 tags/riscv-for-v5.2/fixes-rc7
X-PR-Tracked-Commit-Id: 0db7f5cd4aeba4cc63d0068598b3350eba8bb4cd
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: c57582adfda3e7026796fbde81e951ea72edbb66
Message-Id: <156180060441.8003.464914196516513928.pr-tracker-bot@kernel.org>
Date: Sat, 29 Jun 2019 09:30:04 +0000
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_023007_434348_75169CC6 
X-CRM114-Status: UNSURE (   1.57  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv@lists.infradead.org,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 28 Jun 2019 15:43:09 -0700 (PDT):

> git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv-for-v5.2/fixes-rc7

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/c57582adfda3e7026796fbde81e951ea72edbb66

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
