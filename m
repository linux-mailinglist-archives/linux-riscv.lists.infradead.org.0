Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF029121C
	for <lists+linux-riscv@lfdr.de>; Sat, 17 Aug 2019 19:50:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I4X9vId2ROythDySvBLyzNTnvpBBJ5NalKQ2RwR6+Yc=; b=dNaYktSEnJnBsT
	+9CM8lkuVweN+Ghuttwsf2AgIODy+Npk/YlgH1VpvVUgxKDxeYlleE5/9hV+jMCaumUV8kYU23y6I
	rgqa8XkpnsC8EHQ9kKWywJEqHiwZdAR0SZLtLyxBtmS3imVkJQzgrvE2W58h2Xfb2XvTSkGiImDRj
	texeGZbaGUrMotbgFseDxsoLym9+DAjHfSm9i8T0Ez1RO15Qp80/o2Xniq8RfOKg3eV5EFYa/OpO4
	nEcV+tXzNuQuHFSzUuHYx+Z7fjQFuHAnqY+pzrx+VRE6WKVQ16y5Vak58OK/6APpc0aMHdBwEKEBf
	ndnA+WRh2giNjexGtShQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hz2qD-0004Rw-4c; Sat, 17 Aug 2019 17:50:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hz2q7-0003ss-Fz
 for linux-riscv@lists.infradead.org; Sat, 17 Aug 2019 17:50:09 +0000
Subject: Re: [GIT PULL] RISC-V updates for v5.3-rc5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566064205;
 bh=78zR3XNz15/8fX/IXVHrbZCn0tf/df5NoeperNcnbQA=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=YpKqFhHigEhtgl36cZ9g9tIR0dLIcYYZ1zQS75XWy4+/zVPOAeqZvSeX0SVotWK7S
 xo9TR+oGdHtrDFRZagXyAyyIS0e6hQXKcqT35UGhDN+sqTi6TT2Rxz40gnSQ6WPGIE
 NqdM5rvmVHcd07eDaf3B8I84iHE+30O2BEQM3uQE=
From: pr-tracker-bot@kernel.org
In-Reply-To: <alpine.DEB.2.21.9999.1908161824300.18249@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1908161824300.18249@viisi.sifive.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <alpine.DEB.2.21.9999.1908161824300.18249@viisi.sifive.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git
 tags/riscv/for-v5.3-rc5
X-PR-Tracked-Commit-Id: 69703eb9a8ae28a46cd5bce7d69ceeef6273a104
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 2f478b60118f48bf66eaddcca0d23e80f87a682d
Message-Id: <156606420515.15242.4838104817894309424.pr-tracker-bot@kernel.org>
Date: Sat, 17 Aug 2019 17:50:05 +0000
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_105007_561942_CE82882F 
X-CRM114-Status: UNSURE (   0.62  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-riscv@lists.infradead.org, torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 16 Aug 2019 18:25:40 -0700 (PDT):

> git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv/for-v5.3-rc5

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/2f478b60118f48bf66eaddcca0d23e80f87a682d

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
