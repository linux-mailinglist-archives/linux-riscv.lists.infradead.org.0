Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3900E6247
	for <lists+linux-riscv@lfdr.de>; Sun, 27 Oct 2019 12:30:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0OCsx2dABKvCVvZ5g/vG4yRZfWTuceK5ws5SFxjco8w=; b=dZNUbnYI37/YnV
	7mFNdtN2SBiNnckG6unjMmEK0Y4W3Feak+P7ZdGNvtcy6NsGTWpxTkboLdIQ6hwjjVe81DuAxTR2z
	LRSAPMvPdbBCKyBUKyEjgaJGI2BzmVQlmVzkCWsWGFQNL4V5Y59xp5L7Wozl45LAblEe+wN2X8Vh9
	DrTjc9akNqpqgjn+q0P4n7OWlNtPqJO1/csH9Wd3Ww6ng6K0EPDpKNZNPqy5+Xp4jmHdmEQZh954H
	rUaUD35WckKrQW5wCyLULdvF0oNbEtgpc6PTm+CWbV8ZNLcJD1AYpgP5j2ZO+eMQTcjw8Ekupowd3
	AxP/rBa+KieWFEFWngnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOgkQ-0007n4-UJ; Sun, 27 Oct 2019 11:30:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOgkK-0006ed-7B
 for linux-riscv@lists.infradead.org; Sun, 27 Oct 2019 11:30:09 +0000
Subject: Re: [GIT PULL] RISC-V updates for v5.4-rc5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572175804;
 bh=C7auwD1WXWbMnFdBuCDr/ykryLHxN64hBFI3GfcQY7E=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=E9rIU8KwjAmwtRcMrwUc9kHyeOyKFUwkAoctz8MOAdDkw2EAYlRc5vkH1LXlzyq4a
 2fcr0n1r9ueu9RJcxDVKujrVgJOc5uYTaHWpjWbLXkCFiUXgqW9Yj4ZwACwwobr7vh
 vCfodc7/t3c5rO6OWqy4p8dUcvwQg27wBxwRDCC0=
From: pr-tracker-bot@kernel.org
In-Reply-To: <alpine.DEB.2.21.9999.1910261701250.12828@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1910261701250.12828@viisi.sifive.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <alpine.DEB.2.21.9999.1910261701250.12828@viisi.sifive.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git
 tags/riscv/for-v5.4-rc5-b
X-PR-Tracked-Commit-Id: e8f44c50dfe75315d1ff6efc837d62cbe7368c9b
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 6995a6a5a538dae047ff16ec267394e5258e84b7
Message-Id: <157217580489.15608.4260623730121864685.pr-tracker-bot@kernel.org>
Date: Sun, 27 Oct 2019 11:30:04 +0000
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_043008_315308_0908595B 
X-CRM114-Status: UNSURE (   0.66  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The pull request you sent on Sat, 26 Oct 2019 17:02:43 -0700 (PDT):

> git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv/for-v5.4-rc5-b

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/6995a6a5a538dae047ff16ec267394e5258e84b7

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
