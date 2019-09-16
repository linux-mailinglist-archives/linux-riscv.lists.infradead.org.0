Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3B6B446E
	for <lists+linux-riscv@lfdr.de>; Tue, 17 Sep 2019 01:05:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BIGa1LRm5DHf8adGgv2hFZYAzLEbqVjczGu1AFsLcdc=; b=u5BKr2iXUAsEXY
	xnPnapBqP/6VoKJlv9UUQbeLaMOGSJOQ0LpYfsxGDcrZ6nho5Q+eC3jnjBb9bQ4Of7y/uNo/8c6q1
	GZZQvKUHISzU0/OSInfcHMcCaYfMN8nyfPMlMcUHgTUh8LaXwYL/SjDVXv0rtdBzv4eW5dpZEmBTt
	oTIiKLn/wN7aMxaJJcyvRyl95t8wj79hF6CwiEzQn4muHrutkP01uRnS4SXf4SmrE0oNv6NBUZi+7
	2D4/RIKrScJS8jDYAnf0F9dgcYj3Vmau1dhKWd09WKHVesG9XJ2rFvKDzMlLnCD07gu/2+w6/1H/0
	XER7epYp1nJ7Kp1mkfbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA03z-0001aK-RM; Mon, 16 Sep 2019 23:05:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA03Z-0001G3-Uc
 for linux-riscv@lists.infradead.org; Mon, 16 Sep 2019 23:05:19 +0000
Subject: Re: [GIT PULL] RISC-V updates for v5.4-rc1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568675117;
 bh=EYR2fYa2Pxx3FqcnzK82r9ahc0fLXxJECj8/NIbLbAQ=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=dX2xokf8ic/lXlfIshVdLl9QyXGeqb4eumKC1pbqPcjhL/gnAFHdkD842PRodoI9i
 utToS69Crg33a+17Ta6Qv6XuBU8oZHnKXacerTuN7saNleyJL5k/wECci97zMTlwvE
 /glNl5s7JeeeNB3Jq7cWQW17UbPJeJRdzwjl0nKA=
From: pr-tracker-bot@kernel.org
In-Reply-To: <alpine.DEB.2.21.9999.1909160819190.11980@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1909160819190.11980@viisi.sifive.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <alpine.DEB.2.21.9999.1909160819190.11980@viisi.sifive.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git
 tags/riscv/for-v5.4-rc1
X-PR-Tracked-Commit-Id: 9ce06497c2722a0f9109e4cc3ce35b7a69617886
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 58d4fafd0b4c36838077a5d7b17df537b7226f1c
Message-Id: <156867511761.30760.331827168346797172.pr-tracker-bot@kernel.org>
Date: Mon, 16 Sep 2019 23:05:17 +0000
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_160518_010065_974C6A33 
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
Cc: linux-riscv@lists.infradead.org, torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The pull request you sent on Mon, 16 Sep 2019 08:20:33 -0700 (PDT):

> git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv/for-v5.4-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/58d4fafd0b4c36838077a5d7b17df537b7226f1c

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
