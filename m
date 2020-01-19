Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 389A1141FF9
	for <lists+linux-riscv@lfdr.de>; Sun, 19 Jan 2020 21:20:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bbsDQbjpc078AlBeuWR2/aN4TnnuZpwJY8u3ld2f5Sg=; b=YSHXaMql7ii6lGI8QfpcTGUAw
	sdhlbxnXppC6LwqQH1s5qUu5708t3jtSlhfs3Qr/Cueui1xTEfZNQC7iSkL4e57TPQ0VCFZ/26713
	+tuRqC+NpOe7J7eweiET6cAQnQo/XC464OmfvYp82Oa7mkNg43YCjsMASzVdfMJFpaS3WOrvpydu+
	PA26ouN1MPOuj5EF8pR/OedcdVNUPFSfIBExafed1c+VUAA43Rwkkn93tvSSv4bnyfIjs+QdeutmF
	27u+OofAhFGXeV2kahD6nrCOvwjvTGpUp90MWA4pEDrDTAe8RvwrQsKnamttDAQh74TJq1tRSnt6J
	bjE2/Pzrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itH3K-0003rA-Th; Sun, 19 Jan 2020 20:20:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itH3F-0003CY-UH
 for linux-riscv@lists.infradead.org; Sun, 19 Jan 2020 20:20:08 +0000
Subject: Re: [GIT PULL] RISC-V updates for v5.5-rc7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579465204;
 bh=bYz4CEe6vBzclYXesXXipvtUCFT3cuPjD73rgGjD4EU=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=tzFpSzeoYlQ1e8PZpQNnoBP4fSUblqw4QHsq8MX3+GeggAtJllhUKHqK5rDvrrEas
 HClBSVNKC+kyA0t5Lr3j1teExa+YOmFZWCTEKeJiCJk8C75PDkOqcWfJKGzoixPETJ
 HSl5wMsSwapilnYW/f7uz1t6VCyZwrOnymQv7M2I=
From: pr-tracker-bot@kernel.org
In-Reply-To: <alpine.DEB.2.21.9999.2001190951380.106116@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.2001190951380.106116@viisi.sifive.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <alpine.DEB.2.21.9999.2001190951380.106116@viisi.sifive.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git
 tags/riscv/for-v5.5-rc7
X-PR-Tracked-Commit-Id: fc585d4a5cf614727f64d86550b794bcad29d5c3
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 7008ee121089b8193aea918b98850fe87d996508
Message-Id: <157946520423.8493.8283323752335165653.pr-tracker-bot@kernel.org>
Date: Sun, 19 Jan 2020 20:20:04 +0000
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_122006_004097_88407A9E 
X-CRM114-Status: UNSURE (   0.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The pull request you sent on Sun, 19 Jan 2020 09:52:16 -0800 (PST):

> git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv/for-v5.5-rc7

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/7008ee121089b8193aea918b98850fe87d996508

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

