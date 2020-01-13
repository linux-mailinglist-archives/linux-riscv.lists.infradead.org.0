Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8243E138921
	for <lists+linux-riscv@lfdr.de>; Mon, 13 Jan 2020 01:55:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lMyZFuaJp2ulKkvtSsOeS4EqqP7MZ1fnC84uaC6WeIU=; b=UzmYk8N14qs39Qz9EJKtN/0WY
	+qZOk6Cy3AP3r7HQNnOfK4GLV3y5VHOTEROgfgA0CP6nNebucEGcwcuwJN56GOXMT6Y4q+skXv/Nc
	B+vh8JG88WZQhAYWPJwsYqh2PIzEHQXLdomyiq8dhjsbXFRq6DonaBBlGpVv5Yof/2JHhpsiML1Pl
	HAUJXyJYvM5zhdwD9BCo6QMmAXSK9tYQwB7gg4EL2EqIAUC9Cglzrg9Yfei4CA6ylRQjsNTPbJugp
	Cse4Gbynvdf2SHFFeF8ReUPSs+obGvCfVtgrVgWm2OzapOcmEr0boMzW2SrkK3IYy9edRsi4nBh2s
	lKj1pWqag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqo0a-00075O-1m; Mon, 13 Jan 2020 00:55:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqo0W-0006Tj-4f
 for linux-riscv@lists.infradead.org; Mon, 13 Jan 2020 00:55:05 +0000
Subject: Re: [GIT PULL] RISC-V updates for v5.5-rc6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578876902;
 bh=HMEpIO3iAVyKlv5kImX4HW06TyAK7WVzFHOTgbxj+NE=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=wVxzjZ8be2N/AbY0/Y3DZ6sqymqKFdp/Mh2qa0eAWZaYTVPJho6Z68HmrmMz6kPrp
 QDmwABIXcbpXvAA7fSfbuFo1mMC2FPG6nATHWOJfDeNwk9VnGDy8KXHiFEwX70dCcZ
 oj+xUlbWGRTT7dcAbqZxyb4na8G5C06e+5TnQ+SQ=
From: pr-tracker-bot@kernel.org
In-Reply-To: <alpine.DEB.2.21.9999.2001121053560.205587@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.2001121053560.205587@viisi.sifive.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <alpine.DEB.2.21.9999.2001121053560.205587@viisi.sifive.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git
 tags/riscv/for-v5.5-rc6
X-PR-Tracked-Commit-Id: dc6fcba72f0435b7884f2e92fd634bb9f78a2c60
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 373adb7313b233d64e21f3f6329fb41a5e6ae180
Message-Id: <157887690279.24225.10430037868816805913.pr-tracker-bot@kernel.org>
Date: Mon, 13 Jan 2020 00:55:02 +0000
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_165504_213574_0745E83F 
X-CRM114-Status: UNSURE (   0.77  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-riscv@lists.infradead.org, torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The pull request you sent on Sun, 12 Jan 2020 10:55:14 -0800 (PST):

> git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv/for-v5.5-rc6

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/373adb7313b233d64e21f3f6329fb41a5e6ae180

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

