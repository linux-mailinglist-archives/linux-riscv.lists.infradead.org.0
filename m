Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B83D1195D97
	for <lists+linux-riscv@lfdr.de>; Fri, 27 Mar 2020 19:25:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qlkRzTwBVD9B0BRyvuVkASwqJy/iAd8SuqXK++lKsAc=; b=oSdilfHf7bm2v2Wj2CDpMV/xh
	lvFRc+UNKrhibIiU+RYXNX5M0Jfrd7lBu1o2R2sC6Amk9i5bHUSajap9ctZlckRnj7JMFTbMuKgBE
	5Zq1eHe+qCsAwnB2uNq9trvzdtkydQDZdBB7C0SNHIh2iDwIgu+rObCT0xWgRBVAXhrt3G9SgEdFY
	IIbyuXzVYTPh/767+/pJ+vPcSCoJs8K+IcWt2LM8UgqTLXLTZWlItrXvqkWBdiZEdLPfKkxX7Q3Rr
	uFb2dj2nz0rxueAfgjBFwplf8ARqpw8W4N76QVOpouNbEmpVW77v1afgpdO2/Bwa/IoeQCH1vPVGe
	MNUor11ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHtfU-00065a-Mc; Fri, 27 Mar 2020 18:25:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHtfI-0005sA-WE
 for linux-riscv@lists.infradead.org; Fri, 27 Mar 2020 18:25:10 +0000
Subject: Re: [GIT PULL] Last Minute RISC-V Patches for 5.6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585333508;
 bh=XTyR3Ei+Ij4JCQvNeDFqRnPcP7UXYvEQrZ95s+WjTvY=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=ioKWNL71SlNMvYZM4fV+jwCXfxtvtou0Ty9l2flF8R+niCtuSqIBWGZKohAtdacHZ
 sXwgTaphDgdhjA0kzE9p0PqfPjIK2baHk9NOeekGgZFH1QkKvlE4jZdXIE+PU/hTJ9
 Ryuwk/DO05lCApLf1fnfImtnT3epKQrY6nSA3JUE=
From: pr-tracker-bot@kernel.org
In-Reply-To: <mhng-06e46f55-fd4f-48ab-b741-cf487976999b@palmerdabbelt-glaptop1>
References: <mhng-06e46f55-fd4f-48ab-b741-cf487976999b@palmerdabbelt-glaptop1>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <mhng-06e46f55-fd4f-48ab-b741-cf487976999b@palmerdabbelt-glaptop1>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git
 tags/riscv-for-linus-5.6
X-PR-Tracked-Commit-Id: 2191b4f298fa360f2d1d967c2c7db565bea2c32e
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 823846c3107197b6eae9fb656a23e986926d6c07
Message-Id: <158533350869.5176.11624956760593190651.pr-tracker-bot@kernel.org>
Date: Fri, 27 Mar 2020 18:25:08 +0000
To: Palmer Dabbelt <palmer@dabbelt.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_112509_064544_20F6A2B5 
X-CRM114-Status: UNSURE (   0.51  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv@lists.infradead.org,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The pull request you sent on Fri, 27 Mar 2020 10:53:16 -0700 (PDT):

> git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv-for-linus-5.6

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/823846c3107197b6eae9fb656a23e986926d6c07

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

