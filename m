Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACDFC1125F7
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Dec 2019 09:52:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VbSlraRKW1h6H09AWbIwzLPGNtIDxR9arS6sirAYwJA=; b=uoJ
	kt9p7pQqqPIHXztyYTaQa1546E5Td/s4nEURaNjZi+bpYkBVMBlgbOQ/AQGrFstgHcLSeFPRqH9Zy
	CRZyQi7ebQB7rQYLcUXyi3rOj5u+upRBWZTyE9mlxGn8d7jsO5RRWy4X7qi3mbMhst9s4baBPP6tJ
	GWUPsg0Gc1pfEPp8/GSola0jkWE0KMcKxsQfPeUrv7Kf2GmYfEuS82si92BqmXFrbp+6X0sGGd2Mi
	2sRWZ8WpcVXjN68P0+wF1Z0GgUloraHrR8rhSmKZyYyHYdiNWtNePqBN66oS2WOqlO/wMJUTuft9f
	NeZHp4L+OCXLA2y+xSezAVhmas/j/HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icQOM-0001iq-RC; Wed, 04 Dec 2019 08:52:14 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icQOJ-0001iG-9n
 for linux-riscv@lists.infradead.org; Wed, 04 Dec 2019 08:52:12 +0000
Received: by mail-io1-xd44.google.com with SMTP id z26so7116228iot.8
 for <linux-riscv@lists.infradead.org>; Wed, 04 Dec 2019 00:52:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=VbSlraRKW1h6H09AWbIwzLPGNtIDxR9arS6sirAYwJA=;
 b=c6YQ/CC7bn4j4hm9q72EVlvKUyNaajPvf64J+26Xmu1skjC54vIn6Ooi02zolvRivY
 XAIZz1anbbfubFp2wtJU2zqyZIBShjO/Qjnl/L0PbyYOxCBRXTfauQcHItm/AYTDDHl2
 jfCIyTZGlNEHVYpnECUIQP5TXN4MIrWN5/on1aZ7FoMTkpD7hvp0Ts2s3J90Zy7shf42
 Dv7s96Fp9xlv+OyRQ+1KXl/MIjYAXGyGGPqwT/euEmFvpkxwXaK7acg4IdHq7cw/IpoR
 eK/AXzs2h7My1DRaziiWwq9PwANx29k4hkvTwqI1f92Mrdrgww09L5LK8iwnUpEJ3OPd
 0NGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=VbSlraRKW1h6H09AWbIwzLPGNtIDxR9arS6sirAYwJA=;
 b=MO7OVS6fkAdNkIWBtQaf9qW8oFltHLmWxEDzouSsNT6lBN+bQv2HVUjzWK7yZh/qrw
 zM6YkGAkkUYdC34aZa0Y/ojizAvf6C7HwvyFH6Mk9ZK0VncdkbuV2x5G+Q2s87nb7Bgz
 Qrfp9kRLQcLGaScSbVuSMh4EYIYsyVhKfeiHBW8cOst7CGFccgTw8OKwqUmuQB9IFFjm
 y6+qTjEXim0o9pW8mBapopSGKaSdZmX+pkeSW/k9fS6m6vdHdzOR/D5vo6rsQwcexPPf
 kyj5gVZItuwGrC/rUoIZEHIJpdszdyqwjXuLcGzMrkUMhv/uKwA4uaMmp9XllKSq7Tql
 AMiQ==
X-Gm-Message-State: APjAAAXcBhPfq0PCjnpj6qAnIR3j5K4UaPrZsLxC6yc8LfETuDiHAsow
 giHCuCKguP/vfXILVBybSKJi9jlejsk=
X-Google-Smtp-Source: APXvYqyhs0VOhD8pRYtwYkIDbN3LMMXkKvjbgTwc1G/5AlUPF+NK+mkXe8vUg+Fx0fECgjN0fQhVIg==
X-Received: by 2002:a6b:3b90:: with SMTP id i138mr1354434ioa.105.1575449529990; 
 Wed, 04 Dec 2019 00:52:09 -0800 (PST)
Received: from localhost (67-0-26-4.albq.qwest.net. [67.0.26.4])
 by smtp.gmail.com with ESMTPSA id m18sm1320714ioj.74.2019.12.04.00.52.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 00:52:09 -0800 (PST)
Date: Wed, 4 Dec 2019 00:52:08 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: torvalds@linux-foundation.org
Subject: [GIT PULL] Second set of RISC-V updates for v5.5-rc1
Message-ID: <alpine.DEB.2.21.9999.1912040050430.56420@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_005211_372553_FDF31C8C 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Linus,

The following changes since commit 5ba9aa56e6d3e8fddb954c2f818d1ce0525235bb:

  Merge branch 'next/nommu' into for-next (2019-11-22 18:59:09 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv/for-v5.5-rc1-2

for you to fetch changes up to 1646220a6d4b27153ddb5ffb117aa1f4c39e3d1f:

  Merge branch 'next/defconfig-add-debug' into for-next (2019-11-22 18:59:23 -0800)

----------------------------------------------------------------
Second set of RISC-V updates for v5.5-rc1

A few minor RISC-V updates for v5.5-rc1 that arrived late.

New features:

- Dump some kernel virtual memory map details to the console if
  CONFIG_DEBUG_VM is enabled

Other improvements:

- Enable more debugging options in the primary defconfigs

Cleanups:

- Clean up Kconfig indentation

----------------------------------------------------------------
Krzysztof Kozlowski (1):
      riscv: Fix Kconfig indentation

Paul Walmsley (4):
      riscv: defconfigs: enable debugfs
      riscv: defconfigs: enable more debugging options
      Merge branch 'next/misc2' into for-next
      Merge branch 'next/defconfig-add-debug' into for-next

Yash Shah (1):
      RISC-V: Add address map dumper

 arch/riscv/Kconfig.socs           | 16 ++++++++--------
 arch/riscv/configs/defconfig      | 24 ++++++++++++++++++++++++
 arch/riscv/configs/rv32_defconfig | 24 ++++++++++++++++++++++++
 arch/riscv/mm/init.c              | 32 ++++++++++++++++++++++++++++++++
 4 files changed, 88 insertions(+), 8 deletions(-)

