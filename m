Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 736A216EE6F
	for <lists+linux-riscv@lfdr.de>; Tue, 25 Feb 2020 19:55:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qaKxTJ4dct+x/wLg5R2mJmgU0pHbiAqEWB1guvDI5WE=; b=dBg8iL3U96xJz2yOyl6QgSse2
	zUMJWS19+KJNcosksuOAuDJOsYpaiwHDAyIBfDKPcq75+iqid8LdG+74T6ocBcA57IeS9e0J24Mvk
	Yo2YNenjJJqAI3UN0xJQeDebgmndNS/scIhhxr73JmbViSrOfDMVz+sBDsfbebuLKLar2rjzQaf60
	+E4ZBO019ZYbRtetpec1a4arKuwXNCBPlGrNUH55TbPquFfrJiDIqIZ2V4q5AtOywskoNGSlw6RZN
	67JDgzrBlutfJNktcaMFMSOlg0TT9qK5+ievRNPQsgtdogINU458nd9mjFTXsuqIrCW+bIqbwZMyM
	Z2q5b5iPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6fMQ-0001vp-12; Tue, 25 Feb 2020 18:55:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6fMM-0001jp-L7
 for linux-riscv@lists.infradead.org; Tue, 25 Feb 2020 18:55:12 +0000
Subject: Re: [GIT PULL] RISC-V Fixes for 5.6-rc4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582656909;
 bh=5TE2/XcIDrM1ynnHbz3LDakd34ty94tFlreoyNAhvOs=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=oslJEC+Vq62ItqEX1IMEEn3ltSMkgn59tAuDuJrmNHAbSMMUUZ057T8FPzEu7FEHd
 LK5+q1YR2aGSwK0ahFe94HIXRLsI57GAX46DN6xObMjjyW97oXLMKMPLhjHATTTCSs
 KbbkWnCMoG7eSm9uF7iQIoyJFH2I2sARzqxmhOV4=
From: pr-tracker-bot@kernel.org
In-Reply-To: <mhng-464e74b9-125c-42e3-9384-60c871d22cfd@palmerdabbelt-glaptop1>
References: <mhng-464e74b9-125c-42e3-9384-60c871d22cfd@palmerdabbelt-glaptop1>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <mhng-464e74b9-125c-42e3-9384-60c871d22cfd@palmerdabbelt-glaptop1>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git
 tags/riscv-for-linux-5.6-rc4
X-PR-Tracked-Commit-Id: 8458ca147c204e7db124e8baa8fede219006e80d
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: c5f86891185c408b2241ba9a82ae8622d8386aff
Message-Id: <158265690948.32229.44686078603210503.pr-tracker-bot@kernel.org>
Date: Tue, 25 Feb 2020 18:55:09 +0000
To: Palmer Dabbelt <palmerdabbelt@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_105510_735681_59FEA04A 
X-CRM114-Status: UNSURE (   1.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The pull request you sent on Tue, 25 Feb 2020 09:37:31 -0800 (PST):

> git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv-for-linux-5.6-rc4

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/c5f86891185c408b2241ba9a82ae8622d8386aff

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

