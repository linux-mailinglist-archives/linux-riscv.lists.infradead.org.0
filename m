Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1875C6D4C3
	for <lists+linux-riscv@lfdr.de>; Thu, 18 Jul 2019 21:30:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TFXwPjjGeWGzjwEXHYXng5PTNskWWO4wepIu2ZPOCzo=; b=RGAT0TtYvILoEl
	x/WLxL6B4juWdfkR3b1+KtV2j9aMfOMQfy9V21qGxjK9IjdGL23WVb0qQMZ0o9u5QLqltYtIlrtsD
	kIr+txoA4xS1+H5a1lfj+ZY4IkrR1XBw1BEi0ri2Cb+lS+EDbGA62a95SXUnyuzIyjmYb2dd2sKGc
	/T+0a8pHYidabAiP2jti3LZ+HbsEIYDuqzi2YLgZlemwxTsDHSLQshoUNqehghtqK690Y/CB1m2Gv
	T/sHDqPcdBFYZ+VyaCHqFOVvnNZ7ACzgzC5VD/h+KnUEUSBj/ovBtbPxNgOokJ+sr2Spm+X73xQSg
	Xlkw+jP9AFrrQKTbdf9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoC6l-0006Y8-8X; Thu, 18 Jul 2019 19:30:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoC6b-0006WX-DF
 for linux-riscv@lists.infradead.org; Thu, 18 Jul 2019 19:30:19 +0000
Subject: Re: [GIT PULL] RISC-V updates for v5.3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563478216;
 bh=D1f/Tc3RXavpmYOt0PHRUeAsG9ee1Ov4o3Y53yPM7LI=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=zIQiw1cMMRma0E/MYgXBQ4I3aZtkLL2ZxaRcOKzijKBX2U4GSj3cYkoKPRvtR94yU
 9qD64wGChsZmoAwG7NKMO2uz3cijc0qJ7odtdhjRjr1rNgQ19+OnUrioYYvplU7btC
 0C3qKyJVvPnrgmbubFqq6uf+DewsJ+qgykN3lcSc=
From: pr-tracker-bot@kernel.org
In-Reply-To: <alpine.DEB.2.21.9999.1907181155050.17807@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1907181155050.17807@viisi.sifive.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <alpine.DEB.2.21.9999.1907181155050.17807@viisi.sifive.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git
 tags/riscv/for-v5.3-rc1
X-PR-Tracked-Commit-Id: 2d69fbf3d01a5b71e98137e2406d4087960c512e
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 0570bc8b7c9b41deba6f61ac218922e7168ad648
Message-Id: <156347821639.4271.16107164962398721436.pr-tracker-bot@kernel.org>
Date: Thu, 18 Jul 2019 19:30:16 +0000
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_123018_252743_958E879B 
X-CRM114-Status: UNSURE (   0.89  )
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

The pull request you sent on Thu, 18 Jul 2019 12:07:36 -0700 (PDT):

> git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv/for-v5.3-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/0570bc8b7c9b41deba6f61ac218922e7168ad648

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
