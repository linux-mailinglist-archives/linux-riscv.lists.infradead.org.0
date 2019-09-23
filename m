Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F811BAC39
	for <lists+linux-riscv@lfdr.de>; Mon, 23 Sep 2019 02:45:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=EVn4ZXgyyZvKfJe8xAr4tBuc1C3b05fuoGNMxmFLtrw=; b=jXY
	am2UwDRf8Qq3TnkqDU6L6JTc0fMY/HKh0ANEKalhWGnfYPTjz8CJ62eUrqGAoIg93ki4sbzYS2M19
	fwNiLvIK3MrZy4ODDtFPFvlqabkIdt8EiDKXB8OCO9G01Jolc3aZ8MpIFCkVxa0cvVV3iA16g2CS1
	b2sSOQplKlLyLMLy1GL9Bf5dQrKevCuv6VwW3Y0FvKpTsYW29n7jUPxvuCPIijCT39ifGaxHkdJt2
	HUSzknWh5HvBxPY3jhdOI0/BVZQd1A3BjzUmaAtbZiaOU8ewZaAB74vwPB2A8EPsG7ItXfS+0N/Sf
	278yNp8woDPIH73mf2/U89hj/qOqWFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCCTx-0002zz-1b; Mon, 23 Sep 2019 00:45:37 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCCTs-0002zb-85
 for linux-riscv@lists.infradead.org; Mon, 23 Sep 2019 00:45:33 +0000
Received: by mail-pl1-x644.google.com with SMTP id d22so4437260pls.0
 for <linux-riscv@lists.infradead.org>; Sun, 22 Sep 2019 17:45:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=wBHZ7zM9MXX6vAa5xiClSfeozP2w4j+/6pxwIyNuhqc=;
 b=C7jTYPeFAbIbaL5ADjIqF9fdD2IepbODMzxIU5MuN1WOhRRWcGtS+MbLhqN+eRDK4A
 onM2qCoHTVwTR3E5SIs75A2NQqB6+EATximTQCQOD3c3VzTIhyRNhkKU+JzVMdLsRLTW
 2UzRJopPvdmEJGkXebL7tPxmCxP7ksuVf3q6/PJGcI6zrZvNv9MHzjT/vmMwRGzLZijF
 4t0/SentLUt/3pKKAuvB1dCXVy1UIYzThsysj9U8G3B13cWoPciVuwQ3Pe6ZKTZRUGLh
 e4scPzR6bUJZ6fxsjDBXGRVwVctGrHNQVhrjWORjE2sijRN0KT/ZPBD1r5ITXhmpBtYW
 6bKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=wBHZ7zM9MXX6vAa5xiClSfeozP2w4j+/6pxwIyNuhqc=;
 b=QmrVe5WjDOo35TeU9iYhT1ePxMPsfTcyotNdHEGylnEOr02XLptjn7itjyorc35RnR
 WVsY/jqMjJquCXYIspijXUwZRlMk/N+fDHCM2MlF+26q7JVSB5/lDYn2t743/wJHnm/V
 gDpzdYnfz1KF2BHm84JzuU7QrGZFtuX7+Qp3FnK+Z36PqQc9d6yev+1sRMFSCCTN7T5Y
 tA282vj0vEL6MPcm0v/6KMtXdMLSQa+NZw+JZvnrPriMGdbKiGkaUDMSFX1H9cOaJaQI
 qLYkYH6J6IekkfYB27Ebm7tND6J5zcLlc1eWo4EdVyz1bTXUnr6EJ7Ph1vKi0iIXOXQ5
 YpxQ==
X-Gm-Message-State: APjAAAX0b+Wbnm3ySc1wCHOTxNHcsUmpKwK/0PTimA9cd18gdQSsWTYE
 Qv2oclpVM2ZEdar0j2aqFVWSqUjjgKs=
X-Google-Smtp-Source: APXvYqzNPplEeS/iK1Hs/mYsLPurLGP8THxAyivT2BgkccBkoLr/z6Q4+rBcVrDGe93pO8fC50fLsw==
X-Received: by 2002:a17:902:ff08:: with SMTP id
 f8mr29298899plj.309.1569199529599; 
 Sun, 22 Sep 2019 17:45:29 -0700 (PDT)
Received: from localhost.localdomain (220-132-236-182.HINET-IP.hinet.net.
 [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id l7sm9139392pjy.12.2019.09.22.17.45.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 22 Sep 2019 17:45:29 -0700 (PDT)
From: Vincent Chen <vincent.chen@sifive.com>
To: linux-riscv@lists.infradead.org
Subject: [PATCH 0/4] riscv: correct the do_trap_break()
Date: Mon, 23 Sep 2019 08:45:13 +0800
Message-Id: <1569199517-5884-1-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_174532_343238_69818CCA 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: vincent.chen@sifive.com, palmer@sifive.com, linux-kernel@vger.kernel.org,
 aou@eecs.berkeley.edu, paul.walmsley@sifive.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


The following three situations may occur in the current implementation of
do_trap_break().
1. When the CONFIG_GENERIC_BUG is disabled, if a kernel thread is trapped
   by BUG(), the whole system will be in the loop that infinitely handles
   the break exception instead of entering the die function.
2. When the kernel runs code on behalf of a user thread, and the kernel
   executes a WARN() or WARN_ON(), the user thread will be sent a bogus
   SIGTRAP.
3. Handling the unexpected ebreak instructions is to send a SIGTRAP
   to the trapped thread. However, if a kernel executes an unexpected
   ebreak, it may cause the kernel thread to be stuck in the ebreak
   instruction.

This patch set will solve the above problems by adjusting the
implementations of the do_trap_break().


Vincent Chen (4):
  riscv: avoid kernel hangs when trapped in BUG()
  rsicv: avoid sending a SIGTRAP to a user thread trapped in WARN()
  riscv: Correct the handling of unexpected ebreak in do_trap_break()
  riscv: remove the switch statement in do_trap_break()

 arch/riscv/kernel/traps.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
