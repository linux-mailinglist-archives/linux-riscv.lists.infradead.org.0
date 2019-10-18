Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11750DD58E
	for <lists+linux-riscv@lfdr.de>; Sat, 19 Oct 2019 01:36:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zb3kUmjwXVpCyzioWI31QbpjfaofOGTc/nNhUqZpPAc=; b=hEJihMMeeb8FVa
	K7AvtpGNfowi2AMBzhC1FqkTsWAN5mZXLbvDqCACj7dfc9XSjpqtwlUSiJof7QhK2U0e/jflsJ/Fi
	RYENfRAb2SPoubmi3655OlVYApYN5O1DL9oL61q1bNe67/Ismf9bvLrgxTG1d5XYAg83A9s1Tpqq4
	rAyMyZDjRwqvYjW3Dcu+v4DbZsTqUF0/fA/uYBx5bR9DrKZWjaKV74z7EqiAlqwa3bmy4ZLP6IV4u
	dpiaCcAeRbgN6cvHaR+oTn7IM1pgHobdGHzBbCQA2IzEsLShqkB8o+8VxFqX1vVWxHtgUSzsTih5K
	7o9xVD8OW+xDzTz1A7hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLbnB-0004Bu-B7; Fri, 18 Oct 2019 23:36:21 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLbn7-0004BO-EC
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 23:36:18 +0000
Received: by mail-io1-xd43.google.com with SMTP id c25so9352909iot.12
 for <linux-riscv@lists.infradead.org>; Fri, 18 Oct 2019 16:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=bj8M5crgXS5pe7Ws6B0DEpoTTFjZ4fX9IydxSQ38V1g=;
 b=c+/Cz8A6qw3uKYGodKqQFc5z6qEWLPGgwY5JjZAGLGVEXT2Hov4diwVZa2+YkwU/NO
 hwIQ254JhbLsrr+y1K+m3ZjMolyHZZnE3p1kjKN2V67A6xHp8pW79hlCt/Uma6WOvBK6
 vrja9DnKBgku7UdqrNtrwatBRXjqWSntuLjU7xUPpcCfolYiuDbOO45qb2EAqO6J/j5N
 OfwvN6E0aVamDtLf2LCJuf1BQ1RQ17BnL/eVouRYYfQekC45p87tu+ly3MVsZfqqGSIM
 xgG0Y+AbeqO4WQ1ShaaSggMaDI/fa4unKCAQtFS8awKUm3rUfiUvcWl1Ak2lJ0klwoRr
 OpcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=bj8M5crgXS5pe7Ws6B0DEpoTTFjZ4fX9IydxSQ38V1g=;
 b=ue0qE/4oa0XJfXEm+kMJVb5h5WTZd+dqq6Wbw481sbuO48aOi/lhFIIyHLMTiIVvQT
 cylvdME0lGUq4RJ7gHn5n9Ww1vNHdetl+mDlfTnLqJc5SYvK1CQB2pdkyViN92hrridp
 oXZI2LKeqs+zDq5cm0ZfEQRVKiDkpOww1w1OzJ6fZZvFQ4o5T9MztNLxlXCGNPqvSCt5
 oUcdnW0a0ylmwUzmjm31WfmZA+7Eh7mLYLuLCPfet+bC8PLf1z2brOaFb2+xmE2VTCEI
 gYdD/ZUmcVHEzShaIMcFS5i3P2fvbZiTTwi3TylY1P9GOP9w3DSZVGPCxinYj9hpTbZ5
 VEUg==
X-Gm-Message-State: APjAAAWdF9oHKqI+J5ZaZ4aUycWmBOmiCdvFYyexRMEeOeS5DFjAnyWJ
 wbiWwTKCID+1WbuRuIKL8BUESA==
X-Google-Smtp-Source: APXvYqwzjDExcfN8hf9accYZrJ5ml9DhB+vSBaeWSzRDN7u5f9VNnSCicJvyTwMGuokrdEquJxdHhQ==
X-Received: by 2002:a5d:9dcf:: with SMTP id 15mr54904ioo.83.1571441776385;
 Fri, 18 Oct 2019 16:36:16 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id r5sm3202124ill.12.2019.10.18.16.36.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 16:36:15 -0700 (PDT)
Date: Fri, 18 Oct 2019 16:36:14 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: torvalds@linux-foundation.org
Subject: [GIT PULL] RISC-V updates for v5.4-rc4
Message-ID: <alpine.DEB.2.21.9999.1910181634460.21875@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_163617_539503_F587B50A 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The following changes since commit 4f5cafb5cb8471e54afdc9054d973535614f7675:

  Linux 5.4-rc3 (2019-10-13 16:37:36 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv/for-v5.4-rc4

for you to fetch changes up to 5bf4e52ff0317db083fafee010dc806f8d4cb0cb:

  RISC-V: fix virtual address overlapped in FIXADDR_START and VMEMMAP_START (2019-10-15 22:47:41 -0700)

----------------------------------------------------------------
RISC-V updates for v5.4-rc4

Some RISC-V fixes for v5.4-rc4:

- Fix the virtual memory layout so the fixaddr region doesn't overlap
  with other regions.  (This was originally intended to go in as part
  of an earlier patch, but I inadvertently dropped it during a
  rebase.)

- Add the DT chosen/stdout-path property to the HiFive Unleashed DT
  file.  This is so "earlycon" can be specified with no arguments on
  the kernel command line, and the correct UART will be automatically
  selected.

And two cleanup patches:

- Simplify the code in our breakpoint trap handler.

- Drop a comment in our TLB flush code that has caused some confusion.

----------------------------------------------------------------
Greentime Hu (1):
      RISC-V: fix virtual address overlapped in FIXADDR_START and VMEMMAP_START

Paul Walmsley (2):
      riscv: dts: HiFive Unleashed: add default chosen/stdout-path
      riscv: tlbflush: remove confusing comment on local_flush_tlb_all()

Vincent Chen (1):
      riscv: remove the switch statement in do_trap_break()

 .../riscv/boot/dts/sifive/hifive-unleashed-a00.dts |  1 +
 arch/riscv/include/asm/pgtable.h                   | 16 ++++++++--------
 arch/riscv/include/asm/tlbflush.h                  |  4 ----
 arch/riscv/kernel/traps.c                          | 22 +++++++++++-----------
 4 files changed, 20 insertions(+), 23 deletions(-)

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
