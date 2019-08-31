Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F94A4568
	for <lists+linux-riscv@lfdr.de>; Sat, 31 Aug 2019 18:45:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bGpL5HbZvdjvp6J9p/lPm6Ir9JeioUIdQBNxe1GIGYQ=; b=iD8Q5um9s9pTJe
	Ov3eZ997pVSncsQUIROIa6Kpt5XlB8s9RVuON/1Bn+HxQSzKL8UA9Cd7ImoQ0lNgYw7Gbah2/bXNy
	P2s5LHr4cPw/QPOTWvMFxQFaFQVLtys/Qf2P4lmtP2PnA2QqQDUW4Jl8R95gtveN4hZHDP+qdVUR2
	7P6p0Om48Y9YlzHv2yh8uytmu3aAJnT14J3bkvgpqoj8qm/0cNW6JqVcQWab8YsToT97Mj0GG289D
	Oi78mQZ8nj8sxIJ6NvfZTGLCLig7dsGzVuKOi1S3Gfe3SvV4I3MowyhpnDAhBw7W7JIoKyrL13H99
	cGDnLmPVokGzPfjsaqTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i46V0-0000U3-T1; Sat, 31 Aug 2019 16:45:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i46Ux-0000Th-15
 for linux-riscv@lists.infradead.org; Sat, 31 Aug 2019 16:45:12 +0000
Subject: Re: [GIT PULL] RISC-V updates for v5.3-rc7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567269909;
 bh=/fHp3kLHKPUyba/CwSRKgzyn/0MAzCsY6n0GeY7+VV4=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=mC4Vmv1qgV7xGwK+iUTOdka7OnIJGnuCBzx8jRswH3+WtqJILyIxV3iHyR2T0Vumo
 v6p8Gj0/4qPx1TpnEnyUQD/aPbgCfyvv0+xylQg3/+K/hkvRiwAA1JU9+9AFBZsndh
 1ksfOhfQLWyqv3X/4tDJsBMUClAXOBkwuNCHqHk8=
From: pr-tracker-bot@kernel.org
In-Reply-To: <alpine.DEB.2.21.9999.1908301929460.8525@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1908301929460.8525@viisi.sifive.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <alpine.DEB.2.21.9999.1908301929460.8525@viisi.sifive.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git
 tags/riscv/for-v5.3-rc7
X-PR-Tracked-Commit-Id: a256f2e329df0773022d28df2c3d206b9aaf1e61
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 7fb86707cc3a256e5556ced9c3a3eb96122d4b16
Message-Id: <156726990911.25629.16862572760885991706.pr-tracker-bot@kernel.org>
Date: Sat, 31 Aug 2019 16:45:09 +0000
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_094511_099234_3DEBD56F 
X-CRM114-Status: UNSURE (   0.63  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 30 Aug 2019 19:31:58 -0700 (PDT):

> git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv/for-v5.3-rc7

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/7fb86707cc3a256e5556ced9c3a3eb96122d4b16

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
