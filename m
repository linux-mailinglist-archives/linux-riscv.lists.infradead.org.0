Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 561791BE455
	for <lists+linux-riscv@lfdr.de>; Wed, 29 Apr 2020 18:50:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XuDXqvFqCmthtiRQ3mlmSbfj/i3oM43OMHJpVOeUy5c=; b=JPZBHAYiTMSx2dTJBTFU9mK0q
	CEVABRIVWi27noWEw2myExauAokMmeiWqYJvqP1GdasKEvBrxWv87ic72dgEy8ykmWSxNbOeGgHjW
	e2wXeJ15jZbm41BY2njGRL/A75loVXzUtL24kYMdcOpB2wlPcHr/bV8FlKcz7qEojUUo2B11nS+aM
	M7ana7Td+k6PIvASMbjuY6bXLRiA0vudKo1ihNRzkliTCiRDkrQtP3Xm4VDZ71yQGcWVUL4xhDPvM
	EtE8e2b9UyMMowTEqBIDaRC1wBU3XCfhJn8i12uZwRcH6Rugv8xVOA/ePKMt7F+IhQD/Yn7MYyqYe
	2wFzqjaBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTpub-0002iN-B1; Wed, 29 Apr 2020 16:50:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTpuX-0002hf-99
 for linux-riscv@lists.infradead.org; Wed, 29 Apr 2020 16:50:14 +0000
Subject: Re: [GIT PULL] RISC-V Fixes for 5.7-rc4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588179012;
 bh=bKg24XwkHVX8aJUuYcsRZeOlgw2+5m4GrK/bym9sLHA=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=YlFyoPp+RX4fOGy1hr+a/QAvZ0f8gO3XTSOgYIFrX5V7uVzT4FBv8RURML5DN07ZW
 4MMsuij/5Mv2Zl8xpqd9w/JgXqvxK09ORuK3jRTXxCHULnn4HnKPKBdpuqkUmhmzYX
 jetpRxCeVPySVoZwyiqmePZdpJ0oAdKZj7jlFJaE=
From: pr-tracker-bot@kernel.org
In-Reply-To: <mhng-bd053cce-6f5a-40f4-9e58-a5ee70cc73a1@palmerdabbelt-glaptop1>
References: <mhng-bd053cce-6f5a-40f4-9e58-a5ee70cc73a1@palmerdabbelt-glaptop1>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <mhng-bd053cce-6f5a-40f4-9e58-a5ee70cc73a1@palmerdabbelt-glaptop1>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git
 tags/riscv-for-linus-5.7-rc4
X-PR-Tracked-Commit-Id: a5fe13c7b49478c95e74f31f5b8b8347735684a7
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 1d2cc5ac6f6668cc15216d51051103c61467d7e8
Message-Id: <158817901265.22148.17660808942250838603.pr-tracker-bot@kernel.org>
Date: Wed, 29 Apr 2020 16:50:12 +0000
To: Palmer Dabbelt <palmer@dabbelt.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_095013_347531_8E80135D 
X-CRM114-Status: UNSURE (   1.06  )
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

The pull request you sent on Wed, 29 Apr 2020 08:53:16 -0700 (PDT):

> git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv-for-linus-5.7-rc4

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/1d2cc5ac6f6668cc15216d51051103c61467d7e8

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

