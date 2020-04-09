Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B311A3996
	for <lists+linux-riscv@lfdr.de>; Thu,  9 Apr 2020 20:10:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RgUmy0j7H/s7pME+TMaJZrQsYNn8JoVR9qxBrRqVVXw=; b=arI6leb1xoEVJFKiupgGlh3cn
	dz4DAbmptfh0jCldd+lWH2AagLCX+M8OtHYhHhWjisu9f5J0BkIKJXMyMpLrlGO+7TMFM/E2PurnD
	NbBskCnFnyx+oihSVVF3i2BlqGOd59c5aTcTdlhW8H5I0Wt2ZVJVdRP+hzXKCaZdqp3I1j/wegYkV
	P9DPJ4ubkQVbMZQaTasIJ6XhCT31f2LQHFbq2eiI4Ks/tNmk5b1Bk9Otho25EsLTdkDW73PLMVHjR
	7+giVouJp8dcUXBA5uVxyug8BJtxLb3t++WI8OQbJv/kEoFngptKicA8eF96hzc72kSoJVFTe5BoU
	/NH/eneHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMbdF-0004Ep-TI; Thu, 09 Apr 2020 18:10:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMbdD-0004EU-1z
 for linux-riscv@lists.infradead.org; Thu, 09 Apr 2020 18:10:28 +0000
Subject: Re: [GIT PULL] RISC-V Patches for the 5.7 Merge Window, Part 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586455825;
 bh=B7RUtCBPZKX84O+0Z5V9oHgttKAZYDn1KUEbea7jZrg=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=Rq6mSVEPHex22D244FDL6hv8aP2rgqtQ3VlRHD/Oy8ms5COxKjeSfSczUKB2l4SHg
 DoUtyu/V88s2WdDAXnMFkGD0yHSaVGgFYqOvbj7T5UkCA3AkJL9IiLSjyFkM6Gu183
 LBpBHsUzLa/mZtGQpCd3MhuEXLoyhwhdQJ8Cg6TI=
From: pr-tracker-bot@kernel.org
In-Reply-To: <mhng-e58ec1f9-86f2-451e-ac9f-9add83693752@palmerdabbelt-glaptop1>
References: <mhng-e58ec1f9-86f2-451e-ac9f-9add83693752@palmerdabbelt-glaptop1>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <mhng-e58ec1f9-86f2-451e-ac9f-9add83693752@palmerdabbelt-glaptop1>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git
 tags/riscv-for-linus-5.7
X-PR-Tracked-Commit-Id: 37809df4b1c88927fe944eb766e0553811c51f64
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: eab40026605f4717a9749ffcaec8119d58494999
Message-Id: <158645582569.26793.3517177779619991218.pr-tracker-bot@kernel.org>
Date: Thu, 09 Apr 2020 18:10:25 +0000
To: Palmer Dabbelt <palmer@dabbelt.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_111027_117931_3D70E3C4 
X-CRM114-Status: UNSURE (   0.69  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv@lists.infradead.org,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The pull request you sent on Wed, 08 Apr 2020 09:50:05 -0700 (PDT):

> git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv-for-linus-5.7

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/eab40026605f4717a9749ffcaec8119d58494999

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

