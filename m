Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E99BF190643
	for <lists+linux-riscv@lfdr.de>; Tue, 24 Mar 2020 08:31:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R7QvJ+hGlZa7eQ4b0hWGxAvcTaj+cfDyda9vjq1c9co=; b=W6GuajRE6xnzSf
	I1PEhsbpDzx6eeCk+retbn4KhaZxcVYXnzcHj9eBWKhSwINIo3CGcBTc0SBi3fGJFgBA1X1mXtgrg
	PkesmU0HgM4A/08hDdDZBCHm+OlAbK3Z7l/xP28/bVxiLdLUk0B0w8WLCNh8Zj6skKeGaf8KWb0xQ
	lB0aLeDVniTj+QECtI9XWvJK/JR4bejn8i/r8Jo8e87ZIkf6JhGAfZYUX637vsIa2ljRV141DHtgD
	JFIecJ1jJWzP70kEsFNoGhqVDVTfaPsNoRH5FsHNJF7XVDSR7bGTU3jPJa7jnzTn6D1WVfI68Ierk
	FRcdvB7en4iWV9gJmdAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGe1c-0003lc-Ms; Tue, 24 Mar 2020 07:31:00 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGe1Z-0003l9-V0
 for linux-riscv@lists.infradead.org; Tue, 24 Mar 2020 07:30:59 +0000
Received: by mail-pf1-x444.google.com with SMTP id u68so8870055pfb.2
 for <linux-riscv@lists.infradead.org>; Tue, 24 Mar 2020 00:30:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=R7QvJ+hGlZa7eQ4b0hWGxAvcTaj+cfDyda9vjq1c9co=;
 b=dDc720oR/Wkj0W/tqqtpU16K1HMP3ZDAfHfGEnuFWPjSx3MSeGKybR8G2Wtje6/nnp
 tV6BZG6G/B4txOD53a3Dq1v1spwTwl9WtBATsrV3OnL1ypaLPMdRQSr4xzXz61N6/Dkc
 i7kQy16Px7qhDNrgl+baCuL7LbRMz89MdK5bulJwCnE4r/2SgMrilrOUyXYfmcclHbCI
 jVNiIVt0CpgAWJ2WVQmACNQRy5xB7o6Cc8nihTm8TdWd7fyxKpjvBwAOWGRAMiHipNY/
 CeJJXBTazGvE0o4CXuYOOjjrFhsqYP2RVqqupw4+pdFefLkZ57+Kbwir4QCuSHAqkiZ/
 ygeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=R7QvJ+hGlZa7eQ4b0hWGxAvcTaj+cfDyda9vjq1c9co=;
 b=cLjl1j/bd+ZPOjrgI62iSydpLAzhWYpztx5/YyYhcs01r38UH6F/qMUbtfzO/m/Pq1
 pqniarFs7WTyJMZ8Om/BBNakruSnfp1VAErW7qRr9n4fVcmABmaXqhYg4jRnilLlr2aH
 M38qSz+YdEYvYp/JT0J1MdbudqH8yygFFWRGteHjr6b9zcERhEMUA7xdRhKa0xMu//5j
 9Tp3KH8sVMCWC/BgBemO/jVWWTsphJEdzS5viCwor0Rtwdydox526xiMlEWONTyqOycf
 zB3PLLobZgjCEc+sgWeuE+xxw145h+0oEy7F90HOAbWW4MHhjLqWGgxckWRCwQkKdFRr
 UWAQ==
X-Gm-Message-State: ANhLgQ0cnskxKrSV+PJZzoVEMoK8go9vGeelOKOKwJqMIKj25m6BZZFp
 7YICzCr7/5QcOKgDpJQR3YiL1Q==
X-Google-Smtp-Source: ADFU+vtsxA7BrygqHJNRMPjVwJ4JD9w/qFMcUE5ViYWrI55yKi0mVzytAhxC2mpic4Gm7dj4rZ2baA==
X-Received: by 2002:a63:f141:: with SMTP id o1mr24826131pgk.92.1585035057097; 
 Tue, 24 Mar 2020 00:30:57 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id i187sm15124648pfg.33.2020.03.24.00.30.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 00:30:56 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, alex@ghiti.fr,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH RFC 0/8] Support KASLR for RISC-V
Date: Tue, 24 Mar 2020 15:30:45 +0800
Message-Id: <cover.1584352425.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_003058_145048_0D505561 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch series implement KASLR for RISC-V. It copies kernel image to
a proper and random place, and make all harts go to the new destination.

This patch depends on the patch 'riscv: Introduce CONFIG_RELOCATABLE',
but given a small change by making PAGE_OFFSET be constant, so all the
memory could be available after moving kernel physical address. This
patch also depends on 'Support strict kernel memory permissions for security'.

Zong Li (8):
  riscv/kaslr: add interface to get kaslr offset
  riscv/kaslr: introduce functions to clear page table
  riscv/kaslr: support KASLR infrastructure
  riscv/kaslr: randomize the kernel image offset
  riscv/kaslr: support sparse memory model
  riscv/kaslr: clear the original kernel image
  riscv/kaslr: add cmdline support to disable KASLR
  riscv/kaslr: dump out kernel offset information on panic

 arch/riscv/Kconfig             |  15 ++
 arch/riscv/include/asm/kaslr.h |  12 +
 arch/riscv/include/asm/page.h  |   5 +
 arch/riscv/kernel/Makefile     |   2 +
 arch/riscv/kernel/head.S       |  39 +++
 arch/riscv/kernel/kaslr.c      | 442 +++++++++++++++++++++++++++++++++
 arch/riscv/kernel/setup.c      |  23 ++
 arch/riscv/mm/init.c           | 115 ++++++++-
 8 files changed, 651 insertions(+), 2 deletions(-)
 create mode 100644 arch/riscv/include/asm/kaslr.h
 create mode 100644 arch/riscv/kernel/kaslr.c

-- 
2.25.1


