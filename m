Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E171753E2
	for <lists+linux-riscv@lfdr.de>; Thu, 25 Jul 2019 18:25:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QsoGtNziGpuad8fMxnVZjzS4y1Q4eyMTa4/KvlKIpb0=; b=H8/pMNCpIVs9ng
	mmB5SGkDJGO/jUB/8WNFAS1jF/vWOHK3evSqjiNa1EbWmzjfXl8kVpxdUzFV4eOm0hZHGj7zjfwo+
	dJla925bar6Evcb+iUySnkRDVUnyQh0nEYtWPOJV1oDdWNOjkaRQzDqmIeVDo6hON6E/zvlKbfXFz
	FKLVvxMELenvDAyeaPPZ0Rn7fzGK14XmhaJKW++lgXRtcwmblGfwJNewvgTtRjwqDPvq5SCADRrho
	Gfq1o6sWn7oKQfln+XLLKxHL6Co9z855J6Yd3Tpvf2kD+6o1mTdhxP4dm/wmN3v3FPTjGuTdncAGK
	euphew3pZyVdf/C8Egmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqgYc-0003Ne-K3; Thu, 25 Jul 2019 16:25:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqgYS-0003JG-PS
 for linux-riscv@lists.infradead.org; Thu, 25 Jul 2019 16:25:23 +0000
Subject: Re: [GIT PULL] RISC-V updates for v5.3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564071919;
 bh=6GZ6RGgSX864lLqxarLspo2pFTIRkvOhJAKWGpZpFJ8=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=c0tvnRUa4vAXkj9lqa+27k4aWZo+s8RuWemee8gIBqeL8sgw97rChwCDpleBqZkck
 jYvejNeEJaNxjPUqyXd51kveWCGZ9pIqq78zhTLN+rS//AYhFzjmk7SuoDv0/227vr
 RqEub1bpWd0AkjkCi9d5T13XAXC3IpWk8PzNCLXY=
From: pr-tracker-bot@kernel.org
In-Reply-To: <alpine.DEB.2.21.9999.1907241331250.28120@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1907241331250.28120@viisi.sifive.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <alpine.DEB.2.21.9999.1907241331250.28120@viisi.sifive.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git
 tags/riscv/for-v5.3-rc2
X-PR-Tracked-Commit-Id: 26091eef3c179f940d2967e9bef6e22c9e1c445f
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: a51edf751b660f3fc1d0724bc4cb839bdaf5576c
Message-Id: <156407191942.26857.7692173476303162261.pr-tracker-bot@kernel.org>
Date: Thu, 25 Jul 2019 16:25:19 +0000
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_092521_357361_3E7855DD 
X-CRM114-Status: UNSURE (   0.90  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The pull request you sent on Wed, 24 Jul 2019 13:34:03 -0700 (PDT):

> git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv/for-v5.3-rc2

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/a51edf751b660f3fc1d0724bc4cb839bdaf5576c

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
