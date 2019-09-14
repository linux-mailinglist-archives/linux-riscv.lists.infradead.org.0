Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B56E4B2B78
	for <lists+linux-riscv@lfdr.de>; Sat, 14 Sep 2019 15:53:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Rqmn6gLl1EV0IHVjHmXHXufmlnMpBVu01QNGaj62ZzE=; b=YVMtnQdfZKJExf
	/HfmI7W/thr4iXBB3DyGoCMRmS4BMwptipCVqCCQrLzwUwfBxJfQdM6JIQr6A6dJBus1BCFGC5WW9
	nL15DIoiN0istcR2+ow+KPAEmT9In7fsa7XOfX905cJCJ6PSbSziYvS/BaXHUA1v/VCdeIC4V5ZR4
	+VlXYGZ1UXuGjwM1dWq/Sk2dYP6P2vcdX4kvxA/qYSe/YcpOy60r7aO9bPprtziQ14L7bKq2yEvDR
	UN7dGtJ7AIdK6LOTRy8THuy+XXAKXd+ZDw/XeFWBP89q2BxKoJ9e69mza4RFGWZmOBH6P11nnANFA
	487+atSL8VrHZMcsY3Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i98Tx-0000Dg-2s; Sat, 14 Sep 2019 13:52:57 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i98Ts-0000Cy-Ob
 for linux-riscv@lists.infradead.org; Sat, 14 Sep 2019 13:52:54 +0000
Received: by mail-wr1-x442.google.com with SMTP id b9so1039015wrs.0
 for <linux-riscv@lists.infradead.org>; Sat, 14 Sep 2019 06:52:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=RdKdyuMchtAQNR5tLHPOh6qnxzDs2wdkOkgcEODQq6Q=;
 b=CWLwMa0/jg5XrFiCfk6EZWcggOctvz5YacJtR3eGqWKgEEoTTDq1eNfAp8SZy1C2bj
 kS+5mL49/HZCZO4hFttI67TEM1w/1TYnXqe4O6sC6rngosQGUzl4pFO1rbk/DDYn8CNv
 Xv4aBw9v9g7Qe32DVbHy7jhRpnaCAxKvZ60CwV0dIG+EIV4l26ZTmuYU7176s0+UIvU2
 P2AujOj1L/J7j3G2m4TTjHUJNWHdlfs8OZIFCfT/OioLvqAVtCGf90faqItWdj6nZACQ
 eDXbxkzwKunK7278bAEpWluRoeuz/O8hPA7Uu+w73S915UXWoSDIaWCHYWIuVJ3BnqiU
 bGDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=RdKdyuMchtAQNR5tLHPOh6qnxzDs2wdkOkgcEODQq6Q=;
 b=dkvEFUqljg3QDayS3u1aOWJU/lUucf4yOISgL9LQ0zmor9asVUMHTA3IvpYOB4D91Q
 0sX2MDaoK5ecTsX6by3wkSsYYEN91b51d9cgisSUfQM+2KMqTf4Iaxb/zksQ98TnJtvG
 /gP73LQXMeYpy1gYImxQDtgZvR6q3kteZWK84Gym9uH7bPOYhU9n12MYzYsUdw/V7j/k
 pYtZ9uXAZ755LbT7GL6L+8yLCFYsVWARps2zFQly2R7LatAjROqHxz+f2Gzck89gk3gt
 0kQkbBhQuZ3wxWsh6XwVqMk+QI0v/owruo5MggBYgmqxyWTzl2nPfp960XzxnF4IA569
 SlDQ==
X-Gm-Message-State: APjAAAUKEUPQc0iYkakTTPHMuXt1oALsf0PFcgwZNCzsOJwouqCfJxCr
 u4Rhb2BjkH/xw+5jyJAhWePqEg==
X-Google-Smtp-Source: APXvYqxQZXGxDvytZcxEFYvIkYLbXYnM+f7vgeON5vWCZPwueJv553ZvDKXS047vVPmVnGPS/VeaHw==
X-Received: by 2002:adf:cf0e:: with SMTP id o14mr12444450wrj.277.1568469170049; 
 Sat, 14 Sep 2019 06:52:50 -0700 (PDT)
Received: from localhost (193-126-247-196.net.novis.pt. [193.126.247.196])
 by smtp.gmail.com with ESMTPSA id m18sm44032730wrg.97.2019.09.14.06.52.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Sep 2019 06:52:49 -0700 (PDT)
Date: Sat, 14 Sep 2019 06:52:48 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: torvalds@linux-foundation.org
Subject: [GIT PULL] Urgent RISC-V fix for v5.3
Message-ID: <alpine.DEB.2.21.9999.1909140651430.10284@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_065252_809269_A8DD2543 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-riscv@lists.infradead.org, palmer@sifive.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Linus,

The following changes since commit f74c2bb98776e2de508f4d607cd519873065118e:

  Linux 5.3-rc8 (2019-09-08 13:33:15 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv/for-v5.3

for you to fetch changes up to 474efecb65dceb15f793b6e2f2b226e952f0f8e9:

  riscv: modify the Image header to improve compatibility with the ARM64 header (2019-09-13 19:03:52 -0700)

----------------------------------------------------------------
Urgent RISC-V fix for v5.3

Last week, Palmer and I learned that there was an error in the RISC-V
kernel image header format that could make it less compatible with the
ARM64 kernel image header format.  I had missed this error during my
original reviews of the patch.

The kernel image header format is an interface that impacts
bootloaders, QEMU, and other user tools.  Those packages must be
updated to align with whatever is merged in the kernel.  We would like
to avoid proliferating these image formats by keeping the RISC-V
header as close as possible to the existing ARM64 header.  Since the
arch/riscv patch that adds support for the image header was merged
with our v5.3-rc1 pull request as commit 0f327f2aaad6a ("RISC-V: Add
an Image header that boot loader can parse."), we think it wise to try
to fix this error before v5.3 is released.

The fix itself should be backwards-compatible with any project that
has already merged support for premature versions of this interface.
It primarily involves ensuring that the RISC-V image header has
something useful in the same field as the ARM64 image header.

----------------------------------------------------------------
Paul Walmsley (1):
      riscv: modify the Image header to improve compatibility with the ARM64 header

 Documentation/riscv/boot-image-header.txt | 13 +++++++------
 arch/riscv/include/asm/image.h            | 12 ++++++------
 arch/riscv/kernel/head.S                  |  4 ++--
 3 files changed, 15 insertions(+), 14 deletions(-)

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
