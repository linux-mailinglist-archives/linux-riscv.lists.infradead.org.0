Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C857E85C4B
	for <lists+linux-riscv@lfdr.de>; Thu,  8 Aug 2019 10:00:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=pzrwsnRS5T3BkIaOTgZ8IOZHsbkcwRtb+eRZ01eYwQE=; b=cAH
	Ffm69zuk9r3DyMLRvdWCVBYLDx2HRq5NmYfL48JPeAb0CukpcXWisudast9kG3D+Fyysq0LJL5E+n
	qzr/CjFxTsNsClupTV0/Y4fCgzAcruyECQjQY9X8735M98c7SYENtOkxWkCMnIaVrgJUYGzFOpqDg
	K7zkO1cmkVmXCgxAdzM6jmVerunXYpPPY09ZnqqUF3hBKGszAWX+GwbWV8UKkV2ZcERNvS9YeX1eL
	aGkf8eI0AEM7gB/iSDpwHGLfVFRR4En5Sw/xxSLoIwlnoVEb4uGChPRIScamakMltOcfE+9WQoh4u
	YUtvVIU+30zS+lrpu0UZz6PjO5yQEAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvdLd-0006ib-SI; Thu, 08 Aug 2019 08:00:34 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvdL8-0005KH-VX
 for linux-riscv@lists.infradead.org; Thu, 08 Aug 2019 08:00:05 +0000
Received: by mail-pg1-x543.google.com with SMTP id o13so43611770pgp.12
 for <linux-riscv@lists.infradead.org>; Thu, 08 Aug 2019 01:00:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=Mj0NlYSUurL6xj8Jw3i+0MeK0CDZOCR1M77+F9BwytE=;
 b=ZmFoFiuFuEhRJV21WykRlWUovgwSUqqTFjQJtAVC3DZs9ENOnjbPjAb/yiWK8PreJ8
 c2mnbTcpUBkOX5yrPYDjGZT1Atk+5/zgQaUFCvL7xOTjHJaUQ9YcfwQOu3g3oSiZW+AM
 9m5gSVyyGv6FgsMCoj8O0sMg0tUx/sRahn1yQpLFeilUzMGBBsP3NwtpnfxYKO2UEj4v
 H0MkwgSVoHQh77whMNTwaSX+OVH8ZSwQ0rCGvmMl2mIMVJTdv0caL7Dq6hTVDTkSf9Wa
 Rkq+pjCFxwGS8VABoAYUgIea2CilG2bMTvG9f0NFLJlA0sybY7IR89paSM0ySD0Qp4Yr
 vT4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Mj0NlYSUurL6xj8Jw3i+0MeK0CDZOCR1M77+F9BwytE=;
 b=NXfGfC3dhbI3/X6MELd4JGACoIwmVGzahaoNgIcB5xJFiU7avIHKM0v4Cbis1mDKRl
 RFaU8NaeGxHh2Jm8umqbxigF5aVVqTzZLhY5h4PtaNk38r9kIIzM9/bai7+yTGMbSUOl
 Er79K/wPvhjkzeWGbBiHnB+512opr3mA8o5rkddLDgr99rnPYE73QZTtAJJy9AIjqzb+
 f67Vtb8kNc5QX6GwMX/pTFY0eNR0Rfg1yHHt7asK4G7bUJc/IFtTHz893VY+4++0unCN
 r6cE2I5MKuyRMA9vaRxcjXRlalawvcV0Ip35S2riMUTvbSW0PCdfWlOGVJ7xcqBe8yHi
 FU9w==
X-Gm-Message-State: APjAAAUhtWkgFajOF4h2KKFFEmsx3/PJjaGudV6LEU3t4KDkjvNZNwzb
 9OuR9Sbvvg+fSEMfSnYx0fegDw==
X-Google-Smtp-Source: APXvYqxzsjhUdbzOD9DNeF+PAk9GYhVZrZl1qUjHVEGtASrf1qnduOun6cNSSC0pt796s6zLw6HNjQ==
X-Received: by 2002:a17:90b:8e:: with SMTP id
 bb14mr2717479pjb.19.1565251201455; 
 Thu, 08 Aug 2019 01:00:01 -0700 (PDT)
Received: from localhost.localdomain (220-132-236-182.HINET-IP.hinet.net.
 [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id t8sm107697374pfq.31.2019.08.08.00.59.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 08 Aug 2019 01:00:01 -0700 (PDT)
From: Vincent Chen <vincent.chen@sifive.com>
To: paul.walmsley@sifive.com,
	palmer@sifive.com,
	aou@eecs.berkeley.edu
Subject: [PATCH 0/2] riscv: Correct the initialized flow of FP and
 __fstate_clean()
Date: Thu,  8 Aug 2019 15:58:39 +0800
Message-Id: <1565251121-28490-1-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_010003_114666_D94C4AD7 
X-CRM114-Status: UNSURE (   7.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vincent Chen <vincent.chen@sifive.com>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The following two reasons cause FP registers are sometimes not
initialized before starting the user program.
1. Currently, the FP context is initialized in flush_thread() function
   and we expect these initial values to be restored to FP register when
   doing FP context switch. However, the FP context switch only occurs in
   switch_to function. Hence, if this process does not be scheduled out
   and scheduled in before entering the user space, the FP registers
   have no chance to initialize.
2. In flush_thread(), the state of reg->sstatus.FS inherits from the
   parent. Hence, the state of reg->sstatus.FS may be dirty. If this
   process is scheduled out during flush_thread() and initializing the
   FP register, the fstate_save() in switch_to will corrupt the FP context
   which has been initialized until flush_thread().
In addition, the __fstate_clean() function cannot correctly set the state
of sstatus.FS to SR_FS_CLEAN. These problems will be solved in this patch
set.


Vincent Chen (2):
  riscv: Correct the initialized flow of FP register
  riscv: Make __fstate_clean() can work correctly.

 arch/riscv/include/asm/switch_to.h |  8 +++++++-
 arch/riscv/kernel/process.c        | 13 +++++++++++--
 2 files changed, 18 insertions(+), 3 deletions(-)

-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
