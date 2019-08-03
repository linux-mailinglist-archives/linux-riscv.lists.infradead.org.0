Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F42D806BB
	for <lists+linux-riscv@lfdr.de>; Sat,  3 Aug 2019 16:22:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xvP+lJ45/6EC/fEiAjnfCer4jDRI+GC7j/GQyJv9HsQ=; b=ElUSE9cyOm2eP1
	wcimeC5vAppoUWVS6xrkW4bNOexvuYutC93jvh68VwmJtFdWRwmv23UwQGwEs6ZHbxfFL9cRuNvUl
	I7x15muFY3wHExdi855S6ocJunGphLmAvJ4ptVgH4NuUbGO9eZm988iLSY+qMlBdzuVilXa7vscwe
	9/y3UgfrEQOXmeyHaQn3DyUqcgTK7IlY1LJMMA9pcXmEXwD/Y7Bio3q2X9fNXalNefSuJfkWPzjF/
	1+S6IQ7egJWLsULDslhJkRzHy51Hox0bSB+Q7prkqB5NkktoNqQyaTwQs2vYWRTF5hKNhw2ergJq2
	eBS28PohN+X97fXCEplw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htuvY-00057C-TB; Sat, 03 Aug 2019 14:22:32 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htuvT-00056t-S7
 for linux-riscv@lists.infradead.org; Sat, 03 Aug 2019 14:22:29 +0000
Received: by mail-io1-xd41.google.com with SMTP id q22so38768882iog.4
 for <linux-riscv@lists.infradead.org>; Sat, 03 Aug 2019 07:22:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=+SFySWHmm4UbfytF/hIo7gNQJRXwrgC9uVAmtCspVNk=;
 b=MWNahO31L4f/fjhIguRqPGLj3CcevEAS+JmBUiYNJSbWsfzos/g4vEz4RU/+MWqwsW
 1u8aZ5Iy04L2wkDGSIyYNxs8aebr6RugGvwGQslWwp9VWiXKuQAM2ZCoa/JXRfJBlRG2
 hIHpCc2OKt/+oyPoMHhCeP51lxrhgoYEqo4CzK3lNieSpxYrbRYXgh1X6lfrdjVBC2wK
 awzgLSbWmkP1g3Sp5wdOWjsFtSRzAQLsY2TOCBllGzi2GfNrKZW7ytbGGQJwYFDgBvNf
 yZYOoncN5IexND8mqdAoP66/SliWb2wKF7YGOpxVxVhwnD42Ly2d5yYRyLXUUeFNMmHH
 PwbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=+SFySWHmm4UbfytF/hIo7gNQJRXwrgC9uVAmtCspVNk=;
 b=YoTm3SS5JSBGk1mE5Z57H/4Li1cmU8tGgVRmcXUAvc7KR1QdMJFshqymUXJX88iVcy
 w+2hEO8SJxdLBtFbVUN1AqTILDtA5GPjfHJCC9h21c81fxH9bNFDMtmuFD1D2EDygkiH
 Cz1amS1jqLj1Xg19KDwMkGo+BVflKbfQ7a6EwgIKkd4JbExWb4xnrz5kFbO+i6F9qJ79
 6b5H7mFYoREhv7jY/FepVO/4tbXLeEN6ZsUYWC80qA7C1WuNvfSTyMPQNtdoBrUrimcQ
 9+QBEW9H17uXZziRn+bPdL5EadSPNLw1d4BGi2z2qqZnSAgea46j0hqHyM2zPHqCLPg8
 PHrQ==
X-Gm-Message-State: APjAAAVfBdHV4wDHnzwA8/KdH+SeoUIJ2eWhhKxx1HVRC6uHPCF8byRi
 pLK9/MC0vSyVPW0HQax5a8Fzsg==
X-Google-Smtp-Source: APXvYqyq0xQ7FCCAQais7Dvc2x+AXN/25pbNDPArr3AzFzS/SJM4W2dzNvaJgBUdHKdad/5AfUC+Tw==
X-Received: by 2002:a02:230a:: with SMTP id u10mr63091978jau.117.1564842146406; 
 Sat, 03 Aug 2019 07:22:26 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 v10sm74104437iob.43.2019.08.03.07.22.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 03 Aug 2019 07:22:25 -0700 (PDT)
Date: Sat, 3 Aug 2019 07:22:25 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: torvalds@linux-foundation.org
Subject: [GIT PULL] RISC-V updates for v5.3-rc3
Message-ID: <alpine.DEB.2.21.9999.1908030720490.3783@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_072227_940549_9ACB8ECF 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Linus,

The following changes since commit 609488bc979f99f805f34e9a32c1e3b71179d10b:

  Linux 5.3-rc2 (2019-07-28 12:47:02 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv/for-v5.3-rc3

for you to fetch changes up to b7edabfe843805b7ab8a91396b0782042a289308:

  riscv: defconfig: align RV64 defconfig to the output of "make savedefconfig" (2019-07-31 12:26:10 -0700)

----------------------------------------------------------------
RISC-V updates for v5.3-rc3

Three minor RISC-V-related changes for v5.3-rc3:

- Add build ID to VDSO builds to avoid a double-free in perf when
  libelf isn't used

- Align the RV64 defconfig to the output of "make savedefconfig" so
  subsequent defconfig patches don't get out of hand

- Drop a superfluous DT property from the FU540 SoC DT data (since it
  must be already set in board data that includes it)

----------------------------------------------------------------
Mao Han (1):
      riscv: Fix perf record without libelf support

Paul Walmsley (2):
      riscv: dts: fu540-c000: drop "timebase-frequency"
      riscv: defconfig: align RV64 defconfig to the output of "make savedefconfig"

 arch/riscv/boot/dts/sifive/fu540-c000.dtsi |  1 -
 arch/riscv/configs/defconfig               | 10 +++++-----
 arch/riscv/kernel/vdso/Makefile            |  2 +-
 3 files changed, 6 insertions(+), 7 deletions(-)

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
