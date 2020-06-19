Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 319D8201E94
	for <lists+linux-riscv@lfdr.de>; Sat, 20 Jun 2020 01:24:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:To:From:
	Subject:Date:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=X1ACXT/DA2EOrh6dthja9XGbnQySlyTnGfW8+pIJPtM=; b=SDfZqj0wUyC65+Czlr0rikHPci
	Qb51V+rsbhXacAcNBjDdlay30zG4N8TaDr2Vd4/VMSAHtvpG1ByEaV0nBTMBPsyCDzxiitcs+ZA5e
	CqaId2mU7JBWb1eLrTHNlKPmIW5mcXCBXLvnqIy8l/I5KO4gR0pJP8dS1Q+MqtAc85SoFynlnQXTb
	rwGbCZHEUjLRPqgyy6WVIlA4jCxdIrMhgBHJLYSSsFuS+vVli4+BTcenC07XN/DADjYC9iAl+GLpm
	iDxYJk+DELj1tGwZ68xw0FrAw8HcZvxTfGJ1OkUZPtq+OZx/3UglunrTmXsu5CwanB63AqgJqr+I7
	l9HYhoxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmQNB-0007Aa-Ik; Fri, 19 Jun 2020 23:24:37 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmQN7-0007AA-Fl
 for linux-riscv@lists.infradead.org; Fri, 19 Jun 2020 23:24:35 +0000
Received: by mail-pl1-x643.google.com with SMTP id j4so4568135plk.3
 for <linux-riscv@lists.infradead.org>; Fri, 19 Jun 2020 16:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:cc:from:to:message-id;
 bh=X1ACXT/DA2EOrh6dthja9XGbnQySlyTnGfW8+pIJPtM=;
 b=dj06qqFZtuuzpy1sB8T/rBBZoc5WKAo3+J1atENDZ27/hwTsmucUnjLhw6YOFHFDN4
 R2I8hHXovIHede+nj2D2KcMq1GA9CLFl7/AbIoUMRCIlS9Ngj8OA9aVmKLJEYNqYsjSu
 47srG9m+Uc83qk471bE3P87baa7gBRuwXOqV23PuW7xXLCDglxJc+7jb/mwS86TePdd4
 e9KBUnduO+3OLsstPnz7h9f0X7CpUPWdH4hfsRo1A7zkmMUeP0qE/Kf0nEiM4xjQhDXs
 15QLLU6mCMcPxJYnyCbRpoD2I/VJmqZnvbZvKShEdA9hj2soYV46UVJS+Obofm/vTH86
 3n+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:cc:from:to:message-id;
 bh=X1ACXT/DA2EOrh6dthja9XGbnQySlyTnGfW8+pIJPtM=;
 b=swQM7wOaKNmJoRCkutmCM0NtzUFoLRxO3KNVGfG6PJQTVDkg/ruq50FtqgLxOVkihx
 auJjwqqWLG8qIZzVTz0yBQCunLVJpWiWRge1d18QpxN5PxjdN3hhx9lY+BlMoC/ZliUM
 4UXC1NgSLNm4G1nM53y8jVSdL6el4ZKYFf0Y3P6r20UKxMAEB/BYmaZOAYqvQTaUKOJS
 +YfnXtXgtMz73cTG1gbpXbQcbdHJ0KXI7Och+R1txAkf2JAPgbrlDa4HT1p9djZb+hvB
 PrYSy+aulD1ChkXE5iruTzg3dHDwI4ruAGpo43WjNoS6RaMPX+4ids32TysLP/Cm3Kdo
 fp9g==
X-Gm-Message-State: AOAM533zfMOWmFjfcmxKNss5le3bFXYtMWILHoA5tl0rfZgwMvnVPnAq
 pwyoE6HGYFO6VYyTFTe18wkUi40D9W5SoQ==
X-Google-Smtp-Source: ABdhPJxaoAdk78I9DqIuqHRbQaVPKoiDu/sqcl30wD7iBjN09aZnpoKNxT23N/LXnOHtZyrGa1gp0Q==
X-Received: by 2002:a17:902:44:: with SMTP id
 62mr10116464pla.104.1592609070126; 
 Fri, 19 Jun 2020 16:24:30 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id g29sm6737042pfr.47.2020.06.19.16.24.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 16:24:29 -0700 (PDT)
Date: Fri, 19 Jun 2020 16:24:29 -0700 (PDT)
X-Google-Original-Date: Fri, 19 Jun 2020 16:24:24 PDT (-0700)
Subject: [GIT PULL] RISC-V Fixes for 5.8-rc2
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <mhng-ff59c9fd-a367-4804-bc35-73c8a572b016@palmerdabbelt-glaptop1>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_162433_586753_6A31A6D8 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

The following changes since commit cd16ed33c3c618930ccda7049dcea05ee707a9c0:

  Merge tag 'riscv-for-linus-5.8-mw1' of git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux (2020-06-11 12:55:20 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv-for-linus-5.8-rc2

for you to fetch changes up to 0e2c09011d4de4161f615ff860a605a9186cf62a:

  RISC-V: Acquire mmap lock before invoking walk_page_range (2020-06-18 18:46:09 -0700)

----------------------------------------------------------------
RISC-V Fixes for 5.8-rc2

This contains three fixes that I'd like to target for rc2:

* A workaround for a compiler surprise related to the "r" inline assembly that
  allows LLVM to boot.
* A fix to avoid WX-only mappings, which the ISA does not allow.  While this
  probably manifests in many ways, the bug was found in stress-ng.
* A missing lock in set_direct_map_*(), which due to a recent lockdep change
  started asserting.

----------------------------------------------------------------
Atish Patra (1):
      RISC-V: Acquire mmap lock before invoking walk_page_range

Nathan Huckleberry (1):
      riscv/atomic: Fix sign extension for RV64I

Yash Shah (1):
      RISC-V: Don't allow write+exec only page mapping request in mmap

 arch/riscv/include/asm/cmpxchg.h |  8 ++++----
 arch/riscv/kernel/sys_riscv.c    |  6 ++++++
 arch/riscv/mm/pageattr.c         | 14 ++++++++++++--
 3 files changed, 22 insertions(+), 6 deletions(-)

