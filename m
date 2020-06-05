Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B361EEFEB
	for <lists+linux-riscv@lfdr.de>; Fri,  5 Jun 2020 05:30:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=i6UVmNaO+i/7Pa2nHUmS0c+6Uv8uoreKnNKgTv84Rjk=; b=J80/bGfFFgspwg6NzUeYF3njc
	RffiVUpDKe1yRdoYO1vHBk17bknswUWIqmQkE9zOe13W5eJ/xZS6PKElNp3ZAwi8uGNRPaCWSuRv2
	h6Mq2Ww1YjmBEg0xtaqxNtywqFenPuXoUdCV0i0YictGp2advNILqnA3OeItWixvFX+3ubQUomxZT
	dwG9ZcoCstFvBCBE3xef7PV9vapRC6k3OQP6PvPArEVn7RBVFYy2WdD5EapRvAyG4zYa2OVGqLsk3
	yrkIYho/hg/Nb9puXsE+APyB2zM1QC0wegt6AEpdhnx48GwCyoeKcgt1tEKB+k/cfPso3BYp3QX3O
	uOZET3HYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh33j-0004JG-Ic; Fri, 05 Jun 2020 03:30:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh33f-0004ET-2u
 for linux-riscv@lists.infradead.org; Fri, 05 Jun 2020 03:30:16 +0000
Subject: Re: [GIT PULL] RISC-V Patches for the 5.8 Merge Window, Part 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591327813;
 bh=f24krO+POdhUZh2brHbNdL8tf07c24R7N/ltSJ4tjMk=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=qfMFzHAHLjdLAyfjm4FDB+S76L7A/E60nWOOgxWqV+XXz8ara1l2+5pxlZqfKBaPx
 Ma3YKnriM0FmMr2UfwIWoR0RTGnV1nnRwDmkSgOXkM3kEGm2ACpS2wwxwheDF3pAze
 HVtqm8dQjJBw4h2LQO5oxESzE/w+Tk5L2EpaTeng=
From: pr-tracker-bot@kernel.org
In-Reply-To: <mhng-8ec4417a-1930-4582-b309-e510ebbfb37c@palmerdabbelt-glaptop1>
References: <mhng-8ec4417a-1930-4582-b309-e510ebbfb37c@palmerdabbelt-glaptop1>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <mhng-8ec4417a-1930-4582-b309-e510ebbfb37c@palmerdabbelt-glaptop1>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git
 tags/riscv-for-linus-5.8-mw0
X-PR-Tracked-Commit-Id: 09c0533d129ce460e6214c14f744ddbac3733889
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 435faf5c218a47fd6258187f62d9bb1009717896
Message-Id: <159132781298.11934.17692023296743029875.pr-tracker-bot@kernel.org>
Date: Fri, 05 Jun 2020 03:30:12 +0000
To: Palmer Dabbelt <palmer@dabbelt.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_203015_160164_8F1A177E 
X-CRM114-Status: UNSURE (   0.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

The pull request you sent on Thu, 04 Jun 2020 11:57:25 -0700 (PDT):

> git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv-for-linus-5.8-mw0

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/435faf5c218a47fd6258187f62d9bb1009717896

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

