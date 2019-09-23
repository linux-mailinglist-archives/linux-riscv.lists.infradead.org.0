Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD6BBAC3A
	for <lists+linux-riscv@lfdr.de>; Mon, 23 Sep 2019 02:45:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0JpuIZA4nq0pZAoa65WrmzladS+qMP7k+zB0oBYXeBA=; b=St2r8TNc8FhaOenVgGUirxjUGF
	oBs66+Wy/M4czDAt0XcbdIupLYrOYEezFZt6hWIYMQy204r4oObq12noa7U3pL7afuwwv9mqdNGof
	M/zwzhFda5BYWkzJL3L76tSmTsU+bEtT6p6xOX9m2vnCUe/pJ0Qt19Z5HiVilHKARWrQ7rZ1PrU+U
	q1lx1JL9+/dpkXdGnBIPyUIjzpqfgoZPmZ6L/SkzdO8154KN5Bb5ydYyG8Ev+2+RICTN6BRvNCrkq
	g5qMaCtrShT/3f/Gsb+OqIw8gQ812nm0g5oqYNf5ecBogQ3BCFKwzjgxnDNsH9nQnNPxBmX/w3uXV
	+GV7aAgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCCU0-00032p-Q7; Mon, 23 Sep 2019 00:45:40 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCCTv-0002zw-Lz
 for linux-riscv@lists.infradead.org; Mon, 23 Sep 2019 00:45:37 +0000
Received: by mail-pf1-x444.google.com with SMTP id x127so8028852pfb.7
 for <linux-riscv@lists.infradead.org>; Sun, 22 Sep 2019 17:45:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Xe6w22bWITBFPjRp++ggW69XwtTJrJMismAgnjjWSps=;
 b=PmBToTGz0+dZ/glKnK/OlEoCj1mNWi/zbC2c9P4ZtOaJh5w3AQinn0yAoCpOrlmf86
 2m5U4WdDZn+vS7w6Sv06LAsngXesLM1oS1JbpoEkBq6R/k+gspCkfd/qRezSZbNlZxnD
 RIu54SEfR/BFLOqT7EwmoUeQ+E7JKNB73Agv7weHGFxcum3Gd2B+RAziKVcZC+eVPZaI
 qqQTsI9BGvWjYhqxWwpQ1JupMfdd8tqP6hCswZQdzlJanzfkDS84qxBBoDDdENWsZAdw
 uQBS/uv0EH5hERpRmTpVZWPVD5mi6v3VihJsIxwUiFqMGqKozQ5cEm4KxBnpjvW54buN
 Wibw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Xe6w22bWITBFPjRp++ggW69XwtTJrJMismAgnjjWSps=;
 b=q6D9eZ/VavyNUqEIrLy02r9hVNZ8jLikPygu/cvtE3AVffOUS9PR03c1f0QmlbgVn+
 ckIt7UlNDkS1+jBBAEARTErxRQkhCbyw5KX6gvE8Ptbq7q4N3sfFOXbjl19yDlu96Hpy
 xKt4kk8jf2PbohQfqtoY6bBsDX55r0TUdVbTKo38Yet/mIbn7K0YkSmFVVRyGGJ3t0Fn
 ZXjRMqfu+A7Z+Eje1Qtek/Af1uWbWcCadDGwNF8TWE0hRJCGMUjPUzRDOOyzfu5YxRVT
 bPkL8amYKZvjGg0f957UgMEPkvH9SIK9vUWYbVUp8cnitF3fCIZxc1yUXixS6QqP3wOU
 Llzw==
X-Gm-Message-State: APjAAAVHWaMG7jLlJ7ifqFGxX5qpVWO9LrlCj5hcXyo5x2rvqbe3hY3V
 ZPNls/PrOPXCh56RDxucWMuo4qZaCD4=
X-Google-Smtp-Source: APXvYqxg4RUC/k2zKdp20whugiWXsLNyuWV+p9lSYD7axTO2cCrPhiQ6pzUiMr0f5rXmVr+g0e8oZA==
X-Received: by 2002:a17:90a:2464:: with SMTP id
 h91mr18803713pje.9.1569199534032; 
 Sun, 22 Sep 2019 17:45:34 -0700 (PDT)
Received: from localhost.localdomain (220-132-236-182.HINET-IP.hinet.net.
 [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id l7sm9139392pjy.12.2019.09.22.17.45.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 22 Sep 2019 17:45:33 -0700 (PDT)
From: Vincent Chen <vincent.chen@sifive.com>
To: linux-riscv@lists.infradead.org
Subject: [PATCH 1/4] riscv: avoid kernel hangs when trapped in BUG()
Date: Mon, 23 Sep 2019 08:45:14 +0800
Message-Id: <1569199517-5884-2-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569199517-5884-1-git-send-email-vincent.chen@sifive.com>
References: <1569199517-5884-1-git-send-email-vincent.chen@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_174535_837498_4E2ADA9E 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

When the CONFIG_GENERIC_BUG is disabled by disabling CONFIG_BUG, if a
kernel thread is trapped by BUG(), the whole system will be in the
loop that infinitely handles the ebreak exception instead of entering the
die function. To fix this problem, the do_trap_break() will always call
the die() to deal with the break exception as the type of break is
BUG_TRAP_TYPE_BUG.

Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
---
 arch/riscv/kernel/traps.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
index 424eb72d56b1..055a937aca70 100644
--- a/arch/riscv/kernel/traps.c
+++ b/arch/riscv/kernel/traps.c
@@ -124,23 +124,23 @@ static inline unsigned long get_break_insn_length(unsigned long pc)
 
 asmlinkage void do_trap_break(struct pt_regs *regs)
 {
-#ifdef CONFIG_GENERIC_BUG
 	if (!user_mode(regs)) {
 		enum bug_trap_type type;
 
 		type = report_bug(regs->sepc, regs);
 		switch (type) {
+#ifdef CONFIG_GENERIC_BUG
 		case BUG_TRAP_TYPE_NONE:
 			break;
 		case BUG_TRAP_TYPE_WARN:
 			regs->sepc += get_break_insn_length(regs->sepc);
 			break;
 		case BUG_TRAP_TYPE_BUG:
+#endif /* CONFIG_GENERIC_BUG */
+		default:
 			die(regs, "Kernel BUG");
 		}
 	}
-#endif /* CONFIG_GENERIC_BUG */
-
 	force_sig_fault(SIGTRAP, TRAP_BRKPT, (void __user *)(regs->sepc));
 }
 
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
