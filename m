Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8BF01DEFAA
	for <lists+linux-riscv@lfdr.de>; Fri, 22 May 2020 21:05:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tAtXr1mestflosT+H5ZM/cBwWPktlrzCOOVfiW7is1s=; b=trAVwaIPuFrjLrq58g6cTB1sf
	pni5T7W5DxQ4Mt1srACNy5J5GroG6JBB3CU2YJg5BOtNiK8xbRGPp6Jq3JHWgSncAtRdKr6lgRlM2
	H4oo4PseHMDr8SHfvXVl6agKMboQh9Yu/N9N1DW9D2n631lzSHcSdn20M/28IvehyCNfZxSRcASMK
	COArMym5UaLDeqZuCUyL4e8sWfHSQLglhWmDPQHXIiWUrh47p56X8mgm6yP+aY5rgKpvrztGqVq+H
	6tCLO5f76yvbh/ZWu2OdQUdaxEJt/XRot6emhAzD7S0+CW9QePfeWUVktg3ExLqajQYCBmRO8ivM6
	wBCct6Aqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcCyi-0006QM-8z; Fri, 22 May 2020 19:05:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcCye-0005oJ-0q
 for linux-riscv@lists.infradead.org; Fri, 22 May 2020 19:05:05 +0000
Subject: Re: [GIT PULL] RISC-V Fixes for 5.7-rc7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590174303;
 bh=0rVtqh7fRvqxE3tVjH+rOOZTyf5e1uGhHW9Vzrt3L4U=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=o19SXLPlHrKpcgS17TTk/uERx6vUemO5t4hfp5VX0BffI4YDJS4gGbQcfVYEBTB8h
 b3MC4gjBNaIyHGoCcSwO0YK8bqvaho6dIb7NdK2VEAbKe9m1X1mXRgybDH2Jysf8pr
 zn62slQfbe5/0+NK8nAvgyBNakGrx3c6WqKgus24=
From: pr-tracker-bot@kernel.org
In-Reply-To: <mhng-258df3d4-aa39-484e-9fde-7d93432f3205@palmerdabbelt-glaptop1>
References: <mhng-258df3d4-aa39-484e-9fde-7d93432f3205@palmerdabbelt-glaptop1>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <mhng-258df3d4-aa39-484e-9fde-7d93432f3205@palmerdabbelt-glaptop1>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git
 tags/riscv-for-linus-5.7-rc7
X-PR-Tracked-Commit-Id: 8356c379cfba8b1b90b0a2423f6afbbe2cdc5d91
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: b09ca17a2a082299c787025b6c3e614a24a24ca8
Message-Id: <159017430370.18534.962452857450653471.pr-tracker-bot@kernel.org>
Date: Fri, 22 May 2020 19:05:03 +0000
To: Palmer Dabbelt <palmer@dabbelt.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_120504_097303_5CA2155E 
X-CRM114-Status: UNSURE (   0.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The pull request you sent on Fri, 22 May 2020 11:01:05 -0700 (PDT):

> git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv-for-linus-5.7-rc7

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/b09ca17a2a082299c787025b6c3e614a24a24ca8

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

